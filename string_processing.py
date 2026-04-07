import re

def tokenize(sentence):
    print(sentence)
    sentence= re.sub(r'[\W\à\._]'," ",sentence)
    return sentence.lower().split()