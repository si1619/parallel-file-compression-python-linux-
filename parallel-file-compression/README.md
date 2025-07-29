# Parallel File Compression 

This project demonstrates how to compress multiple files **in parallel** using Python's `multiprocessing` module and different algorithms like `gzip`, `bzip2`, and `xz`.

##  Folder Structure

- `input_files/` — Contains sample text files to be compressed
- `compressed_gzip/`, `compressed_bzip2/`, `compressed_xz/` — Output folders
- `generate_files.py` — Generates dummy text files
- `parallel_compress_python.py` — Main logic for parallel compression
- `parallel_compress_shell.sh` — Automates compression and benchmarking

##  How to Use

1. Run `generate_files.py` to create test files
2. Use the shell script to compress them with all 3 algorithms:
   ```bash
   bash parallel_compress_shell.sh
   ```

##  Skills Learned

- Python scripting
- Multiprocessing using `ProcessPoolExecutor`
- File I/O and compression
- Shell scripting and automation
