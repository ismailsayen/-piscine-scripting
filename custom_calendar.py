def day_from_number(dn):
    dict={
        "1" : "Monday",
        "2" : "Tuesday",
        "3" : "Wednesday",
        "4" : "Thursday",
        "5" : "Friday",
        "6" : "Saturday",
        "7" : "Sunday",
        }
    return dict.get(str(dn))
def day_to_number(dn):
    dict={
         "Monday":      1,
         "Tuesday":      2 ,
         "Wednesday":      3 ,
         "Thursday":      4 ,
         "Friday":      5 ,
         "Saturday":      6 ,
         "Sunday":      7 ,
        }
    return dict.get(str(dn))