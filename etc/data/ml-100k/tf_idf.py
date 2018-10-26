import requests
import json

from sklearn.feature_extraction.text import TfidfVectorizer
import codecs

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
user_info_li = read_data(fin_user, '|')
movie_info_li = read_data(fin_movie, '|')

result_lines = []
movie_plot_li = []
movie_title_li = []

for movie_info in movie_info_li[:10]:
    movie_url = movie_info[3]

    if movie_url == '':
        print(movie_info)
        movie_title_li.append('')
        movie_plot_li.append('')
    else:
        response = requests.get(movie_url)

        imdb_id = response.url.split('/')[2]

        if imdb_id == 'www.imdb.com':
            print('no imdb id of: %s' %(movie_info[0]))

            movie_title = ''
            movie_plot = ''

        else:
            try:
                movie_response = requests.get(
                    'http://www.omdbapi.com/?apikey=d6fb898d&i=' + imdb_id + '&plot=full')
            except:
                print('wrong URL: %s' %(movie_info[0]))
                movie_title = ''
                movie_plot = ''
            try:
                movie_title = json.loads(movie_response.text)['Title']
                movie_plot = json.loads(movie_response.text)['Plot']
            except KeyError:
                print('incomplete json: %s' %(movie_info[0]))
                movie_title = ''
                movie_plot = ''
    result_lines.append("%s\t%s\n" %(movie_title, movie_plot))
    movie_plot_li.append(movie_plot)
    movie_title_li.append(movie_title)

vectorizer = TfidfVectorizer(min_df=3, stop_words='english')

X = vectorizer.fit_transform(movie_plot_li)

feature_names = vectorizer.get_feature_names()

print(feature_names)