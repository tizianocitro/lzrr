import matplotlib.pyplot as plt
import os

def bar(x=['lzrr', 'lz', 'lex'], y=[], x_label="methods", y_label="", title="", color="blue",filename=""):
    plt.bar(x, y, color=color)
    plt.xlabel(x_label)
    plt.ylabel(y_label)
    plt.title(title)
    title = title.replace(" ", "_")
    directory=f'./plots/{filename}/'
    if not os.path.exists(directory):
        os.makedirs(directory)
    plt.savefig(f'{directory}{title}.png')
    plt.close()


def get_metric_position_and_color(metric=""):
    position = 0
    color = 'blue'
    if 'execution time' in metric:
        position = 1
        color = "#3CB371"
    elif 'number of factor' in metric:
        position = 2
        color = '#B22222'
    elif 'input length' in metric:
        position = 3
        color = '#20B2AA'
    else:
        position = 4
        color = '#f2cf43'

    return position, color

def from_stats_to_plot(stats={},metric=""):
    position, color = get_metric_position_and_color(metric)

    for key in stats.keys():
        y=[]
        x=[]
        for tuple in stats[key]:
            y.append(tuple[0])
            x.append(tuple[position])
        
        
        if key=="lz":
            method=key+'77'.upper()
        else:
            method=key.upper()

        plot(x,y,y_label=metric,title=method,color=color,method=key)


def plot (x=[],y=[],x_label="files",y_label="",title="",color="",method=""):
    plt.plot(y,x,color=color)
    plt.xlabel(x_label)
    plt.ylabel(y_label)
    plt.suptitle(title)
    metric = y_label.replace(" ", "_")
    plt.savefig(f'./plots/{method}/{metric}.png')
    plt.close()



def from_stats_to_bar(stats={}, metric=""):
    position, color = get_metric_position_and_color(metric)
    for index in range(len(stats['lzrr'])):
        y = [stats['lzrr'][index][position], stats['lz'][index][position], stats['lex'][index][position]]
        print("For metric ", metric, " y is ", y)
        filename=stats['lzrr'][index][0]
        title = f'{filename} {metric}'
        bar(y=y, y_label=metric, title=title, color=color,filename=filename)

def plot_all(stats={}):
    print("Generating bars")
    from_stats_to_bar(stats, metric="execution time (s)")
    from_stats_to_bar(stats, metric="number of factor")
    from_stats_to_bar(stats, metric="input length")
    from_stats_to_bar(stats, metric="memory consumption (MB)")
    print("All bars have been generated")

    print("Generating plots")
    from_stats_to_plot(stats, metric="execution time (s)")
    from_stats_to_plot(stats, metric="number of factor")
    from_stats_to_plot(stats, metric="input length")
    from_stats_to_plot(stats, metric="memory consumption (MB)")
    print("All plots have been generated")
