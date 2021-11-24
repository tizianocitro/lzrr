import os
from module.parse import parse_input
from module.result import *

cwd = os.getcwd()
parse_input(cwd)
results = get_stats(cwd)

print(results)