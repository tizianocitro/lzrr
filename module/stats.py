import os


def get_all_stats(root_path=""):
    lzrr_results = get_stats(root_path)
    lz_results = get_stats(root_path, "lz")
    lex_results = get_stats(root_path, "lex")
    stats = {
        "lzrr": lzrr_results,
        "lz": lz_results,
        "lex": lex_results
    }
    return stats


def get_stats(root_path="", method="lzrr"):
    filenames = get_file_list(root_path, method)
    stats = []
    for filename in filenames:
        stats.append(get_file_stats(root_path, method, filename))
    return stats


def get_file_list(root_path="", method=""):
    file_list = []
    for root, dirs, files in os.walk(f'{root_path}/results/{method}'):
        for file in files:
            file_list.append(file)
    return file_list


def get_file_stats(root_path="", method="lzrr", filename=""):
    lines = get_reversed_file_lines(root_path, method, filename)
    exec_time = get_execution_time(lines[2])
    memory = get_memory(lines[3])
    n_factor = get_n_factor(lines[4])
    input_len = get_input_len(lines[5])
    result_tuple = (filename, exec_time, n_factor, input_len, memory)
    return result_tuple


def get_reversed_file_lines(root_path="", method="lzrr", filename=""):
    file = open(f'{root_path}/results/{method}/{filename}')
    lines = file.readlines()
    lines.reverse()
    return lines


def get_execution_time(exec_time_str=""):
    return round(int(split_by_colon(exec_time_str).split("ms")[0]) / 1000)


def get_memory(memory_str=""):
    return round(int(split_by_colon(memory_str)) / 1000000)


def get_n_factor(n_factor_str=""):
    return int(split_by_colon(n_factor_str).split("\n")[0])


def get_input_len(input_len_str=""):
    return int(split_by_colon(input_len_str).split("\n")[0])


def split_by_colon(string=""):
    return string.split(":")[1]
