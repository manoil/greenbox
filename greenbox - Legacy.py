import datetime
import os
import sys
from random import randint

min_commit_num = 20
commit_range = 50

now = datetime.datetime.now()
start = now.replace(year=2019)


def change_day():
    return datetime.timedelta(days=1, seconds=randint(0, 60), minutes=randint(0, 60), hours=randint(0, 24))


def change_time():
    return datetime.timedelta(seconds=randint(0, 60), minutes=randint(0, 60))


commit_date = (start + change_day())
times = randint(60, 300)
commit_num = 0
how_many_commit_this_time = min_commit_num

while commit_date < now:

    commit_date = commit_date + change_day()
    for i in range(times):
        f = open('data.txt', 'a+')
        commit_date = commit_date + change_time()
        f.writelines(commit_date.isoformat() + '\nWhat a nice day!\n')
        f.close()
        os.system('git add .')
        os.system('git commit --date={time} -m "Update {time}"'.format(time=commit_date.isoformat()))
        if commit_num == min_commit_num:
            how_many_commit_this_time = randint(min_commit_num + 1, min_commit_num + commit_range)
            commit_num += 1
        else:
            if commit_num < how_many_commit_this_time:
                commit_num += 1
                print("NO." + str(commit_num))
            else:
                print('\n============pushing============\n')
                how_many_commit_this_time = 0
                os.system('git push')
                commit_num = 0
                sys.exit(0)
