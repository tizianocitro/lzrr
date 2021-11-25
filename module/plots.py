from typing import Match
import matplotlib.pyplot as plt

def bar(x=['lzrr','lz','lex'],y=[],x_label="methods",y_label="",title="",color="blue"):
    plt.bar(x,y,color=color)
    plt.xlabel(x_label)
    plt.ylabel(y_label)
    plt.title(title)
    title=title.replace(" ","_")
    plt.savefig(f"./plots/{title}.png")
    plt.close()

def get_metric_position_color(metric=""):
    position=0
    color='blue'
    if 'execution time' in metric:
        position=1
        color="#3CB371"
    elif 'number of factor' in metric:
        position=2
        color='#B22222'
    elif 'input length' in metric:
        position=3
        color='#20B2AA'
    else:
        position=4
        color='#f2cf43'
    
    return position,color
def from_stats_to_bar(stats={},metric=""):
    position,color=get_metric_position_color(metric)
    for index in range(len(stats['lzrr'])):
        y=[]
        
        y.append(stats['lzrr'][index][position])
        y.append(stats['lz'][index][position])
        y.append(stats['lex'][index][position])
        
        title=stats['lzrr'][index][0]+" "+metric
        bar(y=y,y_label=metric,title=title,color=color)

def plot_all(stats={}):
    print("Generating Plots .. ")
    from_stats_to_bar(stats,metric="execution time (s)")
    from_stats_to_bar(stats,metric="number of factor")
    from_stats_to_bar(stats,metric="input length")
    from_stats_to_bar(stats,metric="memory conumption (MB)")
    print("All plots have been generated")