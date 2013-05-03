#!/bin/sh
MEMPROF_PATH="../"
APP_NAME=db_bench_wiredtiger

sudo insmod $MEMPROF_PATH/module/memprof.ko
rm /tmp/data.raw.*

echo 'b' > /proc/memprof_cntl
env LD_PRELOAD=$MEMPROF_PATH/library/ldlib.so $@
echo 'e' > /proc/memprof_cntl

cat /proc/memprof_ibs > ibs.raw 
cat /proc/memprof_perf > perf.raw 
cat /proc/kallsyms > kallsyms.raw 

$MEMPROF_PATH/library/merge /tmp/data.raw.* 
rm /tmp/data.raw.*

sudo rmmod memprof

#To parse, use something like:
#$MEMPROF_PATH/parser/parse --perf ./perf.raw --data ./data.processed.raw ./ibs.raw  -u -M

#By default Memprof will try to resolve symbols (e.g., function names) using the binaries at their original location (e.g., /usr/lib/libc.so)
#You can change that using the -B option; e.g., with -B ./bin, Memprof will look for all .so and binaries in ./bin first.
#It can be especially useful if you analyse traces on a machine that is different from that you used to do the profiling (copy all binaries 
#and libraries used during profiling in a ./bin dir on the machine used to analyse the traces and Memprof will use the correct lib versions)

