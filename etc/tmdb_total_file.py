import json
import csv

from sklearn.feature_extraction.text import TfidfVectorizer
from nltk.tokenize import RegexpTokenizer
from nltk.stem import WordNetLemmatizer
from sklearn.metrics.pairwise import cosine_similarity

class LemmaTokenizer(object):
    def __init__(self):
        self.tokenizer = RegexpTokenizer('(?u)\w\w+')
        self.wnl = WordNetLemmatizer()
    def __call__(self, doc):
        return([self.wnl.lemmatize(t) for t in self.tokenizer.tokenize(doc)])

def read_data(fin):
    info_li = []

    with open(fin, 'r', newline='', encoding='utf-8') as filereader:
        info_li = list(csv.reader(filereader))

    return info_li

# 파일 입력
fin_movie = 'movies3.csv'
movie_info_li = read_data(fin_movie)

result_lines = []
movie_plot_li = []

for movie_info in movie_info_li:
    if movie_info != []:
        try:
            movie_plot = movie_info[2]
        except KeyError:
            print('incomplete json: %s' %(movie_info[0]))
        result_lines.append([movie_info[0], movie_info[1], movie_plot])
        movie_plot_li.append(movie_plot)
vectorizer2 = TfidfVectorizer(min_df=1, tokenizer=LemmaTokenizer(), stop_words='english')
X = vectorizer2.fit_transform(movie_plot_li)

# 코사인 유사도
movie_sim = cosine_similarity(X)

def similar_recommend_by_movie_id(movielens_id, m_id):
    movie_index = movielens_id - 1

    similar_movies = sorted(list(enumerate(movie_sim[movie_index])),
    key=lambda x: x[1], reverse=True)
    recommended = 1
    for movie_info in similar_movies[1:6]:
        movie_title=movie_info_li[movie_info[0]]
        jsonResult.append({"m_id": m_id, "similar_id":movie_title[1]})
        recommended += 1

# 비슷한것 찾기 json 파일 생성
i = 1
jsonResult = []
for movie_info in movie_info_li:
    if movie_info != []:
        similar_recommend_by_movie_id(i, movie_info[1])
        print("%s_json save"%movie_info[1])
        i += 1
with open('output3/%s_movie.json' % (i), 'w', encoding='utf-8') as outfile:
    retJson = json.dumps(jsonResult, indent=4, sort_keys=True, ensure_ascii=False)
    outfile.write(retJson)