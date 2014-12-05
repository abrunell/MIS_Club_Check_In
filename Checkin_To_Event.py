__author__ = 'John'
from tkinter import *
import MIS_Database_Functions

"""
class CheckIn:
    netID_to_checkIn = StringVar
    eventID_to_checkIn = StringVar

    def __init__(self, master):
        frame = Frame(master, relief=RAISED, borderwidth=10)
        frame.pack()

        self.main_label = Label(frame, text="CHECK IN")
        self.main_label.pack()

        self.checkIn_netID_label = Label(frame, text="Net ID:")
        self.checkIn_netID_label.pack()

        self.checkIn_netID = Entry(frame, bd=5, textvariable=self.netID_to_checkIn)
        self.checkIn_netID.pack()

        self.checkIn_eventID_label = Label(frame, text="Event: ")
        self.checkIn_eventID_label.pack()

        self.checkIn_eventID = Entry(frame, bd=5, textvariable=self.eventID_to_checkIn)
        self.checkIn_eventID.pack()

        self.submit_button = Button(frame, text='Submit', fg='Blue', command=self.submit)
        self.submit_button.pack()

        self.quit_button = Button(frame, text='Quit', fg='Red', command=frame.pack_forget)
        self.quit_button.pack()

        self.success_label = Label()
        self.detailed_failure = Label()

    def submit(self):
        self.netID_to_checkIn = self.checkIn_netID.get()
        self.eventID_to_checkIn = self.checkIn_eventID.get()
        self.success_label.pack_forget()
        self.detailed_failure.pack_forget()
        try:
            MIS_Database_Functions.create_ticket(self.eventID_to_checkIn, self.netID_to_checkIn)
            self.success_label = Label(text='Success')
            self.success_label.pack()
        except Exception as e:
            detail_text = str(e)
            if "UNIQUE" in detail_text:
                detail_text = "Already Checked in. Welcome!"
            self.detailed_failure = Label(text=detail_text)
            self.detailed_failure.pack()


def run_check_in_to_event(check_in_master_frame):
    check_in_root = Frame(check_in_master_frame)
    check_in_root.pack()
    new_event = CheckIn(check_in_root)
    sql_string = 'SELECT company FROM event WHERE eventID=(SELECT MAX(eventID) FROM event)'
    connection = MIS_Database_Functions.get_connection()
    cursor = connection.cursor()
    cursor.execute(sql_string)
    company_name = cursor.fetchone()
    new_event.checkIn_eventID.insert(0, company_name[0])

"""
