#!/bin/bash

INPUT_DIR="input_files"
PYTHON_SCRIPT="parallel_compress_python.py"

echo " Starting compression benchmark..."

echo -e "\n Running GZIP Compression..."
time python $PYTHON_SCRIPT -i $INPUT_DIR -o compressed_gzip -a gzip

echo -e "\n Running BZIP2 Compression..."
time python $PYTHON_SCRIPT -i $INPUT_DIR -o compressed_bzip2 -a bzip2

echo -e "\n Running XZ Compression..."
time python $PYTHON_SCRIPT -i $INPUT_DIR -o compressed_xz -a xz

echo -e "\n All compression tasks complete."
