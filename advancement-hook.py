import os
import re

TOT = 19
def advancement():
    return len([d for d in os.listdir() if os.path.isdir(d) and d[0] != '.'])

def percentage():
    return (advancement()*100)//TOT

def replace_advancement(text, adv_percentage):
    return re.sub(r'[0-9]+', adv_percentage, text)

def update_advancement():
    with open('README.md', 'r+') as f:
        text = f.read()
        f.seek(0)
        result = replace_advancement(text, '12')
        f.write(result)

# ![Progress](https://progress-bar.dev/50?title=Title)

print(update_advancement())