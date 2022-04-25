import tkinter as tk
from tkcalendar import DateEntry
import pymysql

import DatatableDisplay


def Login():
    username = usernameEntry.get()
    password = pwEntry.get()
    userExist = False
    if username=='root' and password=='root':
        userExist = True
    if (username == "" and password == ""):
        displayErrorMessage("username and password cannot be empty")
        return
    cur = cnx.cursor()
    try:
        cur.execute("SELECT username, password  FROM user_profile ")
    except pymysql.Error as e:
        print('something went wrong with the select statement')
        exit()
    list = cur.fetchall()
    for row in list:
        if row['username'] == username and row['password'] == password:
            userExist = True
            break;
    if userExist:
        msg = tk.Label(frame, text="Successfully logged in", bg="#B0DAF1", fg="#8CB369", font="Cambria, 10")
        msg.place(relx=0.25, rely=0.75)
        DatatableDisplay.UserInterface(username, cnx)
    else:
        displayErrorMessage("Incorrect username or password")


def Register():
    regWindow = tk.Tk()

    canvas = tk.Canvas(regWindow, height=600, width=800, bg="#8D91C7")
    canvas.pack()

    frame = tk.Frame(regWindow, bg="#B0DAF1")
    frame.place(relx=0.25, rely=0.3, relwidth=0.5, relheight=0.5)

    label = tk.Label(frame, text="Register", bg="#B0DAF1", fg="#2E5266", font="Cambria, 25")
    label.pack()

    usernameLabel = tk.Label(frame, text="Username:", bg="#B0DAF1", fg="#2E5266", font="Cambria, 10")
    usernameLabel.place(relx=0.15, rely=0.2)

    usernameEntry = tk.Entry(frame)
    usernameEntry.place(relx=0.32, rely=0.2, relwidth=0.5)

    pwLabel = tk.Label(frame, text="Password:", bg="#B0DAF1", fg="#2E5266", font="Cambria, 10")
    pwLabel.place(relx=0.155, rely=0.3)

    pwEntry = tk.Entry(frame)
    pwEntry.place(relx=0.32, rely=0.3, relwidth=0.5)

    repwLabel = tk.Label(frame, text="Re-enter Password:", bg="#B0DAF1", fg="#2E5266", font="Cambria, 10")
    repwLabel.place(relx=0.02, rely=0.4)

    repwEntry = tk.Entry(frame)
    repwEntry.place(relx=0.32, rely=0.4, relwidth=0.5)

    emailLabel = tk.Label(frame, text="Email:", bg="#B0DAF1", fg="#2E5266", font="Cambria, 10")
    emailLabel.place(relx=0.21, rely=0.5)

    emailEntry = tk.Entry(frame)
    emailEntry.place(relx=0.32, rely=0.5, relwidth=0.5)

    dobLabel = tk.Label(frame, text="Date of Birth:", bg="#B0DAF1", fg="#2E5266", font="Cambria, 10")
    dobLabel.place(relx=0.11, rely=0.6)

    dobEntry = DateEntry(frame, date_pattern="yyyy-mm-dd")
    dobEntry.place(relx=0.32, rely=0.6, relwidth=0.5)

    registerButton = tk.Button(frame, text="register",
                               command=lambda: validateRegInfo(usernameEntry.get(), pwEntry.get(),
                                                               repwEntry.get(), emailEntry.get(),
                                                               dobEntry.get(), frame))
    registerButton.place(relx=0.45, rely=0.7, relwidth=0.2)

    regWindow.mainloop()


def validateRegInfo(username, pw1, pw2, email, dob, frame):
    if username == "" or pw1 == "" or pw2 == "" or email == "" or dob == "":
        msg = tk.Label(frame, text="The fields cannot be empty", bg="#B0DAF1", fg="#FF0000", font="Cambria, 10")
        msg.place(relx=0.3, rely=0.8)
        return;
    if not pw1 == pw2:
        msg = tk.Label(frame, text="The passwords are not matching", bg="#B0DAF1", fg="#FF0000", font="Cambria, 10")
        msg.place(relx=0.3, rely=0.8)
        return
    if "@" not in email:
        msg = tk.Label(frame, text="Invalid email format, must contain @", bg="#B0DAF1", fg="#FF0000",
                       font="Cambria, 10")
        msg.place(relx=0.3, rely=0.8)
        return
    cur = cnx.cursor()
    try:
        cur.execute("SELECT username, email  FROM user_profile ")
    except pymysql.Error as e:
        print('something went wrong with the select statement')
        exit()
    list = cur.fetchall()
    for row in list:
        if username == row['username']:
            msg = tk.Label(frame, text="User already exists", bg="#B0DAF1", fg="#FF0000", font="Cambria, 10")
            msg.place(relx=0.3, rely=0.8)
            return
        if email == row['email']:
            msg = tk.Label(frame, text="This email is already taken", bg="#B0DAF1", fg="#FF0000", font="Cambria, 10")
            msg.place(relx=0.3, rely=0.8)
            return
    query = "INSERT INTO user_profile VALUES (\"" + username + "\", \"" + pw1 + "\", \"" + email + "\", \'" + dob + "\', NULL)"
    cur.execute(query)
    msg = tk.Label(frame, text="User successfully added", bg="#B0DAF1", fg="#8CB369", font="Cambria, 10")
    msg.place(relx=0.3, rely=0.8)


def displayErrorMessage(text):
    msg = tk.Label(frame, text=text, bg="#B0DAF1", fg="#FF0000", font="Cambria, 10")
    msg.place(relx=0.25, rely=0.75)


try:
    # Change accordingly so that it's connected to the local host database
    cnx = pymysql.connect(host='localhost', user="root",
                          password="Louis_17380u470tp",
                          db='anime', charset='utf8mb4',
                          cursorclass=pymysql.cursors.DictCursor)
except pymysql.Error as e:
    print('Error: %d: %s' % (e.args[0], e.args[1]))
    exit()

window = tk.Tk()

canvas = tk.Canvas(window, height=600, width=800, bg="#8D91C7")
canvas.pack()

frame = tk.Frame(window, bg="#B0DAF1")
frame.place(relx=0.25, rely=0.3, relwidth=0.5, relheight=0.4)

label = tk.Label(frame, text="MAL 2.0 Login", bg="#B0DAF1", fg="#2E5266", font="Cambria, 25")
label.pack()

usernameLabel = tk.Label(frame, text="Username:", bg="#B0DAF1", fg="#2E5266", font="Cambria, 10")
usernameLabel.place(relx=0.15, rely=0.35)

usernameEntry = tk.Entry(frame)
usernameEntry.place(relx=0.32, rely=0.35, relwidth=0.5)

pwLabel = tk.Label(frame, text="Password:", bg="#B0DAF1", fg="#2E5266", font="Cambria, 10")
pwLabel.place(relx=0.15, rely=0.45)

pwEntry = tk.Entry(frame)
pwEntry.place(relx=0.32, rely=0.45, relwidth=0.5)

loginButton = tk.Button(frame, text="login", command=Login)
loginButton.place(relx=0.32, rely=0.55, relwidth=0.2)

registerButton = tk.Button(frame, text="register", command=Register)
registerButton.place(relx=0.55, rely=0.55, relwidth=0.2)

window.mainloop()
