import pandas as pd
import matplotlib.pyplot as plt
from pandas.plotting import table
from module.plots import get_metric_position_and_color


def create_all_tables(stats={}):
    create_table(stats)
    create_table(stats, "execution time")
    create_table(stats, "memory consumption")


def create_table(stats={}, metric="number of factor"):
    lzrr_metrics, strings, strings_lengths = get_columns(stats=stats, metric=metric)
    lz_metrics, lz_strings, lz_strings_lengths = get_columns(stats=stats, method="lz", metric=metric)
    lex_metrics, lex_strings, lex_strings_lengths = get_columns(stats=stats, method="lex", metric=metric)
    data = {
        "String": strings,
        "String length": strings_lengths,
        "LZ77": lz_metrics,
        "LEX": lex_metrics,
        "LZRR": lzrr_metrics
    }
    df = pd.DataFrame(data)
    df.index = ["" for item in df.index]

    fig, ax = plt.subplots(figsize=(10, 5))
    ax.xaxis.set_visible(False)
    ax.yaxis.set_visible(False)
    ax.set_frame_on(False)
    tabla = table(ax, df, loc='upper right', colWidths=[0.15] * len(df.columns))
    tabla.auto_set_font_size(False)
    tabla.set_fontsize(11)
    tabla.scale(1.3, 1.3)
    plt.savefig(f"./tables/{metric}.png", transparent=True)


def get_columns(stats={}, method="lzrr", metric=""):
    position, color = get_metric_position_and_color(metric)
    strings = []
    strings_lengths = []
    metrics = []
    for tuple in stats[method]:
        strings.append(tuple[0])
        strings_lengths.append(tuple[3])
        metrics.append(tuple[position])
    return metrics, strings, strings_lengths
