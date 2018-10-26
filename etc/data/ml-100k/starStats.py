import numpy as np
import codecs
from scipy import stats

# 무비렌즈의 사용자와 영화 정보 데이터 읽어 들이기

def read_data(fin, delim):
    info_li = []

    for line in codecs.open(fin, "r", encoding="latin-1"):
        line_items = line.strip().split(delim)

        key = int(line_items[0])

        if(len(info_li) + 1) != key:
            print('error at data_id')
            exit(0)
        info_li.append(line_items[1:])

    print('rows in %s: %d' %(fin, len(info_li)))

    return(info_li)

fin_user = 'u.user'
fin_movie = 'u.item'
user_info_dic = read_data(fin_user, '|')
movie_info_dic = read_data(fin_movie, '|')

R = np.zeros(((len(user_info_dic)), len(movie_info_dic)), dtype=np.float64)

for line in codecs.open('u.data', 'r', encoding='latin-1'):
    user, movie, rating, date = line.strip().split('\t')

    user_index = int(user) - 1
    movie_index = int(movie) - 1

    R[user_index, movie_index] = float(rating)

print(R[0, 10])

user_mean_li = []
for i in range(0,R.shape[0]):
    user_rating = [x for x in R[i] if x>0.0]
    user_mean_li.append(stats.describe(user_rating).mean)

print(stats.describe(user_mean_li))