import json

def get_recipes(file_name):
    file=open(file_name)
    content=file.read()
    file.close()
    return json.loads(content)