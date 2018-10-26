import numpy as np
from sklearn.feature_extraction import DictVectorizer
from sklearn.model_selection import train_test_split
from fastFM import sgd

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
            (user, movieid, rating, ts) = line.split('\t')
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
n_iter = 170
step_size = 1

# sgd 모델
fm = sgd.FMRegression(n_iter=n_iter, init_stdev=0.1, random_state=333, l2_reg_w=0.1, l2_reg_V=0.5, step_size=step_size)
fm.fit(X_train, y_train)

y_pred = fm.predict(X_test)
test = list(y_pred)
