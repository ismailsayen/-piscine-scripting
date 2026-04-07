def create_person(first_name,last_name,age=34,gender="male",size=1.83,job="taxidermist"):
    
    print(first_name,"-",last_name,"-",age,"-",gender,"-",size,"-",job)
    thisdict = {
        "first_name": first_name,
        "last_name": last_name,
        "age": age,
        "gender":gender,
        "size":size,
        "job":job
    }
    return thisdict
person = create_person("Jane", "Doe", size=1.75, job="programmer")
print(person)