import numpy as np
from sklearn.feature_extraction import DictVectorizer
from sklearn.model_selection import train_test_split
import gc
import csv
# 윈도우 계열에서는 사용할 수 없음 (windows10인 경우 wsl 사용할 것)
from fastFM import mcmc,sgd


tmdb = []
# ,으로 나눈 데이터
def load_data(filename, path="./"):
    data = []
    y = []
    with open(path + filename) as f:
        header = next(f)
        for line in f:
            (user, movieid, rating, ts) = line.split(',')
            data.append({"user_id": str(user), "movie_id": str(movieid)})
            y.append(float(rating))

    return (data, np.array(y))

# ,으로 나눈 데이터 / pred
def load_data_pred(filename, path="./"):
    data = []
    with open(path + filename) as f:
        for line in f:
            (userid, movieid, tmdbid) = line.split(',')
            data.append({"user_id": str(userid), "movie_id": str(movieid)})
            tmdb.append(tmdbid[:-1])
    return data
## 데이터 접근 부분 시작
# 모든 유저 별점 데이터 / DB에서 csv파일로 받음
# dev_data: (movieId, userId), y_dev:(rating)
print("훈련데이터")
(dev_data, y_dev) = load_data("ratings.csv")
# 별점 매긴 데이터를 제외한 예상 별점을 매길 유저 데이터 (movieId, userId) /
# test_data: (movieId, userId), y_test:(rating)
print("테스트데이터")
test_data = load_data_pred("pred.csv")
## DB에서 접근 부분 끝

print("문자데이터 변환")
v = DictVectorizer()
X_dev = v.fit_transform(dev_data)
X_test = v.transform(test_data)
del [[dev_data]]
gc.collect()
# 훈련 데이터 , 검증데이터, 훈련데이터의 실제 평점, 검증 데이터의 실제 평점
X_train, X_dev_test, y_train, y_dev_test = train_test_split(X_dev, y_dev, test_size=0.1, random_state=42)

print("fastFM")
#fastFM에서 사용할 파라미터 초기화
n_iter = 100
seed = 333
rank = 32

# 데이터와 비교
fm = mcmc.FMRegression(n_iter=n_iter, rank=rank, random_state=seed)
y_pred = fm.fit_predict(X_train, y_train, X_test)

print("csv 파일 저장")
data = list(y_pred)
test = []
for i in range(len(data)):
    test.append([test_data[i]['user_id'],str(tmdb[i]), data[i]])

with open('pred_t.csv', 'w') as outfile:
    wr = csv.writer(outfile, delimiter=',', lineterminator='\n')
    for i in test:
        wr.writerow(i)