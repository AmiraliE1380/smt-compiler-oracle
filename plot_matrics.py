import re
import os
import matplotlib.pyplot as plt

def parse_logs(log_file):
    benchmarks = {}
    current_bench = None
    
    with open(log_file, 'r') as f:
        for line in f:
            bench_match = re.search(r'benchmarks/(\d+)/', line)
            if bench_match:
                current_bench = int(bench_match.group(1))
                benchmarks[current_bench] = {'queries': 0, 'total_time': 0.0, 'max_time': 0.0}
                continue
            
            if current_bench is None:
                continue
                
            query_match = re.search(r'\[Query Latency:\s*([\d\.]+)\s*ms\]', line)
            if query_match:
                latency = float(query_match.group(1))
                benchmarks[current_bench]['queries'] += 1
                if latency > benchmarks[current_bench]['max_time']:
                    benchmarks[current_bench]['max_time'] = latency
                    
            total_match = re.search(r'=> Total SMT Query Latency for Function:\s*([\d\.e\+\-]+)\s*ms', line)
            if total_match:
                benchmarks[current_bench]['total_time'] += float(total_match.group(1))

    return benchmarks

def plot_data(benchmarks):
    # Explicitly drop Benchmark 6 to keep the graphs clean
    if 6 in benchmarks:
        del benchmarks[6]

    sorted_benches = sorted(benchmarks.keys())
    b_labels = [f"B{b}" for b in sorted_benches]
    queries = [benchmarks[b]['queries'] for b in sorted_benches]
    total_times = [benchmarks[b]['total_time'] for b in sorted_benches]
    max_times = [benchmarks[b]['max_time'] for b in sorted_benches]

    # Ensure the logs directory exists just in case
    os.makedirs('logs', exist_ok=True)

    # --- PLOT 1: Number of Queries ---
    plt.figure(figsize=(10, 6))
    plt.bar(b_labels, queries, color='#4A90E2', edgecolor='black')
    plt.title('Number of SMT Queries per Benchmark', fontsize=14)
    plt.xlabel('Benchmark', fontsize=12)
    plt.ylabel('Query Count', fontsize=12)
    plt.grid(axis='y', linestyle='--', alpha=0.7)
    plt.savefig('logs/smt_queries_count.png', bbox_inches='tight')
    plt.close()

    # --- PLOT 2: Total SMT Time (Symlog Scale) ---
    plt.figure(figsize=(10, 6))
    plt.bar(b_labels, total_times, color='#E94E77', edgecolor='black')
    plt.title('Total SMT Query Time per Benchmark', fontsize=14)
    plt.xlabel('Benchmark', fontsize=12)
    plt.ylabel('Total Time (ms) - Log Scale', fontsize=12)
    plt.yscale('symlog', linthresh=1.0) 
    plt.grid(axis='y', linestyle='--', alpha=0.7)
    plt.savefig('logs/smt_total_time.png', bbox_inches='tight')
    plt.close()

    # --- PLOT 3: Max Individual Query Time (Symlog Scale) ---
    plt.figure(figsize=(10, 6))
    plt.bar(b_labels, max_times, color='#50E3C2', edgecolor='black')
    plt.title('Max Individual SMT Query Time per Benchmark', fontsize=14)
    plt.xlabel('Benchmark', fontsize=12)
    plt.ylabel('Max Single Query Time (ms) - Log Scale', fontsize=12)
    plt.yscale('symlog', linthresh=1.0)
    plt.grid(axis='y', linestyle='--', alpha=0.7)
    plt.savefig('logs/smt_max_time.png', bbox_inches='tight')
    plt.close()

    print("✅ Success! Plots saved to the 'logs/' directory.")

if __name__ == "__main__":
    data = parse_logs("logs/bench_logs.txt")
    plot_data(data)