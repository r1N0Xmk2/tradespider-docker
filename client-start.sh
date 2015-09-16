#!/bin/sh

#run tradespider client
ts_params="-a $TS_ACCOUNT -p $TS_PASSWORD"
if [ ! -n "$TS_ACCOUNT" -o ! -n "$TS_PASSWORD" ];then 
echo "lack account or password"
fi
#connect params
[ -n "$TS_TASK_TYPE" ] && ts_params=${ts_params}" -t $TS_TASK_TYPE"
[ -n "$TS_THREAD_NUM" ] && ts_params=${ts_params}" -n $TS_THREAD_NUM"
[ -n "$TS_TASK_START" ] && ts_params=${ts_params}" -s $TS_TASK_START"
[ -n "$TS_TASK_END" ] && ts_params=${ts_params}" -e $TS_TASK_END"
[ -n "$TS_TASK_INTERVAL" ] && ts_params=${ts_params}" -i $TS_TASK_INTERVAL"
#echo $ts_params
python src/spider.py ${ts_params}
