CURRENT_DIR=/root/source/OceanBase_final
TARGET_FILE=compile_commands.json
./build.sh debug --init -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
mv build_debug/ 

