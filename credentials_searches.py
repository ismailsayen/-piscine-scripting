import os,json

def credentials_search():
    if not os.path.exists("logs.json"):
        return
    logs=open("logs.json").read()
    
    if len(logs) ==0 :
        return
    
    try:
        dicti = json.loads(logs)
        res={}
        extractValues(dicti,res)
        if len(res)>0:
            out=open("credentials.json","w")
            out.write(json.dumps(res))
            out.close()
    except ValueError as e:
        return


def extractValues(data,res):
    for key,val in data.items():
        if key=="password" or key=="secret":
            res[key]=val
        if isinstance(val,dict):
            return extractValues(val,res)
    return 



credentials_search()