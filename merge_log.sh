#!bin/bash
export LOG_PATH=/mnt/WorkSpace/oceanbase/log
export MERGE_LOG_PATH=/mnt/WorkSpace/oceanbase/merge_log.log
export TRACE_ID=YB427F000001-00060A0AECD4D691-0-0
grep $TRACE_ID $LOG_PATH/observer* $LOG_PATH/election* $LOG_PATH/rootservice* \
    | sed 's/t/ /' | awk '{tmp=$1; $1=$2; $2=$3; $3=$4; $4=tmp; print $0}' \
    | sort > $MERGE_LOG_PATH