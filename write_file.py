import datetime as dt

def to_do(tasks):
    
    file=open("output.txt","w")
    for i in tasks:
       file.write(f'{i[0].strftime("%A %d %B %Y")}: {i[1]}\n')
    file.close()