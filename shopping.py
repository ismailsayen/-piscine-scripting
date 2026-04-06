def remember_the_apple(shopping_list):
    if len(shopping_list)==0:
        return []
    
    if "apple" in shopping_list:
        return shopping_list
    shopping_list.append("apple")
    return shopping_list 
    