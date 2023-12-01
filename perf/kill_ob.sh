output=$(ps -ef | grep observer)

# 使用 `awk` 提取第一行的 PID
pid=$(echo "$output" | awk 'NR==1{print $2}')

# 如果找到了 PID
if [[ -n "$pid" ]]; then
    # 直接杀死进程
    # 运行 `ps -ef` 命令并使用 `grep` 过滤出包含 "observer" 的行
    echo "找到的 PID 是: $pid"
    

    kill -9 "$pid"
    echo "已杀死进程"
else
    echo "未找到匹配的进程"
fi