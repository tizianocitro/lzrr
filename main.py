import os
from module.parse import compress
from module.result import *

cwd = os.getcwd()
compress(cwd)
results = get_stats(cwd)

print(results)