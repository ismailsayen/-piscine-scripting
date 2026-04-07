import re

def tokenize(sentence):
    print(sentence)
    sentence= re.sub(r'[\W\à\.]'," ",sentence)
    return sentence.lower().split()