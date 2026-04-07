from object_to_json import create_new_user, user_to_json

registration_0 = '{"username": "mario", "email": "mario@me.it"}'
registration_1 = '{"city": "Rome", "country": "Italy"}'

user_0 = create_new_user(registration_0)
user_1 = create_new_user(registration_1)


print(user_to_json(user_0))
print(user_to_json(user_1))