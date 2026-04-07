import re

def tokenize(sentence):
    sentence= re.sub(r'[\W\à\._]'," ",sentence)
    return sentence.lower().split()