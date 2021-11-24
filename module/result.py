import os


def get_stats(root_path=""):
    filenames = get_file_list(root_path)
    stats = []
    for filename in filenames:
        stats.append(get_file_stats(root_path, filename))
    return stats


def get_file_list(root_path=""):
    file_list = []
    for root, dirs, files in os.walk(f'{root_path}/results'):
        for file in files:
            file_list.append(file)
    return file_list


def get_file_stats(root_path="", filename=""):
    lines = get_reversed_file_lines(root_path, filename)
    exec_time = get_execution_time(lines[2])
    memory = get_memory(lines[3])
    n_factor = get_n_factor(lines[4])
    input_len = get_input_len(lines[5])
    result_tuple = (filename, exec_time, n_factor, input_len, memory)
    return result_tuple


def get_reversed_file_lines(root_path="", filename=""):
    file = open(f'{root_path}/results/{filename}')
    lines = file.readlines()
    lines.reverse()
    return lines


def get_execution_time(exec_time_str=""):
    return round(int(split_by_comma(exec_time_str).split("ms")[0])/1000)


def get_memory(memory_str=""):
    return round(round(int(split_by_comma(memory_str))/1000)/1000)


def get_n_factor(n_factor_str=""):
    return int(split_by_comma(n_factor_str).split("\n")[0])


def get_input_len(input_len_str=""):
    return int(split_by_comma(input_len_str).split("\n")[0])


def split_by_comma(string=""):
    return string.split(":")[1]