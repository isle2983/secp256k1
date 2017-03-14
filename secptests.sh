#!/bin/sh

git rev-parse HEAD
echo ""
cat secptests.sh
echo ""
cat /proc/cpuinfo |grep "model name" |uniq -c
echo ""
make clean
echo ""
./configure --enable-benchmark
echo ""
make -j6
echo ""
./tests
echo ""
./exhaustive_tests
echo ""
./bench_internal
echo ""
./bench_sign
echo ""
./bench_verify
echo ""

make clean
echo ""
./configure --enable-benchmark --enable-endomorphism
echo ""
make -j6
echo ""
./tests
echo ""
./exhaustive_tests
echo ""
./bench_internal
echo ""
./bench_sign
echo ""
./bench_verify
echo ""
