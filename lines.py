import os

# File extensions to include (you can modify this)
CODE_EXTENSIONS = {'.py', '.js', '.java', '.cpp', '.c', '.cs', '.ts', '.html', '.css','.json','.mcfunction'}

def count_lines_in_file(file_path):
    try:
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            lines = f.readlines()
            # Count non-empty lines
            return sum(1 for line in lines if line.strip())
    except Exception as e:
        print(f"Could not read {file_path}: {e}")
        return 0

def count_lines_in_folder(folder):
    total_lines = 0
    for root, dirs, files in os.walk(folder):
        for file in files:
            if any(file.endswith(ext) for ext in CODE_EXTENSIONS):
                file_path = os.path.join(root, file)
                lines = count_lines_in_file(file_path)
                total_lines += lines
    return total_lines

if __name__ == "__main__":
    folder_to_scan = '.'  # Current folder
    total = count_lines_in_folder(folder_to_scan)
    print(f"Total lines of code: {total}")
