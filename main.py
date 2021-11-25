import os
import matplotlib.pyplot as plt

from module.compress import compress_all
from module.stats import get_all_stats
from module.plots import bar
from module.plots import plot_all
cwd = os.getcwd()
#compress_all(cwd)

stats=get_all_stats(cwd)
plot_all(stats)
#bar(y=[stats['lzrr'][0][1],stats['lz'][0][1],stats['lex'][0][1]],y_label="execution time (s)",title=title)
