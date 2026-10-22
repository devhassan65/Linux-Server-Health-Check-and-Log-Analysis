# Linux Server Health Check and Log Analysis

## 📌 Project Overview

This is a beginner-friendly Linux and Bash scripting project that checks basic server health information and analyzes application logs.

The script collects disk usage, memory usage, CPU and process information, counts `ERROR` entries in a sample log file, and saves the results in a timestamped report.

## 🎯 Project Objectives

- Check disk usage using Linux commands.
- Monitor memory usage.
- Inspect CPU information and running processes.
- Count errors in application logs.
- Save server health information to a timestamped report.
- Practice Linux commands and Bash scripting.

## 🛠️ Technologies Used

- Linux (Ubuntu)
- Bash scripting
- `df -h`
- `free -h`
- `top`
- `grep`
- `date`
- `chmod`

## 📂 Project Structure

```text
linux-server-health-check/
├── health_check.sh
├── sample.log
└── README.md
```

- **health_check.sh:** Bash script that collects system information and generates a report.
- **sample.log:** Sample application log file used to test error counting.
- **README.md:** Project documentation.

## ⚙️ How to Run

### 1. Clone the repository

```bash
git clone https://github.com/devhassan65/linux-server-health-check.git
cd linux-server-health-check
```

### 2. Make the script executable

```bash
chmod +x health_check.sh
```

### 3. Run the script

```bash
./health_check.sh
```

### 4. View the generated report

```bash
ls -l
cat health_report_*.txt
```

## 💻 Linux Commands Explained

| Command | Purpose |
|---|---|
| `df -h` | Displays disk usage in readable units. |
| `free -h` | Displays memory and swap usage. |
| `top -b -n 1` | Captures a non-interactive snapshot of CPU and process information. |
| `grep -c "ERROR" sample.log` | Counts lines containing `ERROR`. |
| `date` | Gets the current date and time. |
| `chmod +x` | Makes the script executable. |

## 📄 Sample Log File

```text
INFO: Application started
ERROR: Database connection failed
INFO: User logged in
ERROR: API request failed
WARNING: High response time
ERROR: Payment service unavailable
```

Example error-count output:

```text
3
```

## 📊 Report Contents

The generated report includes:

- Current date and time.
- Disk usage information.
- Memory usage information.
- CPU and running process information.
- Number of `ERROR` entries found in the sample log.

The report filename includes a timestamp, allowing separate runs to generate separate reports.

## 🔍 Troubleshooting Use Cases

- **High disk usage:** Use `df -h` to identify filesystems with limited free space.
- **High memory usage:** Use `free -h` and `top` to investigate memory utilization.
- **High CPU usage:** Inspect processes using `top`.
- **Application errors:** Use `grep` to identify and count error entries in logs.

## 🔐 Safety

This project is designed for basic monitoring and reporting. It does not automatically delete files or restart services. Always investigate disk and log issues before making changes to a real server.

## 📚 What I Learned

- Basic Linux system monitoring.
- Bash scripting and script execution.
- Disk, memory, and process inspection.
- Log analysis using `grep`.
- Saving command output to timestamped report files.
- Basic Linux troubleshooting.

## 👨‍💻 Author

**Hassan Zia**

