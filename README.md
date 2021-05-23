# Lucky-Draw-Gaming-Service
Implementing a Lucky Draw Gaming Service assignment given by Grofers

Coding Language used - Python 3.7
Database used - Postgresql

Prequistes:
1. Connect to localhost in your postgresql
2. Run all the commands present in the queries.sql
3. Install Python Library Pandas 1.2.0 - pip install pandas
4. Install Python Library Psycopg2 2.8.5 - pip install psycopg2

Code Flow:
1. Import the Following libraries - datetime,Pandas,Psycopg2
2. Connect to Postgresql with connection string as host="localhost",database="postgres",user="postgres",password="password"
3. Define Global variables for todays's date and 7 days earlier date
4. Define Main Function and In a loop run and list out all the options given in the assignment till f=1
5. Call respective function as per the choice
6. For choice 1:Buy Tickets call function gtickets()
7. In gtickets() we are getting the max user_id value from get_tickets table from postgresql, if its null we are storing user_id as 1, we then get the details from the user as name and phoneno. and the insert these values in get_tickets table and share user_id as unique ticket no. they can use to participate in event.
8. For choice 2:Display List of Upcoming Events and Prizes call function display_event()
9. In display_events(), we are getting all the events from upcoming_events table having date greater than today's date
10. For choice 3:Participate in Event call function participate_event()
11. In participate_event(), get the details from the user like ticket no., name, event_id and event_date they wanna participate in and then we check whether the details are already present in the table participants, if yes then display that it's already present otherwise we enter these values in participants table
12. For choice 4:List all the Previous Winners in the Last Week we call previous_winners()
13. In previous_winners(), we get the details and display from the winners table having date between today's date and date 7 day's earlier
14. For choice 5:Find out winner of Today's Event call calculate_winner()
15. In calculate_winner(), we first whether we have already found out today's winner but checking the no. of rows in winner table having event_date as today, if no then we get the details of user having event_date as today from participants table, and take a random user from the it to be crowned as winner, we the get the prize of today's event from upcoming_events having event_date as today, then we add this entry to winners table, If the record is present then we display it.
16. For choice 6:Exit we set the f value as 1, due to which the program exits
17. If user enters any other choice then we ask him to give a valid choice.



