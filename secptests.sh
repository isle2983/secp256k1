#!/bin/sh

echo "\ncommit:\n"
git rev-parse HEAD
echo "\nscript:\n"
cat ~/bin/secptests.sh
echo "\ncpu:\n"
cat /proc/cpuinfo |grep "model name" |uniq -c

echo "\nmake clean:\n"
make clean
echo "\nconfigure without endomorphism (glibc 2.25):\n"
./configure --enable-benchmark LDFLAGS="-L/home/isle/glibc/install/lib" CFLAGS="-I/home/isle/glibc/install/include"
echo "\nmake -j6:\n"
make -j6
echo "\ntests:\n"
./tests
echo "\nexhaustive_tests:\n"
./exhaustive_tests
echo "\nbench_internal:\n"
./bench_internal
echo "\nbench_sign:\n"
./bench_sign
echo "\nbench_verify:\n"
./bench_verify

#echo "\nmake clean:\n"
#make clean
#export CONFIGURE="./configure --enable-benchmark"
#echo "\nconfigure without endomorphism (glibc 2.19):\n"
#echo $CONFIGURE
#$CONFIGURE
#echo "\nmake -j6:\n"
#make -j6
#echo "\ntests:\n"
#./tests
#echo "\nexhaustive_tests:\n"
#./exhaustive_tests
#echo "\nbench_internal:\n"
#./bench_internal
#echo "\nbench_sign:\n"
#./bench_sign
#echo "\nbench_verify:\n"
#./bench_verify
#
#echo "\nmake clean:\n"
#make clean
#export CONFIGURE="./configure --enable-benchmark --enable-endomorphism"
#echo "\nconfigure with endomorphism (glibc 2.19):\n"
#echo $CONFIGURE
#$CONFIGURE
#echo "\nconfigure with endomorphism:\n"
#./configure --enable-benchmark --enable-endomorphism
#echo "\nmake -j6:\n"
#make -j6
#echo "\ntests:\n"
#./tests
#echo "\nexhaustive_tests:\n"
#./exhaustive_tests
#echo "\nbench_internal:\n"
#./bench_internal
#echo "\nbench_sign:\n"
#./bench_sign
#echo "\nbench_verify:\n"
#./bench_verify
