import requests
import json

response = requests.get('https://www.imdb.com/title/tt0114709/')

print('imdb url: %s' %(response.url))

imdb_id = response.url.split('/')[-2]

movie_plot_response = requests.get('http://www.omdbapi.com/?apikey=d6fb898d&i=' + imdb_id + '&plot=full')

print([x for x in movie_plot_response])

plot = json.loads(movie_plot_response.text)['Plot']

print(plot)
