import tkinter as tk
import pymysql

import DatatableDisplay


def Login():
    username = usernameEntry.get()
    password = pwEntry.get()
    if (username == "" and password == ""):
        displayErrorMessage("username and password cannot be empty")
        return
    else:
        DatatableDisplay.UserInterface()
    #check for username and password match


def Register():
    username = usernameEntry.get()
    password = pwEntry.get()
    displayErrorMessage("something random for testing purposes")
    #check if username exists

def displayErrorMessage(text):
    msg = tk.Label(frame, text=text,bg="#B0DAF1", fg="#FF0000", font="Cambria, 10")
    msg.place(relx=0.25, rely=0.75)

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