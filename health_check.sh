#!/bin/bash

TIMESTAMP=$(date '+%Y-%m-%d_%H-%M-%S')
REPORT="health_report_${TIMESTAMP}.txt"

{
    echo "===== SERVER HEALTH CHECK ====="
    echo "Date: $(date)"

    echo
    echo "===== DISK USAGE ====="
    df -h

    echo
    echo "===== MEMORY USAGE ====="
    free -h

    echo
    echo "===== CPU AND PROCESSES ====="
    top -b -n 1 | head -n 15

    echo
    echo "===== ERROR COUNT ====="
    if [[ -f sample.log ]]; then
        grep -c "ERROR" sample.log
    else
        echo "sample.log not found"
    fi

} > "$REPORT"

echo "Health check completed!"
echo "Report saved to: $REPORT"
