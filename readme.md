RUBY VERSION: 2.1.0

ERDs:
https://www.lucidchart.com/documents/edit/4696f2b4-5334-4c05-874d-03fd0a00da8d

Pivotal Tracker: 
https://www.pivotaltracker.com/n/projects/1046976

Features:

LOGIN:
* If invalid/incomplete information is entered, error message is displayed.
* When logged in you are brought to your own profile page
* If you are logged in the ability to view your account directly from the nav bar is enabled. 
* If you are logged in the ability to begin the game directly from the nav bar is enabled
* If you are logged in when you go to your profile it will show you the percentage of each character’s story that you have played and the option to resume the game directly from there.

LOGOUT:
* ability to logout once logged in

CREATE NEW USER:
* If invalid/incomplete information is entered, “Please fix the following errors” is displayed at the top of the form as well as an individual error message next to each invalid field.

SCOREBOARD:
* Viewable by anyone (to increase interest in site by being able to see a scoreboard of all the current users and incentive to reach the top of that scoreboard!)
* If logged in you have the option to click on each user and see their profile.
* If not logged in you are redirected to the login path and an error message is displayed saying that you must login to see that information.

NEWS FEED/HOME:
* Displays user’s “friends” most recent comment, most recent game played, and most recent character. Option to click and be redirected to “friend’s” profile.

PROFILE:
* shows account age based on days since user was created
* shows current user score based on games played
* shows characters user has played as
* shows games user has played (badges)
* has a comment section where any unblocked user may comment
  * individual comment shows author, content, and how many days ago it was posted (including attention to pluralization so “0 days” but “1 day”.
* ability to follow and unfollow other users (confirmation message displayed)
  * if you are following a user, their information will show up in your newsfeed
* ability to block and unblock other users (confirmation message displayed)
  * if you have blocked a user they lose the ability to follow you
* ability to edit or delete your account.
  * if you try to edit or delete an account which is not yours, you are redirected to the user index and an error message is displayed (left these buttons on each page because in the future will make it so that admins may delete any user)


GAME PLAY:
* Mastermind
* Tic-Tac-Toe in the works


