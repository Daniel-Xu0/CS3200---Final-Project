import pymysql
from collections import defaultdict


class Query:
    def __init__(self, db, username):
        self.db = db
        self.user = username

    def connect_to_db(self):
        try:
            cnx = pymysql.connect(host='localhost', user='root',
                              password='root1234',
                              db=self.db, charset='utf8mb4',
                              cursorclass=pymysql.cursors.DictCursor)

        except pymysql.err.OperationalError as e:
            print('Error: %d: %s' % (e.args[0], e.args[1]))

    def filter_by_genre(self, genres):
        """ Return all anime which are tagged with the corresponding genres """
        anime_dict = defaultdict(int)
        for anime_genre in genres:
            cursor = self.db.cursor()
            select = f"SELECT * FROM has_genre h INNER JOIN anime a " \
                     f"ON h.anime_id = a.anime_id WHERE genre='{anime_genre}'"
            cursor.execute(select)
            results = cursor.fetchall()
            for row in results:
                anime_dict[row['anime_name']] += 1
        cursor.close()

        valid_anime = [anime for anime, count in anime_dict.items() if count == len(genres)]
        return valid_anime

    def sort_by_rating(self):
        """ Return all anime, sorted by rating """
        cursor = self.db.cursor()
        select = "SELECT anime_name, ranking FROM anime"
        cursor.execute(select)
        results = cursor.fetchall()

        anime_by_rating = [row for row in results]
        cursor.close()
        return anime_by_rating

    def sort_by_popularity(self):
        """ Return all anime, sorted by ranking """
        cursor = self.db.cursor()
        select = "SELECT anime_name, rating FROM anime ORDER BY anime_id DESC"
        cursor.execute(select)
        results = cursor.fetchall()

        anime_by_pop = [row for row in results]
        cursor.close()
        return anime_by_pop

    def add_to_watched(self, anime_id):
        """ Insert an anime into the user's watched list """
        cursor = self.db.cursor()
        insert = f"INSERT INTO watched_list VALUES ('{self.user}', '{anime_id}')"
        cursor.execute(insert)

    def get_watched_list(self):
        """ Retrieve user's watched list """
        cursor = self.db.cursor()
        select = f"SELECT anime FROM watched_list WHERE username = '{self.user}'"
        cursor.execute(select)

        results = cursor.fetchall()
        watched_list = [row for row in results]
        return watched_list

    def add_to_watch_list(self, anime_id):
        """ Insert an anime into the user's to watch list """
        cursor = self.db.cursor()
        insert = f"INSERT INTO to_watch_list VALUES ('{self.user}', '{anime_id}')"
        cursor.execute(insert)

    def get_to_watch_list(self):
        """ Retrieve user's to watch list """
        cursor = self.db.cursor()
        select = f"SELECT anime FROM to_watch_list WHERE username = '{self.user}'"
        cursor.execute(select)

        results = cursor.fetchall()
        to_watch_list = [row for row in results]
        return to_watch_list

    def search_by_name(self, name):
        """ Search anime database by name """
        cursor = self.db.cursor()
        select = f"SELECT anime_name FROM anime WHERE anime_name LIKE '%'{name}'%'"
        cursor.execute(select)

        results = cursor.fetchall()
        animes = [row for row in results]
        return animes

    def search_by_studio(self, studio):
        """ Search anime database by studio """
        cursor = self.db.cursor()
        select = f"SELECT anime_name FROM anime WHERE anime_name LIKE '%'{studio}'%'"
        cursor.execute(select)

        results = cursor.fetchall()
        animes = [row for row in results]
        return animes

    def write_review(self, anime_id, rating, review):
        cursor = self.db.cursor()
        insert = f"INSERT INTO review VALUES ('{self.user}', '{anime_id}', '{rating}', '{review}')"
        cursor.execute(insert)


