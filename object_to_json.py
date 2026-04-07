import json


def create_new_user(dict):
    
    d = json.loads(dict)
    
    
    if d.get("username") != None and d.get("email") != None :
        class User:
            username =""
            email = ""
            def __init__(self):
                self.username= d.get("username")
                self.email=d.get("email")
    else:
        class User:
            username = 'user'
            email = 'something@mail.com'
    
    return User();


def user_to_json(user):
    
    return json.dumps(user.__dict__)

   