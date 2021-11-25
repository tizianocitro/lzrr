import os

from module.compress import compress_all
from module.stats import get_all_stats
from module.plots import plot_all

cwd = os.getcwd()
compress_all(cwd)
stats = get_all_stats(cwd)
plot_all(stats)
