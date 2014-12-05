__author__ = 'John'
from tkinter import *
import MIS_Database_Functions


class CreateEvent:
    date_to_create = StringVar
    topic_to_create = StringVar
    company_to_create = StringVar

    def __init__(self, master):
        event_frame = Frame(master, relief=RAISED, borderwidth=10)
        event_frame.pack()

        self.main_label = Label(event_frame, text="CREATE EVENT")
        self.main_label.pack()

        self.create_event_company_label = Label(event_frame, text="Company:")
        self.create_event_company_label.pack()

        self.create_event_company = Entry(event_frame, bd=5, textvariable=self.company_to_create)
        self.create_event_company.pack()

        self.create_event_topic_label = Label(event_frame, text="Topic:",)
        self.create_event_topic_label.pack()

        self.create_event_topic = Entry(event_frame, bd=5, textvariable=self.topic_to_create)
        self.create_event_topic.pack()

        self.crate_event_date_label = Label(event_frame, text="Date:")
        self.crate_event_date_label.pack()

        self.create_event_date = Entry(event_frame, bd=5, textvariable=self.date_to_create)
        self.create_event_date.pack()

        self.submit = Button(event_frame, text="Submit", fg="blue", command=self.create_event)
        self.submit.pack()

        self.quit = Button(event_frame, text="Quit", fg="red", command=event_frame.pack_forget)
        self.quit.pack()

    def create_event(self):
        company_to_create = self.create_event_company.get()
        topic_to_create = self.create_event_topic.get()
        date_to_create = self.create_event_date.get()
        try:
            MIS_Database_Functions.create_event(company_to_create, topic_to_create, date_to_create)
        except IOError as e:   # Temporary solution
            print(str(e))
        except Exception as e:
            print(str(e))
        finally:
            self.create_event_company.delete(0, len(company_to_create))
            self.create_event_topic.delete(0, len(topic_to_create))
            self.create_event_date.delete(0, len(date_to_create))


def run_create_event(event_master_frame):
    create_event_root = Frame(event_master_frame)
    create_event_root.pack()
    CreateEvent(create_event_root)
