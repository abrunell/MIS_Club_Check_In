__author__ = 'John'
import Create_Event_GUI
import Create_Member_GUI
import Checkin_To_Event
import MIS_Database_Functions
from tkinter import *


class MainGUI:

    #TODO find a way to handle entry failure due to foreign key failure
    def __init__(self, master):
        label_frame = Frame(master, relief=RAISED, borderwidth=10, width=900)
        label_frame.pack_propagate(0)
        label_frame.pack()

        first_frame = Frame(master, relief=RAISED, borderwidth=10, width=300)
        first_frame.pack_propagate(0)
        first_frame.pack(side=LEFT, fill=BOTH)

        second_frame = Frame(master, relief=RAISED, borderwidth=10, width=400)
        second_frame.pack_propagate(0)
        second_frame.pack(side=LEFT, fill=BOTH)

        self.main_label = Label(master=label_frame, text="MIS Club Check In System")
        self.main_label.pack()

        self.Create_Event_Button = Button(master=first_frame, text="Create Event",
                                          command=lambda: Create_Event_GUI.run_create_event(first_frame))
        self.Create_Event_Button.pack()

        self.Create_Member_Button = Button(master=second_frame, text="Checkin",
                                           command=lambda: Create_Member_GUI.run_check_in_member(second_frame))
        self.Create_Member_Button.pack()


root = Tk()
root.geometry("800x685")
application = MainGUI(root)
root.mainloop()
