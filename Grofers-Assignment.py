import pandas as pd
import psycopg2
import datetime as dt

#postgre connection variables
conn = psycopg2.connect(host="localhost",database="postgres",user="postgres",password="password")
cur = conn.cursor()

#global variables
d = dt.datetime.now()
d1 = dt.timedelta(days=6)
d2 = d-d1

#main function
#The code stops when 'Exit' is chosen as the option
def main():
    f = 0
    while(f!=1):
        print("Weclome to Arcade!")
        print("What would you like to do today?")
        print("1. Buy Tickets")
        print("2. Display List of Upcoming Events and Prizes")
        print("3. Participate in Event")
        print("4. List all the Previous Winners in the Last Week")
        print("5. Find out winner of Today's Event")
        print("6. Exit")
        print("")
        option = input('Please Enter your Option: ')
        if option == '1':
            get_tickets()
        elif option == '2':
            display_event()
        elif option == '3':
            participate_event()
        elif option == '4':
            previous_winners()
        elif option == '5':
            calculate_winner()
        elif option == '6':
            f = 1
        else:
            print("Please enter a valid option!")
    
    print("Thanks for Playing!")

#Function to buy tickets(Option no. 1)
def get_tickets():
    tickets = []
    cur.execute('Select max(user_id) from get_tickets')
    userid = cur.fetchone()
    userid = userid[0]
    if userid == None:
        userid=1
    else:
        userid = int(userid)+1
    tickets.append(userid)
    print("")
    print("Buying Tickets")
    name = input('Enter your Name: ')
    tickets.append(name)
    phoneno = input('Enter your phoneno: ')
    tickets.append(phoneno)
    cur.execute("Insert into get_tickets values(%s,%s,%s)",tuple(tickets))
    print("")
    print("Here's your unique Ticket no. through which you can participate!",userid)
    print("")
    conn.commit()

#Function to display upcoming event(Option no. 2)
def display_event():
    print("")
    print("Here are the upcoming events you can participate in: ")
    query = "Select * from upcoming_events where event_date > TO_DATE('%s','YYYY-MM-DD') order by event_date"%(str(d)[:10])
    x = pd.read_sql(query,conn)
    print(x.to_string(index=False))

#Function to participate in event(Option no. 3)
def participate_event():
    participate = []
    uniqueno = input('Enter your unique Ticket no. :')
    participate.append(uniqueno)
    name = input("Enter your Name: ")
    participate.append(name)
    event_id = input('Enter the Event ID you wanna participate: ')
    participate.append(event_id)
    event_date = input('Enter the Event Date you wanna participate: ')
    participate.append(event_date)
    cur.execute("Select count(*) from participants where user_name = '"+str(name)+"' and event_id = '"+str(event_id)+"' and event_date = TO_DATE('%s','DD-MM-YYYY')"%(str(event_date)))
    count = cur.fetchone()
    count = count[0]
    print(count)
    if count == 0:
        cur.execute("Insert into participants values(%s,%s,%s,%s)",tuple(participate))
        print("")
        print("You are participating in the event"+ str(event_id) +" on date:"+str(event_date))
        print("")
        conn.commit()
    else:
        print("")
        print("Participant already present for the following event")
        print("")

#Function to display previous winner(Option no. 4)
def previous_winners():
    print("")
    print("Here are the last week winners: ")
    query = "Select * from winner where event_date between TO_DATE('%s','YYYY-MM-DD') and TO_DATE('%s','YYYY-MM-DD')order by event_date"%(str(d2)[:10],str(d)[:10])
    print(query)
    x = pd.read_sql(query,conn)
    print(x.to_string(index=False))

#Function to calculate winner(Option no. 5)
def calculate_winner():
    winner = []
    print("")
    print("The Winner of today's event is :")
    print("")
    query3 = "Select count(*) from winner where event_date = TO_DATE('%s','YYYY-MM-DD')"%(str(d)[:10])
    cur.execute(query3)
    winn = cur.fetchone()
    winn = winn[0]
    if winn == 0:
        query = "Select ticketno,event_id,user_name as name from participants where event_date = TO_DATE('%s','YYYY-MM-DD')"%(str(d)[:10])
        query2 = "Select prize from upcoming_events where event_date = TO_DATE('%s','YYYY-MM-DD')"%(str(d)[:10])
        cur.execute(query2)
        prize = cur.fetchone()
        prize = prize[0]
        x = pd.read_sql(query,conn)
        x = x.sample()
        winner.append(str(d)[:10])
        winner.append(x['event_id'][0])
        winner.append(x['name'][0])
        winner.append(prize)
        cur.execute("Insert into winner values(%s,%s,%s,%s)",tuple(winner))
        print(str(x['name'][0])+" won "+prize+" in today's event")
        print("")
    else:
        query = "Select * from winner where event_date = TO_DATE('%s','YYYY-MM-DD')"%(str(d)[:10])
        result = pd.read_sql(query,conn)
        print(str(result['user_name'][0])+" won "+str(result['prize'][0])+" in today's event")
        print("")
        conn.commit()
        
#Calling Main Function    
if __name__ == '__main__':
    main()
