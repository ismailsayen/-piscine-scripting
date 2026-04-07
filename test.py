import datetime as dt
from write_file import to_do

to_do_list = [
    (dt.date(2022, 6, 1), "fix the seat"),
    (dt.date(2022, 6, 2), "take the trash"),
]
to_do(to_do_list)