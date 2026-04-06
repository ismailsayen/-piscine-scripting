def remember_the_apple(shopping_list):
    if "apple" in shopping_list:
        return shopping_list
    shopping_list.append("apple")
    return shopping_list 
    