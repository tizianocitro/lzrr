import os
from module.compress import compress
from module.result import *

cwd = os.getcwd()
compress(cwd)
compress(cwd, "lex")
compress(cwd, "lz")

lzrr_results = get_stats(cwd)
print(f"Results for LZRR: {lzrr_results}")
lz_results = get_stats(cwd, "lz")
print(f"Results for LZ77: {lz_results}")
lex_results = get_stats(cwd, "lex")
print(f"Results for LEX: {lex_results}")
