> monitor.log

echo "===== SYSTEM MONITOR REPORT =====" >> monitor.log
echo "Date & Time: $(date)" >> monitor.log
echo "" >> monitor.log

echo "----- CPU USAGE -----" >> monitor.log
top -l 1 | grep "CPU usage" >> monitor.log
echo "" >> monitor.log

echo "----- MEMORY USAGE -----" >> monitor.log
vm_stat >> monitor.log
echo "" >> monitor.log

echo "----- DISK USAGE -----" >> monitor.log
df -h >> monitor.log
echo "" >> monitor.log

echo "----- TOP 5 PROCESSES BY CPU USAGE -----" >> monitor.log
ps -A -o %cpu,pid,comm | sort -nr | head -n 6 >> monitor.log
echo "" >> monitor.log

echo "System monitoring completed. Output saved to monitor.log"
