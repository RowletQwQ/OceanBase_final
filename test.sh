# 接着，先启动部署程序，后启动perf测试
/usr/local/anaconda3/bin/python deploy.py --cluster-home-path /mnt/WorkSpace/oceanbase &
cd /mnt/WorkSpace/OceanBase_final/perf
bash run.sh