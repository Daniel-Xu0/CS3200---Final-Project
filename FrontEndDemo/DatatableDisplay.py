import tkinter as tk


def UserInterface():
    window = tk.Tk()

    canvas = tk.Canvas(window, height=600, width=800, bg="#8D91C7")
    canvas.pack()

    frame = tk.Frame(window, bg="#B0DAF1")
    frame.place(relx=0.1, rely=0.1, relwidth=0.8, relheight=0.8)

    toWatchListLabel = tk.Label(frame, text="To Watch List", bg="#B0DAF1", fg="#2E5266", font="Cambria, 18")
    toWatchListLabel.place(relx=0.1, rely=0.1)

    watchedListLabel = tk.Label(frame, text="Watched List", bg="#B0DAF1", fg="#2E5266", font="Cambria, 18")
    watchedListLabel.place(relx=0.4, rely=0.1)

    toWatchList = tk.Listbox(frame, fg="#2E5266", bg="#CFFCFF", font="Cambria, 12")
    toWatchList.place(relx=0.1, rely=0.2,relheight=0.7,relwidth=0.25)

    watchedList = tk.Listbox(frame, fg="#2E5266", bg="#CFFCFF", font="Cambria, 12")
    watchedList.place(relx=0.4, rely=0.2, relheight=0.7, relwidth=0.25)


