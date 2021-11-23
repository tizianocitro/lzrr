import os
from module.parse import parse_input
from module.result import *
pwd = os.getcwd()
#parse_input(pwd)
results=get_stats(pwd)

print(results)