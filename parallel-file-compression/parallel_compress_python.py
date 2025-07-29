import os
import time
import argparse
from multiprocessing import cpu_count
from concurrent.futures import ProcessPoolExecutor
import gzip, bz2, lzma

def compress_file(file_path, output_dir, algo):
    base_name = os.path.basename(file_path)
    ext_map = {'gzip': '.gz', 'bzip2': '.bz2', 'xz': '.xz'}
    open_map = {'gzip': gzip.open, 'bzip2': bz2.open, 'xz': lzma.open}
    start = time.time()
    output_path = os.path.join(output_dir, base_name + ext_map[algo])
    with open(file_path, 'rb') as f_in, open_map[algo](output_path, 'wb') as f_out:
        f_out.write(f_in.read())
    duration = round(time.time() - start, 2)
    print(f"{base_name} → {os.path.basename(output_path)} | Time: {duration}s")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--input', required=True)
    parser.add_argument('-o', '--output', required=True)
    parser.add_argument('-a', '--algorithm', choices=['gzip', 'bzip2', 'xz'], required=True)
    args = parser.parse_args()
    os.makedirs(args.output, exist_ok=True)
    files = [os.path.join(args.input, f) for f in os.listdir(args.input) if os.path.isfile(os.path.join(args.input, f))]
    with ProcessPoolExecutor(max_workers=cpu_count()) as executor:
        for file in files:
            executor.submit(compress_file, file, args.output, args.algorithm)

if __name__ == "__main__":
    main()
