import os

from module.compress import compress_all
from module.stats import get_all_stats
from module.plots import plot_all
from module.tables import create_all_tables


def main(root_path=""):
    compress_all(root_path)
    stats = get_all_stats(root_path)
    plot_all(stats)
    create_all_tables(stats)
    return f"{root_path}/results/"


if __name__ == "__main__":
    cwd = os.getcwd()
    main(cwd)
