import tkinter as tk
import pymysql


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

    browseDatabase = tk.Button(frame, text="Browse Entire Database", font="Cambria, 12", command=databaseBrowser)
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
    query = "UPDATE user_profile SET status = \'"+status+"\' WHERE username=\'"+username+"\'"
    cur.execute(query)

    query = "SELECT email, dob, status FROM user_profile WHERE user_profile.username=\'" + username + "\'"
    cur.execute(query)
    list = cur.fetchall()

    statusLabel = tk.Label(frame, text="Status: " + str(list[0]['status']), bg="#B0DAF1", fg="#2E5266",
                           font="Cambria, 14")
    statusLabel.place(relx=0.7, rely=0.6)

    statusEntry = tk.Entry(frame)
    statusEntry.place(relx=0.7, rely=0.65, relwidth=0.25)

def databaseBrowser():
    print("hi")
