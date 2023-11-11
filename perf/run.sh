# 抓取240s的函数调用栈
perf record -F 99 -a -g -- sleep 240
# 随后生成火焰图
./stackcollapse-perf.pl out.perf > out.folded
./flamegraph.pl out.folded > kernel.svg