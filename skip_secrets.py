import sys

if __name__=='__main__':
    arguments=sys.argv[1:]
    if len(arguments) != 1 :
        exit(1) 
    input=open(arguments[0])
    if not input.readable() :
        exit(1) 
    content=input.readlines()
    input.close()
    out=open("out.txt","w")
    for sent in content:
        if not sent.__contains__("pineapple"):
            out.write(sent)
    out.close()