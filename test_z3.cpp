#include <z3++.h>
#include <iostream>

using namespace z3;

int main() {
    try {
        // Create a Z3 context (the main environment)
        context c;

        // Create two integer variables 'x' and 'y'
        expr x = c.int_const("x");
        expr y = c.int_const("y");

        // Create a solver instance
        solver s(c);

        // Add constraints: x + y = 10, and x > 5
        s.add(x + y == 10);
        s.add(x > 5);

        // Check if the constraints are satisfiable
        if (s.check() == sat) {
            std::cout << "Z3 is working! Found a satisfying model:\n";
            model m = s.get_model();
            std::cout << m << "\n";
        } else {
            std::cout << "Unsatisfiable.\n";
        }
    } catch (exception &ex) {
        std::cerr << "Z3 Error: " << ex << "\n";
        return 1;
    }
    return 0;
}