import requests
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

    with open(fin, 'r', newline='', encoding='latin-1') as filereader:
        for row in filereader:
            row = row.strip()
            row_list = row.split(',')
            info_li.append(row_list[1:])

    return(info_li[1:])

fin_movie = 'links.csv'
movie_info_li = read_data(fin_movie)

result_lines = []
movie_plot_li = []

for movie_info in movie_info_li:
    movie_url = "https://api.themoviedb.org/3/movie/" + movie_info[1] +"?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=en-US"
    if movie_url == '':
        print(movie_info)
        movie_plot_li.append('')
    else:
        response = requests.get(movie_url)

        try:
            movie_plot = json.loads(response.text)['overview']
        except KeyError:
            print('incomplete json: %s' %(movie_info[0]))
            movie_plot = ''
        result_lines.append([movie_info[0], movie_info[1], movie_plot])
        movie_plot_li.append(movie_plot)
vectorizer2 = TfidfVectorizer(min_df=1, tokenizer=LemmaTokenizer(), stop_words='english')
X = vectorizer2.fit_transform(movie_plot_li)

# 데이터 저장
with open('movies3.csv', 'w', encoding='utf-8') as outfile:
    wr = csv.writer(outfile)
    for i in result_lines:
        wr.writerow(i)

# 코사인 유사도
# movie_sim = cosine_similarity(X)

# def similar_recommend_by_movie_id(movielens_id):
#     movie_index = movielens_id - 1
#
#     similar_movies = sorted(list(enumerate(movie_sim[movie_index])),
#     key=lambda x: x[1], reverse=True)
#     recommended = 1
#     print("---recommendation for movie %d---" %(movielens_id))
#
#     for movie_info in similar_movies[1:6]:
#         movie_title=movie_info_li[movie_info[0]]
#         jsonResult.append(movie_title[1])
#         print('rank %d recommendation:%s' %(recommended, movie_title[1]))
#         recommended += 1

# 비슷한것 찾기 json 파일 생성
# i = 1
# for movie_info in movie_info_li:
#     jsonResult = []
#     similar_recommend_by_movie_id(i)
#
#     with open('output/%s_%s_%s_movie.json' % (i, movie_info[0], movie_info[1]), 'w', encoding='utf-8') as outfile:
#         retJson = json.dumps(jsonResult, indent=4, sort_keys=True, ensure_ascii=False)
#         outfile.write(retJson)
#     print("%s_json save"%movie_info[1])
#     i += 1