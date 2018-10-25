import numpy as np
from sklearn.feature_extraction import DictVectorizer
from sklearn.model_selection import train_test_split
# 윈도우 계열에서는 사용할 수 없음
from fastFM import mcmc

# ,으로 나눈 데이터
def load_data(filename, path="./"):
    data = []
    y = []
    with open(path + filename) as f:
        for line in f:
            (user, movieid, rating, ts) = line.split(',')
            data.append({"user_id": str(user), "movie_id": str(movieid)})
            y.append(float(rating))

    return (data, np.array(y))

# ,으로 나눈 데이터 / pred
def load_data_pred(filename, path="./"):
    data = []
    y = []
    with open(path + filename) as f:
        for line in f:
            (user, movieid) = line.split(',')
            data.append({"user_id": str(user), "movie_id": str(movieid)})

    return data

## 데이터 접근 부분 시작
# 모든 유저 별점 데이터 / DB에서 csv파일로 받음
# dev_data: (movieId, userId), y_dev:(rating)
(dev_data, y_dev) = load_data("ratings.csv")
# 별점 매긴 데이터를 제외한 예상 별점을 매길 유저 데이터 (movieId, userId) /
# test_data: (movieId, userId), y_test:(rating)
test_data = load_data_pred("ua.test")
## DB에서 접근 부분 끝

v = DictVectorizer()
X_dev = v.fit_transform(dev_data)
X_test = v.transform(test_data)
# 훈련 데이터 , 검증데이터, 훈련데이터의 실제 평점, 검증 데이터의 실제 평점
X_train, X_dev_test, y_train, y_dev_test = train_test_split(X_dev, y_dev, test_size=0.1, random_state=42)

#fastFM에서 사용할 파라미터 초기화
n_iter = 300
seed = 333
rank = 32

# 데이터와 비교
fm = mcmc.FMRegression(n_iter=n_iter, rank=rank, random_state=seed)
y_pred = fm.fit_predict(X_train, y_train, X_test)

