# Parallel File Compression using Python

This project demonstrates how to compress multiple files in parallel using Python's `multiprocessing` module and three popular compression algorithms — gzip, bzip2, and xz.

The goal is to reduce file size efficiently and quickly by utilizing all CPU cores, making the process faster compared to sequential compression.

## Project Structure

parallel-file-compression/

├── input_files/                # Sample input .txt files
├── compressed_gzip/           # Output of gzip compression
├── compressed_bzip2/          # Output of bzip2 compression
├── compressed_xz/             # Output of xz compression
├── generate_files.py          # Script to generate test files
├── parallel_compress_python.py # Main script for parallel compression
├── parallel_compress_shell.sh  # Shell script to automate and benchmark
├── README.md                  # Project documentation
└── LICENSE                    # MIT License

## How It Works

1. File Generation  
   Run the file generator script to create 10 dummy `.txt` files:
   python generate_files.py

2. Parallel Compression  
   Use the main Python script to compress files using:
   - gzip (fastest)
   - bzip2 (better compression)
   - xz (highest compression)

   Example:
   python parallel_compress_python.py -i input_files -o compressed_gzip -a gzip

3. Shell Automation  
   To run all three compressions and benchmark them:
   bash parallel_compress_shell.sh

## Skills Demonstrated

- Python scripting
- multiprocessing using ProcessPoolExecutor
- File I/O and compression
- Shell scripting and benchmarking
- Automation and performance comparison

## Why This Project?

This project helped me learn how to:

- Handle large numbers of files efficiently
- Use system resources better with parallelism
- Automate repetitive tasks with shell scripts
- Work with real-world tools like gzip, bzip2, and xz

It’s a mini version of what happens in data pipelines and DevOps workflows.

## License

This project is licensed under the MIT License.

## Acknowledgements

- Developed as part of self-learning for IT operations and system automation.
- Inspired by real-world scenarios where files must be compressed for storage or transfer.

## GitHub Tags (Add these manually)
python • automation • multiprocessing • file-compression • gzip • devops • shell-script • performance • benchmarking

## One-line GitHub Description
Parallel file compression using gzip, bzip2, and xz with Python multiprocessing and shell automation.
