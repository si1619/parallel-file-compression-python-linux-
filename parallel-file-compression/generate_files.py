from pathlib import Path

def create_sample_files(folder="input_files", count=10, size_kb=100):
    Path(folder).mkdir(exist_ok=True)
    pattern = "This is a sample content line.\n"
    for i in range(count):
        file_path = Path(folder) / f"file{i+1}.txt"
        with open(file_path, 'w') as f:
            content = pattern * ((size_kb * 1024) // len(pattern))
            f.write(content)
        print(f" Created: {file_path} ({size_kb} KB)")

create_sample_files()
