import re

def tokenize(sentence):
    sentence= re.sub(r'\W'," ",sentence)
    return sentence.lower().split()