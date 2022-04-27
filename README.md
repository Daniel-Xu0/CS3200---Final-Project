# CS3200---Final-Project
MyAnimeList-Esque Database

Software/Packages Requirements:
  Lanuage: Python 3, MySQL
  Packages Used: pymysql, tkinter, DateEntry from tkcalendar (ADD MORE AS WE WORK ON IT)
Pip installs:
  python3 -m pip install PyMySQL
  pip install tkcalendar
  tkinter should already be installed
 
Running the program:
IMPORTANT: BEFORE EXECUTING THE PROGRAM, MAKE SURE TO CHANGE THE SQL CONNECTION LOGIN INFORMATION IN THE CODE FIRST (LINE 130 OF MAIN.PY)
When the program is executed, the user will be introduced to a login screen. At first, the user will not have an account, and therefore need to hit the register button. Hitting the register button will open a seperate Register window where the user can create an account through entering a unique username, password, a unique email, and their date of birth. 
After the account has been registered, it will be stored in a SQL table within the database and now the user can have access to the program. Upon entering valid login information, the user will be taken to a seperate GUI where they can see animes on their watched and to-watch list (both of whcih are tables in our database), their email, date of birth, and current status (which they can update/modify using the GUI). 
If the user were to browse the entire anime database, they can hit the "browse database" to view all of the animes in our database and filter/select/order animes based on name, rating, description, ranking, number of episodes, or studio. 
Once the user has selected an anime, they can choose to either write a review (which can be viewed by other users as well), add it to their watched list, or add it to their to-watch list. 
When a user gives a rating, the user must give the anime a score from 1-10 with 1 being the worst and 10 being the best, as well as leaving an optional text support for their scoring. The system will then automaticlly update the average rating of the anime as well as make according changes to its ranking. 
