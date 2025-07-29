#!/bin/bash

echo "Starting benchmark for gzip, bzip2, and xz..."
echo ""

# Step 1: Clean up old output folders (if they exist)
rm -rf compressed_gzip compressed_bzip2 compressed_xz

# Step 2: Create fresh output directories
mkdir compressed_gzip compressed_bzip2 compressed_xz

# Step 3: Benchmark gzip
echo " Benchmarking gzip..."
START=$(date +%s)
#/usr/bin/python3 parallel_compress_python.py -i input_files -o compressed_gzip -a gzip
/c/Users/keert/AppData/Local/Programs/Python/Python313/python.exe parallel_compress_python.py -i input_files -o compressed_gzip -a gzip
END=$(date +%s)
echo "gzip time: $(($END - $START)) seconds"
echo ""

# Step 4: Benchmark bzip2
echo " Benchmarking bzip2..."
START=$(date +%s)
/c/Users/keert/AppData/Local/Programs/Python/Python313/python.exe parallel_compress_python.py -i input_files -o compressed_bzip2 -a bzip2
END=$(date +%s)
echo "bzip2 time: $(($END - $START)) seconds"
echo ""

# Step 5: Benchmark xz
echo " Benchmarking xz..."
START=$(date +%s)
/c/Users/keert/AppData/Local/Programs/Python/Python313/python.exe parallel_compress_python.py -i input_files -o compressed_xz -a xz
END=$(date +%s)
echo "xz time: $(($END - $START)) seconds"
echo ""

echo " Benchmark complete!"
