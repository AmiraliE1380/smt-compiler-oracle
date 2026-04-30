import os
import glob

def analyze_ir(filepath):
    if not os.path.exists(filepath):
        return None
        
    stats = {
        'instructions': 0,
        'blocks': 0,
        'divisions': 0,
        'branches': 0
    }
    
    with open(filepath, 'r') as f:
        in_function = False
        for line in f:
            line = line.strip()
            
            # Start/stop tracking inside the actual function body
            if line.startswith('define '):
                in_function = True
                continue
            if line == '}':
                in_function = False
                continue
                
            if not in_function:
                continue
                
            # Ignore comments and metadata inside the function
            if line.startswith(';') or line.startswith('!'):
                continue
                
            # Count Basic Blocks (lines ending in a colon like "14:")
            if line.endswith(':'):
                stats['blocks'] += 1
                continue
                
            # If it's not a block label, metadata, or brace, it's an instruction
            if line:
                stats['instructions'] += 1
                
                # Track specific expensive/dangerous operations
                if ' sdiv ' in line or ' udiv ' in line or ' fdiv ' in line or '@logf' in line:
                    stats['divisions'] += 1
                if ' br ' in line:
                    stats['branches'] += 1
                    
    return stats

def main():
    print(f"{'Benchmark':<12} | {'LLVM -O3 IR Size':<18} | {'Optimized IR Size':<18} | {'Divisions Trap Removed?'}")
    print("-" * 75)
    
    # Iterate through folders 1 to 10
    for i in range(1, 6):
        folder = f"benchmarks/{i}"
        if not os.path.exists(folder):
            continue
            
        standard_ll = f"{folder}/{i}.ll"
        ideal_ll = f"{folder}/{i}_idealized.ll"
        
        std_stats = analyze_ir(standard_ll)
        ideal_stats = analyze_ir(ideal_ll)
        
        if not std_stats or not ideal_stats:
            continue
            
        std_size = f"{std_stats['instructions']} inst ({std_stats['blocks']} BBs)"
        ideal_size = f"{ideal_stats['instructions']} inst ({ideal_stats['blocks']} BBs)"
        
        # Check if our idealized version successfully eliminated the trapped division
        trap_removed = "Yes" if std_stats['divisions'] > ideal_stats['divisions'] else "No/NA"
        
        print(f"Benchmark {i:<2} | {std_size:<18} | {ideal_size:<18} | {trap_removed}")

if __name__ == "__main__":
    main()