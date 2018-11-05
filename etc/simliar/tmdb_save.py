import requests
import json
import csv

def read_data(fin):
    info_li = []

    with open(fin, 'r', newline='', encoding='utf-8') as filereader:
        info_li = list(csv.reader(filereader))

    return info_li

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

# 데이터 저장
with open('movies_plot.csv', 'w', encoding='utf-8') as outfile:
    wr = csv.writer(outfile)
    for i in result_lines:
        wr.writerow(i)
