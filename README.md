# CS3200---Final-Project
Anime Database

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
<p>  When the program is executed, the user will be introduced to a login screen. At first, the user will not have an account and will need to hit the register button to create one. Hitting the register button will open a seperate register window where the user can create an account by entering a unique username, password, a unique email, and their date of birth. <p/>
<p>  After the account has been registered, their credentials will be stored in a SQL table within our database and now have access to the program. Upon entering valid login information, the user will be taken to a seperate GUI where they can see animes on their watched and to-watch list (both of which are tables in our database), their email, date of birth, and current status (which they can update/modify using the GUI). <p/>
<p>  If the user were to browse the entire anime database, they can hit the "browse database" to view all of the animes in our database and filter/select animes based on name, rating, description, ranking, number of episodes, or studio. The animes are inherently sorted by their rating/ranking. <p/>
<p>  Once the user has selected an anime, they can choose to either write a review (which can be viewed by other users as well), add it to their watched list, or add it to their to-watch list. <p/>
<p> When a user gives a rating, the user must give the anime a score from 1-10 with 1 being the worst and 10 being the best, as well as leaving an optional text support for their scoring. The system will then automatically update the average rating of the anime as well as make respective changes to its ranking. <p/>
<p> Note that the data we gathered did not provide us with a number of reviews each anime's rating was calculated from; therefore, we assigned an inital weight of 100 to all of our current ratings. <p/>
