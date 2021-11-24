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
    lines = get_file_lines(root_path, filename)
    exec_time = get_execution_time(lines[2])
    n_factor = get_n_factor(lines[3])
    input_len = get_input_len(lines[4])
    result_tuple = (filename, exec_time, n_factor, input_len)
    return result_tuple


def get_file_lines(root_path="", filename=""):
    file = open(f'{root_path}/results/{filename}')
    lines = file.readlines()
    lines.reverse()
    return lines


def get_execution_time(exec_time_str=""):
    return round(int(exec_time_str.split(":")[1].split("ms")[0])/1000)


def get_n_factor(n_factor_str=""):
    return int(n_factor_str.split(":")[1].split("\n")[0])


def get_input_len(input_len_str=""):
    return int(input_len_str.split(":")[1].split("\n")[0])
