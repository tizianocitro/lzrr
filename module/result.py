import os

def get_file_list(root_path=""):

    file_list=[]
    for root,dirs,files in os.walk(f'{root_path}/results'):
        for file in files:
            file_list.append(file)
    return file_list

def get_file_stats(root_path="",filename=""):
    file=open(f'{root_path}/results/{filename}')
    lines=file.readlines()
    lines.reverse()
    exec_time=int(get_execution_time(lines[2]))
    n_factor=int(get_n_factor(lines[3]))
    input_len=int(get_input_len(lines[4]))
    result_tuple=(filename,exec_time,n_factor,input_len)
    return result_tuple

def get_stats(root_path=""):
    file_list=get_file_list(root_path)
    stats=[]
    for filename in file_list:
        stats.append(get_file_stats(root_path,filename))
    return stats
    
def get_execution_time(exec_time_str=""):
    return exec_time_str.split(":")[1].split("ms")[0]

def get_n_factor(n_factor_str=""):
    return n_factor_str.split(":")[1].split("\n")[0]

def get_input_len(input_len_str=""):
    return input_len_str.split(":")[1].split("\n")[0]
