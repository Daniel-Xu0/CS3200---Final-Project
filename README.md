# CS3200---Final-Project
MyAnimeList-Esque Database

Files in Repo:
* query_methods.py -
  * Query Class with different methods (queries)
  * Application will use these to retrieve information from database
 
* DataTableDisplay.py -
  * Front End application, uses Tinker to display myanimelist 2.0 local website

* Main.py -
  * Main driver, will initiate Tinker website

Software/Packages Requirements:
  Lanuages: 
  * Python 3
  * MySQL
  Packages Used:
  * pymysql
  * tkinter
  * DateEntry from tkcalendar
  * default dict from collections
 
Pip installs:
  * python3 -m pip install PyMySQL
  * pip install tkcalendar
  * tkinter should already be installed
  * collections should already be installed
 
 
Running the program: <br/>
** IMPORTANT: BEFORE EXECUTING THE PROGRAM, MAKE SURE TO CHANGE THE SQL CONNECTION LOGIN INFORMATION IN THE CODE FIRST (LINE 130 OF MAIN.PY) ** <br/>
When the program is executed, the user will be introduced to a login screen. At first, the user will not have an account, and therefore need to hit the register button. Hitting the register button will open a seperate Register window where the user can create an account through entering a unique username, password, a unique email, and their date of birth. <br/>
After the account has been registered, it will be stored in a SQL table within the database and now the user can have access to the program. Upon entering valid login information, the user will be taken to a seperate GUI where they can see animes on their watched and to-watch list (both of whcih are tables in our database), their email, date of birth, and current status (which they can update/modify using the GUI). <br/>
If the user were to browse the entire anime database, they can hit the "browse database" to view all of the animes in our database and filter/select animes based on name, rating, description, ranking, number of episodes, or studio. The animes will always to be sorted by its ratings. <br/>
Once the user has selected an anime, they can choose to either write a review (which can be viewed by other users as well), add it to their watched list, or add it to their to-watch list. <br/>
When a user gives a rating, the user must give the anime a score from 1-10 with 1 being the worst and 10 being the best, as well as leaving an optional text support for their scoring. The system will then automaticlly update the average rating of the anime as well as making according changes to its ranking. <br/>
Note that the data we gather did not provide us with the number of review that was used to compute the rating; therefore, we assigned an inital weight of 100 to all of our current ratings. 
