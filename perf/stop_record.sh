output=$(ps -ef | grep perf)

# 使用 `awk` 提取第二行的 PID
pid=$(echo "$output" | awk 'NR==2{print $2}')
kill -2 $pid
sleep 2
perf script > $1.perf
# 随后生成火焰图
./stackcollapse-perf.pl $1.perf > $1.folded
./flamegraph.pl $1.folded > $1.svg
# 拷贝到指定路径
cp $1.svg /home/rowlet/Desktop/Log_Analysis/$1.svg
