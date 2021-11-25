from typing import Match
import matplotlib.pyplot as plt

def bar(x=['lzrr','lz','lex'],y=[],x_label="methods",y_label="",title="",color="blue"):
    plt.bar(x,y,color=color)
    plt.xlabel(x_label)
    plt.ylabel("execution time (s)")
    plt.title(title)
    title=title.replace(" ","_")
    plt.savefig(f"./plots/{title}.png")
    plt.close()

def get_metric_position(metric=""):
    position=0
    
    if 'execution time' in metric:
        position=1
    elif 'number of factor' in metric:
        position=2
    elif 'input length' in metric:
        position=3
    else:
        position=4
    
    return position
def from_stats_to_bar(stats={},metric=""):
    position=get_metric_position(metric)
    for index in range(len(stats['lzrr'])):
        y=[]
        
        y.append(stats['lzrr'][index][position])
        y.append(stats['lz'][index][position])
        y.append(stats['lex'][index][position])
        print("Array",y)
        title=stats['lzrr'][index][0]+metric
        bar(y=y,y_label=metric,title=title,color='#f2cf43')
