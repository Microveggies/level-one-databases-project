import mysql.connector

mydb = mysql.connector.connect(
    host = "acaughey05.webhosting1.eeecs.qub.ac.uk",
    port=3306,
    database="acaughey05",
    user="acaughey05",
    password="XSwGQVNZTCv9NVKd"
)

mycursor = mydb.cursor()

def menu():
    choice1 = int(input("1. display a view\n2. insert a new application\n"))
    if choice1 == 1:
        choice2 = int(input("1. candidate applications\n2. jobs this month\n3. active applicants\n4.job summaries\n"))
        if choice2 == 1:
            mycursor.execute("SELECT * FROM project_2024_CandidateApplications")
            myresult = mycursor.fetchall()

            for x in myresult:
                print(x)
        elif choice2 == 2:
            mycursor.execute("SELECT * FROM project_2024_JobApplicationsThisMonth")
            myresult = mycursor.fetchall()

            for x in myresult:
                print(x)
        elif choice2 == 3:
            mycursor.execute("SELECT * FROM project_2024_ActiveCandidates")
            myresult = mycursor.fetchall()

            for x in myresult:
                print(x)
        elif choice2 == 4:
            mycursor.execute("SELECT * FROM project_2024_JobApplicationSummary")
            myresult = mycursor.fetchall()

            for x in myresult:
                print(x)
    elif choice1 == 2:
        fname = input("enter first name: ")
        sname = input("enter surname: ")
        mycursor.execute("SELECT CandidateID FROM project_2024_Candidates WHERE FirstName =%s AND LastName = %s",(fname,sname))
        applicant = mycursor.fetchall()
        print(applicant)
        job = input("enter job title: ")
        mycursor.execute(f"SELECT JobID FROM project_2024_Jobs WHERE Title = %s",(job,))
        position = mycursor.fetchall()
        date = input("enter current date(yyyy-mm-dd): ")
        mycursor.execute("INSERT INTO project_2024_Applications(CandidateID,JobID,DateApplied,app_status) VALUES(%s,%s,%s,%s)",(applicant[0][0],position[0][0],date,1))
        mydb.commit()
menu()