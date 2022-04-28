import tkinter as tk
import pymysql
import tkintertable as tTable
import Logic as l


def UserInterface(username, cnx):
    window = tk.Tk()

    cur = cnx.cursor()

    canvas = tk.Canvas(window, height=600, width=800, bg="#8D91C7")
    canvas.pack()

    frame = tk.Frame(window, bg="#B0DAF1")
    frame.place(relx=0.1, rely=0.1, relwidth=0.8, relheight=0.8)

    toWatchListLabel = tk.Label(frame, text="To Watch List", bg="#B0DAF1", fg="#2E5266", font="Cambria, 18")
    toWatchListLabel.place(relx=0.1, rely=0.1)

    watchedListLabel = tk.Label(frame, text="Watched List", bg="#B0DAF1", fg="#2E5266", font="Cambria, 18")
    watchedListLabel.place(relx=0.4, rely=0.1)

    toWatchList = tk.Listbox(frame, fg="#2E5266", bg="#CFFCFF", font="Cambria, 12")
    toWatchList.place(relx=0.1, rely=0.2, relheight=0.7, relwidth=0.25)

    watchedList = tk.Listbox(frame, fg="#2E5266", bg="#CFFCFF", font="Cambria, 12")
    watchedList.place(relx=0.4, rely=0.2, relheight=0.7, relwidth=0.25)

    cur.execute("SELECT anime_name FROM anime, to_watch_list WHERE to_watch_list.username = \'" + username +
                "\' AND to_watch_list.anime_id = anime.anime_id")
    list = cur.fetchall()
    for item in list:
        toWatchList.insert(0, item['anime_name'])

    cur.execute("SELECT anime_name FROM anime, watched_list WHERE watched_list.username = \'" + username +
                "\' AND watched_list.anime_id = anime.anime_id")
    list = cur.fetchall()
    for item in list:
        watchedList.insert(0, item['anime_name'])

    browseDatabase = tk.Button(frame, text="Browse Entire Database", font="Cambria, 12",
                               command=lambda: databaseBrowser(username, cur))
    browseDatabase.place(relx=0.683, rely=0.833)

    query = "SELECT email, dob, status FROM user_profile WHERE user_profile.username=\'" + username + "\'"
    cur.execute(query)
    list = cur.fetchall()

    emailLabel = tk.Label(frame, text="Email:", bg="#B0DAF1", fg="#2E5266", font="Cambria, 14")
    emailLabel.place(relx=0.78, rely=0.2)

    emailLabel2 = tk.Label(frame, text=list[0]['email'], bg="#B0DAF1", fg="#2E5266", font="Cambria, 10")
    emailLabel2.place(relx=0.72, rely=0.3)

    dobLabel = tk.Label(frame, text="Date of Birth:\n" + str(list[0]['dob']), bg="#B0DAF1", fg="#2E5266",
                        font="Cambria, 14")
    dobLabel.place(relx=0.75, rely=0.4)

    statusLabel = tk.Label(frame, text="Status: " + str(list[0]['status']), bg="#B0DAF1", fg="#2E5266",
                           font="Cambria, 14")
    statusLabel.place(relx=0.7, rely=0.6)

    statusEntry = tk.Entry(frame)
    statusEntry.place(relx=0.7, rely=0.65, relwidth=0.25)

    updateStatus = tk.Button(frame, text="Update Status", command=lambda: statusUpdater(statusEntry.get(),
                                                                                        username, cur, frame))
    updateStatus.place(relx=0.7, rely=0.7)

    window.mainloop()


def statusUpdater(status, username, cur, frame):
    query = "UPDATE user_profile SET status = \'" + status + "\' WHERE username=\'" + username + "\'"
    cur.execute(query)

    query = "SELECT email, dob, status FROM user_profile WHERE user_profile.username=\'" + username + "\'"
    cur.execute(query)
    list = cur.fetchall()

    statusLabel = tk.Label(frame, text="Status: " + str(list[0]['status']), bg="#B0DAF1", fg="#2E5266",
                           font="Cambria, 14")
    statusLabel.place(relx=0.7, rely=0.6)

    statusEntry = tk.Entry(frame)
    statusEntry.place(relx=0.7, rely=0.65, relwidth=0.25)


def databaseBrowser(username, cur):
    window = tk.Tk()

    canvas = tk.Canvas(window, height=700, width=1000, bg="#8D91C7")
    canvas.pack()

    tFrame = tk.Frame(window, bg="#B0DAF1")

    tFrame.place(relx=0.075, rely=0.1, relwidth=0.85, relheight=0.8)

    cur.execute('SELECT * FROM anime')
    lst = cur.fetchall()

    list = dict(zip(range(len(lst)), lst))

    tModel = tTable.TableModel()
    table = tTable.TableCanvas(tFrame, tModel, thefont="Cambria, 12", read_only=True, data=list)

    controller(username, cur, table)
    table.show()

    window.mainloop()


def controller(username, cur, table):
    window = tk.Tk()

    query = l.Query(cur, username)
    canvas = tk.Canvas(window, height=250, width=300, bg="#B0DAF1")
    canvas.pack()

    searchEntry = tk.Entry(canvas)
    searchEntry.place(relx=0.1, rely=0.15, relwidth=0.8)

    searchNameButton = tk.Button(canvas, text="search by name",
                                 command=lambda: query.search_by_name(searchEntry.get()))
    searchNameButton.place(relx=0.15, rely=0.25)

    searchSuidioButton = tk.Button(canvas, text="search by studio",
                                   command=lambda: query.search_by_studio(searchEntry.get()))
    searchSuidioButton.place(relx=0.55, rely=0.25)


    addEntry = tk.Entry(canvas)
    addEntry.place(relx=0.1, rely=0.35, relwidth=0.8)

    addtowatchlistButton = tk.Button(canvas, text="add to to-watch list",
                                 command=lambda: query.add_to_watch_list(addEntry.get()))
    addtowatchlistButton.place(relx=0.15, rely=0.45)

    addwatchedlistButton = tk.Button(canvas, text="add to watched list",
                                   command=lambda: query.add_to_watched(addEntry.get()))
    addwatchedlistButton.place(relx=0.55, rely=0.45)

