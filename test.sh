echo "Deploying"
# 1. 本地工作目录
export OB_WORKSPACE=/mnt/WorkSpace/OceanBase_final
# 2. oceanbase部署目录
export OCEANBASE_HOME=/mnt/WorkSpace/oceanbase
# 3. python环境目录
export PYTHON_HOME=/usr/local/anaconda3/bin
$PYTHON_HOME/python deploy.py --clean --cluster-home-path $OCEANBASE_HOME
# 接着，先启动部署程序，后启动perf测试
$PYTHON_HOME/python deploy.py --cluster-home-path $OCEANBASE_HOME &
cd $OB_WORKSPACE/perf
bash run.sh