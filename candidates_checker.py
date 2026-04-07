import sys


if __name__=='__main__':
    args =sys.argv[1:]
    if len(args)!=1:
        print("Error: wrong number of arguments")
        exit(1)
    if not str(args[0]).isdecimal() :
        exit(1)
    res=[]
    for i in range(0,int(args[0])):
        print("Add a new candidate:")
        name=input("name: ")
        age=input("age: ")
        if int(age) < 18:
            res.append(f'{name} is not eligible (underaged)')
        elif int(age) > 60:
            res.append(f'{name} is not eligible (over the legal age)')
        else:
            res.append(f'{name} is eligible')
    print("\n".join(res))
            
        