__author__ = 'John'
import sqlite3

con = sqlite3.connect("MIS.Checkin.sqlite3")
cur = con.cursor()
cur.execute("SELECT * FROM Old_Member")
all_data = cur.fetchall()
for entry in all_data:
    email = "'"+str(entry[3])+"'"
    do_not_use = email.split('@')
    net_id = do_not_use[0]+"'"
    name = "'"+str(entry[2])+", "+str(entry[1])+"'"
    classification = "'"+str(entry[8])+"'"
    major = "'"+str(entry[7])+"'"
    dues_paid = 0
    if "15" in str(entry[6]):
        dues_paid = 1
    elif "20" in str(entry[6]):
        dues_paid = 2
    sql_string = "INSERT INTO Member VALUES("+net_id+", "+email+", "+major+", "+classification+", "+name+", " + \
                 str(dues_paid)+")"
    try:
        cur.execute(sql_string)
    except sqlite3.IntegrityError as e:
        print(net_id+": failed to enter" + str(e))
con.commit()
