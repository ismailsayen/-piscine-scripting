import json

def merge_two(dic1):
    dic2={}
    while True:
        print("Add a new entry:")    
        key=input("key:").strip()
        
        if key == "exit":
            break
        
        value=int(input("value:"))
        dic2[key]=value
        
    dic1= dic1 | dic2
    
    return json.dumps(dic1)
     