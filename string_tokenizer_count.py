from string_processing import tokenize

def tokenizer_counter(sent):
    res={}
    for wrd in tokenize(sent):
        if res.get(wrd)!=None:
            res[wrd]+=1;continue
            
        res[wrd]=1
    return dict(sorted(res.items()))

