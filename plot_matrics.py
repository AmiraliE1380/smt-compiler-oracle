import re
import matplotlib.pyplot as plt

def parse_logs(log_file):
    # Dictionary to store the LATEST run of each benchmark
    # Format: { bench_id: {'queries': 0, 'total_time': 0.0, 'max_time': 0.0} }
    benchmarks = {}
    current_bench = None
    
    with open(log_file, 'r') as f:
        for line in f:
            # 1. Detect which benchmark is being run from the 'opt' command
            # e.g., opt ... ../benchmarks/8/8.ll
            bench_match = re.search(r'benchmarks/(\d+)/', line)
            if bench_match:
                current_bench = int(bench_match.group(1))
                # Reset the stats so we only capture the most recent execution
                benchmarks[current_bench] = {'queries': 0, 'total_time': 0.0, 'max_time': 0.0}
                continue
            
            if current_bench is None:
                continue
                
            # 2. Extract individual query latency
            # e.g., [Query Latency: 9.722207 ms]
            query_match = re.search(r'\[Query Latency:\s*([\d\.]+)\s*ms\]', line)
            if query_match:
                latency = float(query_match.group(1))
                benchmarks[current_bench]['queries'] += 1
                if latency > benchmarks[current_bench]['max_time']:
                    benchmarks[current_bench]['max_time'] = latency
                    
            # 3. Extract total query latency
            # e.g., => Total SMT Query Latency for Function: 3.801953e+01 ms
            total_match = re.search(r'=> Total SMT Query Latency for Function:\s*([\d\.e\+\-]+)\s*ms', line)
            if total_match:
                benchmarks[current_bench]['total_time'] += float(total_match.group(1))

    return benchmarks

def plot_data(benchmarks):
    # Sort benchmarks numerically (B1, B2, ..., B10)
    sorted_benches = sorted(benchmarks.keys())
    
    b_labels = [f"B{b}" for b in sorted_benches]
    queries = [benchmarks[b]['queries'] for b in sorted_benches]
    total_times = [benchmarks[b]['total_time'] for b in sorted_benches]
    max_times = [benchmarks[b]['max_time'] for b in sorted_benches]

    # --- PLOT 1: Number of Queries ---
    plt.figure(figsize=(10, 6))
    plt.bar(b_labels, queries, color='#4A90E2', edgecolor='black')
    plt.title('Number of SMT Queries per Benchmark', fontsize=14)
    plt.xlabel('Benchmark', fontsize=12)
    plt.ylabel('Query Count', fontsize=12)
    plt.grid(axis='y', linestyle='--', alpha=0.7)
    plt.savefig('smt_queries_count.png', bbox_inches='tight')
    plt.close()

    # --- PLOT 2: Total SMT Time (Symlog Scale) ---
    plt.figure(figsize=(10, 6))
    plt.bar(b_labels, total_times, color='#E94E77', edgecolor='black')
    plt.title('Total SMT Query Time per Benchmark', fontsize=14)
    plt.xlabel('Benchmark', fontsize=12)
    plt.ylabel('Total Time (ms) - Log Scale', fontsize=12)
    plt.yscale('symlog', linthresh=1.0) # Handles 0 ms perfectly, goes log above 1
    plt.grid(axis='y', linestyle='--', alpha=0.7)
    plt.savefig('smt_total_time.png', bbox_inches='tight')
    plt.close()

    # --- PLOT 3: Max Individual Query Time (Symlog Scale) ---
    plt.figure(figsize=(10, 6))
    plt.bar(b_labels, max_times, color='#50E3C2', edgecolor='black')
    plt.title('Max Individual SMT Query Time per Benchmark', fontsize=14)
    plt.xlabel('Benchmark', fontsize=12)
    plt.ylabel('Max Single Query Time (ms) - Log Scale', fontsize=12)
    plt.yscale('symlog', linthresh=1.0)
    plt.grid(axis='y', linestyle='--', alpha=0.7)
    plt.savefig('smt_max_time.png', bbox_inches='tight')
    plt.close()

    print("✅ Success! Plots saved: 'smt_queries_count.png', 'smt_total_time.png', 'smt_max_time.png'")

if __name__ == "__main__":
    # Point this to your actual log file!
    data = parse_logs("logs/bench_logs.txt")
    plot_data(data)