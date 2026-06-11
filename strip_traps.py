import sys

def strip_traps(input_file, output_file):
    try:
        with open(input_file, 'r') as f:
            lines = f.readlines()
    except FileNotFoundError:
        print(f"[!] Error: Could not find {input_file}")
        sys.exit(1)

    trap_count = 0
    with open(output_file, 'w') as f:
        for line in lines:
            # Target both modern UBSan traps and legacy LLVM traps
            if "call void @llvm.ubsantrap" in line or "call void @llvm.trap" in line:
                # Comment out the trap to neutralize its side-effects
                f.write(f"; LIMIT STUDY: Oracle neutralized -> {line.lstrip()}")
                trap_count += 1
            else:
                f.write(line)

    print(f"[*] Limit Study Prep Complete.")
    print(f"[*] Successfully neutralized {trap_count} traps in {input_file}")
    print(f"[*] Output saved to {output_file}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 strip_traps.py <input_IR.ll> <output_IR.ll>")
        sys.exit(1)
    
    strip_traps(sys.argv[1], sys.argv[2])