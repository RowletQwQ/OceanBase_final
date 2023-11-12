#!bin/bash
# 一键编译启动测试脚本
bash build.sh debug -DOB_USE_CCACHE=ON --init --make -j 24
# 然后把编译好的文件复制粘贴到对应工作目录
rm -rf /mnt/WorkSpace/oceanbase
mkdir -p /mnt/WorkSpace/oceanbase/bin
cp /mnt/WorkSpace/OceanBase_final/build_debug/src/observer/observer /mnt/WorkSpace/oceanbase/bin
/usr/local/anaconda3/bin/python deploy.py --clean --cluster-home-path /mnt/WorkSpace/oceanbase
sudo -s bash /mnt/WorkSpace/OceanBase_final/test.sh