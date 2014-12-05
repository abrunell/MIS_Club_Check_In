__author__ = 'John'
import MIS_Database_Functions
import Info_IaState_Scraper
import tkinter


class CreateMember:
    member_netID_to_create = tkinter.StringVar
    member_major_to_create = tkinter.StringVar
    member_classification_to_create = tkinter.StringVar
    member_name_to_create = tkinter.StringVar
    notification_text = tkinter.StringVar

    def __init__(self, master):

        self.trial = tkinter.IntVar(0, 0, 'trial')
        self.one_semester = tkinter.IntVar(0, 0, 'one_sem')
        self.two_semesters = tkinter.IntVar(0, 0, 'two_sem')
        member_frame = tkinter.Frame(master, relief=tkinter.RAISED, borderwidth=10)
        member_frame.pack()

        self.main_label = tkinter.Label(member_frame, text='MEMBER CHECK IN')
        self.main_label.pack()

        self.create_netID_label = tkinter.Label(member_frame, text="Net ID:")
        self.create_netID_label.pack()

        self.create_netID_entry = tkinter.Entry(member_frame, bd=5, textvariable=self.member_netID_to_create)
        self.create_netID_entry.pack()

        self.create_name_label = tkinter.Label(member_frame, text='Name: ')
        self.create_name_label.pack()

        self.create_name_entry = tkinter.Entry(member_frame, bd=5, textvariable=self.member_name_to_create)
        self.create_name_entry.pack()

        self.create_major_label = tkinter.Label(member_frame, text='Major: ')
        self.create_major_label.pack()

        self.create_major_entry = tkinter.Entry(member_frame, bd=5, textvariable=self.member_major_to_create)
        self.create_major_entry.pack()

        self.create_classification_label = tkinter.Label(member_frame, text='Classification: ')
        self.create_classification_label.pack()

        self.create_classification_entry = tkinter.Entry(member_frame, bd=3,
                                                         textvariable=self.member_classification_to_create)
        self.create_classification_entry.pack()

        self.trial_checkbox = tkinter.Checkbutton(member_frame, variable=self.trial, text='Trial: One free meeting',
                                                  onvalue=1, offvalue=0, activeforeground='yellow')
        self.trial_checkbox.pack()

        self.one_semester_checkbox = tkinter.Checkbutton(member_frame, variable=self.one_semester,
                                                         text='One Semester: $15.00', onvalue=1, offvalue=0,
                                                         activeforeground='yellow')
        self.one_semester_checkbox.pack()

        self.two_semesters_checkbox = tkinter.Checkbutton(member_frame, variable=self.two_semesters,
                                                          text='Two Semesters: $20.00', onvalue=1, offvalue=0,
                                                          activeforeground='yellow')
        self.two_semesters_checkbox.pack()

        self.get_data_button = tkinter.Button(member_frame, text='Get Data', fg='Green', command=self.get_data)
        self.get_data_button.pack()

        self.submit_button = tkinter.Button(member_frame, text='Submit', fg='Blue', command=self.check_in_member)
        self.submit_button.pack()

        self.quit_button = tkinter.Button(member_frame, text='Quit', fg='Red', command=member_frame.pack_forget)
        self.quit_button.pack()

        self.notification_text = "Welcome to the Check In System"
        self.notification = tkinter.Label(member_frame, text=self.notification_text)
        self.notification.pack()

    def check_in_member(self):
        self.member_netID_to_create = self.create_netID_entry.get()
        self.member_major_to_create = self.create_major_entry.get()
        self.member_classification_to_create = self.create_classification_entry.get()
        self.member_name_to_create = self.create_name_entry.get()
        if self.member_netID_to_create is None:
            return
        if self.trial == 0 and self.one_semester == 0 and self.two_semesters == 0:
            return
        select_sql_string = "SELECT * FROM Member WHERE netID='"+self.member_netID_to_create+"'"
        connection = MIS_Database_Functions.get_connection()
        cursor = connection.cursor()
        cursor.execute(select_sql_string)
        member_data = cursor.fetchone()
        cursor.execute("SELECT eventID FROM event WHERE eventID=(SELECT MAX(eventID) FROM event)")
        event_id = cursor.fetchone()
        if member_data is None:
            # Create the new member in the DB
            insert_sql_string = "INSERT INTO Member VALUES('"+str(self.member_netID_to_create)+"', '" + \
                                str(self.member_netID_to_create) + "@iastate.edu', '"\
                                + str(self.member_major_to_create) + \
                                "', '"+str(self.member_classification_to_create)+"', '"\
                                + str(self.member_name_to_create)+"', "
            if self.trial.get() == 1:
                insert_sql_string += "0)"
            elif self.one_semester.get() == 1:
                insert_sql_string += "1)"
            elif self.two_semesters.get() == 1:
                insert_sql_string += "2)"
            else:
                raise Exception("No Check box Marked")
            cursor.execute(insert_sql_string)

        create_ticket_sql_string = "INSERT INTO Ticket VALUES("+str(event_id[0])+", '" + \
                                   self.member_netID_to_create+"')"
        print(create_ticket_sql_string)
        try:
            cursor.execute(create_ticket_sql_string)
            self.notification['text'] = "Welcome to the Event "+self.member_name_to_create+"!"
        except IOError as e:
            self.notification['text'] = "Error "+str(e)
            print(str(e))
        except Exception as e:
            if "UNIQUE" in str(e):
                self.notification['text'] = "Seems you are already checked in. Welcome!"
            else:
                self.notification['text'] = "Error "+str(e)
            print(str(e))
        finally:
            connection.commit()
        self.notification.pack()
        self.create_major_entry.delete(0, len(self.member_major_to_create))
        self.create_classification_entry.delete(0, len(self.member_classification_to_create))
        self.create_name_entry.delete(0, len(self.member_name_to_create))
        self.create_netID_entry.delete(0, len(self.member_netID_to_create))
        self.trial_checkbox.deselect()
        self.one_semester_checkbox.deselect()
        self.two_semesters_checkbox.deselect()

    def get_data(self):
        self.member_netID_to_create = self.create_netID_entry.get()
        self.member_major_to_create = self.create_major_entry.get()
        self.member_classification_to_create = self.create_classification_entry.get()
        self.member_name_to_create = self.create_name_entry.get()
        select_sql_string = "SELECT * FROM Member WHERE netID='"+self.member_netID_to_create+"'"
        connection = MIS_Database_Functions.get_connection()
        cursor = connection.cursor()
        cursor.execute(select_sql_string)
        member_data = cursor.fetchone()
        if member_data is None:
            raw_html = Info_IaState_Scraper.get_raw_html(self.member_netID_to_create)
            parsed_data = Info_IaState_Scraper.parse_student_data(raw_html)
            self.create_classification_entry.insert(0, parsed_data['classification'])
            self.create_major_entry.insert(0, parsed_data['major'])
            if 'Individual Search Results' not in parsed_data['name']:
                self.create_name_entry.insert(0, parsed_data['name'])
            self.trial_checkbox.select()
        else:
            self.create_classification_entry.insert(0, member_data[3])
            self.create_major_entry.insert(0, member_data[2])
            self.create_name_entry.insert(0, member_data[4])
            if member_data[5] == 2:
                self.two_semesters_checkbox.select()
            elif member_data[5] == 1:
                self.one_semester_checkbox.select()
            else:
                for i in range(4):
                    self.trial_checkbox.flash()
                    self.one_semester_checkbox.flash()
                    self.two_semesters_checkbox.flash()


def run_check_in_member(member_master_frame):
    check_in_member_root = tkinter.Frame(member_master_frame)
    check_in_member_root.pack()
    CreateMember(check_in_member_root)
