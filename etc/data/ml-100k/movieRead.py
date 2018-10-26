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
    print(info_li)
    print('rows in %s: %d' %(fin, len(info_li)))

    return(info_li)

fin_user = 'u.user'
fin_movie = 'u.item'
user_info_li = read_data(fin_user, '|')
movie_info_li = read_data(fin_movie, '|')
