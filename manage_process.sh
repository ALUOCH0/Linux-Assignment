#!/bin/bash
# manage_processes.sh
# Lists top 5 memory-consuming processes and optionally kills a process by name

# Output file for top memory processes
TOP_MEM_FILE="$HOME/top_memory_processes.txt"

echo "===== Top 5 Memory-Consuming Processes ====="
ps aux --sort=-%mem | head -n 6 | tee "$TOP_MEM_FILE"

echo "Saved top 5 memory processes to $TOP_MEM_FILE"

# Check if a process name is given as argument
if [ -n "$1" ]; then
    PROC_NAME="$1"
    echo ""
    echo "Attempting to kill all processes named '$PROC_NAME'..."
    
    # List processes first
    pgrep -a "$PROC_NAME"
    
    # Kill the processes
    pkill -f "$PROC_NAME" && echo "Processes '$PROC_NAME' killed." || echo "No such process found."
fi
