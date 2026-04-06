def clean_list(strs):
    if len(strs)==0:
        return []
    for i in range(0, len(strs)):
        strs[i]= strs[i].strip()
    if "milk" not in strs:
        strs.append("milk")
    
    for i in range(0, len(strs)):
        strs[i]= str(1+i) + "/ " + strs[i].capitalize()
    
    return strs