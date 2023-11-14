output=$(ps -ef | grep observer)

# 使用 `awk` 提取第一行的 PID
pid=$(echo "$output" | awk 'NR==1{print $2}')

# 如果找到了 PID
if [[ -n "$pid" ]]; then
    # 抓取100s的函数调用栈
    # 运行 `ps -ef` 命令并使用 `grep` 过滤出包含 "observer" 的行
    echo "找到的 PID 是: $pid"
    
    # 使用 pid 作为参数运行 perf record 命令
    perf record -F 600 -p "$pid" -g -o perf.data
    echo "捕获完成"
else
    echo "未找到匹配的进程"
fi