# Parallel File Compression using Python

This project demonstrates how to compress multiple files in parallel using Python's `multiprocessing` module and three popular compression algorithms — gzip, bzip2, and xz.

The goal is to reduce file size efficiently and quickly by utilizing all CPU cores, making the process faster compared to sequential compression.

## Project Structure

```
parallel-file-compression/
├── input_files/                # Sample input .txt files
├── compressed_gzip/            # Output of gzip compression
├── compressed_bzip2/           # Output of bzip2 compression
├── compressed_xz/              # Output of xz compression
├── generate_files.py           # Script to generate test files
├── parallel_compress_python.py # Main script for parallel compression
├── parallel_compress_shell.sh  # Shell script to automate and benchmark
├── benchmark_compression.sh    # Benchmarking shell script
├── README.md                   # Project documentation
└── LICENSE                     # MIT License
```

## How It Works

1. **File Generation**  
   Generate 10 dummy `.txt` files:
   ```bash
   python generate_files.py
   ```

2. **Parallel Compression**  
   Compress files using:
   ```bash
   python parallel_compress_python.py -i input_files -o compressed_gzip -a gzip
   ```

3. **Shell Automation**  
   Run all compressions and benchmark:
   ```bash
   bash parallel_compress_shell.sh
   bash benchmark_compression.sh
   ```

## Skills Demonstrated

- Python scripting
- Multiprocessing with `ProcessPoolExecutor`
- File I/O and compression
- Shell scripting and benchmarking
- Automation and performance testing

## Why This Project?

This project helped me:

- Handle large numbers of files efficiently
- Use system resources better with parallelism
- Automate repetitive tasks
- Work with real-world tools like gzip, bzip2, and xz

It’s similar to what happens in DevOps or data engineering pipelines.

## License

This project is licensed under the MIT License.

## GitHub Tags (Add manually)

`python` • `automation` • `multiprocessing` • `file-compression` • `gzip` • `shell-script` • `devops` • `benchmarking`

## One-line GitHub Description

Parallel file compression using gzip, bzip2, and xz with Python multiprocessing and shell automation.
