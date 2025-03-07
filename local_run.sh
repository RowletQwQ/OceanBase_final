#!bin/bash
# 一键编译启动测试脚本
# 配置目录
# 1. 本地工作目录
export OB_WORKSPACE=/mnt/WorkSpace/OceanBase_final
# 2. oceanbase部署目录
export OCEANBASE_HOME=/mnt/WorkSpace/oceanbase
# 3. python环境目录
export PYTHON_HOME=/usr/local/anaconda3/bin
bash build.sh debug -DOB_USE_CCACHE=ON --init --make -j 24
sudo -s bash $OB_WORKSPACE/local_test.sh