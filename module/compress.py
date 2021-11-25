import os


def compress_all(root_path=""):
    compress(root_path)
    compress(root_path, "lex")
    compress(root_path, "lz")


def compress(root_path="", method="lzrr"):
    input_path = f"{root_path}/input/"
    output_path = f"{root_path}/output/{method}/"
    result_path = f"{root_path}/results/{method}/"

    print(f"Compression with {method} has started")
    for root, dirs, files in os.walk(input_path):
        for filename in files:
            print(f"Compressing {filename} with {method}")
            output_pile_path = f"{output_path}{filename}.{method}"
            input_file_path = f"{input_path}{filename}"
            result_file_path = f"{result_path}{filename}"
            os.system(build_command(input_file_path, output_pile_path, method, result_file_path))
            print(f"{filename} compressed with {method}")
    print(f"Compression with {method} has ended")


def build_command(input_file_path="", output_pile_path="", method="lzrr", result_file_path=""):
    if input_file_path != "" and output_pile_path != "" and result_file_path != "":
        command = f"./lzrr_impl/build/compress.out -i {input_file_path} -m {method} -o {output_pile_path}  -c 1 > {result_file_path}"
        return command
