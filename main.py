import os

from module.compress import compress_all
from module.stats import get_all_stats
from module.plots import from_stats_to_bar, plot_all
import matplotlib.pyplot as plt
cwd = os.getcwd()
#compress_all(cwd)
stats = get_all_stats(cwd)
plot_all(stats)

