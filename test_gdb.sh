echo "Deploying"
# 1. 本地工作目录
export OB_WORKSPACE=/mnt/WorkSpace/OceanBase_final
# 2. oceanbase部署目录
export OCEANBASE_HOME=/mnt/WorkSpace/oceanbase
# 3. python环境目录
export PYTHON_HOME=/usr/local/anaconda3/bin
$PYTHON_HOME/python my_deploy.py --clean --cluster-home-path $OCEANBASE_HOME
# 然后把编译好的文件复制粘贴到对应工作目录
rm $OCEANBASE_HOME/bin/observer
cp $OB_WORKSPACE/build_debug/src/observer/observer $OCEANBASE_HOME/bin/observer
# 接着，先启动部署程序，后启动perf测试
$PYTHON_HOME/python gdb_deploy.py --cluster-home-path $OCEANBASE_HOME --perf-path $OB_WORKSPACE/perf
# cd $OB_WORKSPACE/perf
# bash run.sh