MIS_Club_Check_In
=================

This is a check-in system designed for use by the ISU MIS Club. This system allows members to enter their net-ID before our weekly meetings so that we can track attendance, and track whether or not dues have been paid. 

Once the system is running, members will type their ISU net-ID into a gui. Using their net-ID, we then scrape info.iastate.edu to gather some information such as the member's name, major, and classification. Member check-ins are stored in an SQLite3 database. We can use this data to track attendance, and track whether or not dues have been paid. 

Main_GUI.py is the program that is run to actually use the system. 
