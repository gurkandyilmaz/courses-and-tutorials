# Name:
# Collaborators:
# Time:

import feedparser
import string
import time
import threading
from project_util import translate_html
from mtTkinter import *
from datetime import datetime
from pathlib import Path
import pytz

CWD = Path.cwd()
#======================
# Code for retrieving and parsing
# Google and Yahoo News feeds
# Do not change this code
#======================

def process(url):
    """
    Fetches news items from the rss url and parses them.
    Returns a list of NewsStory-s.
    """
    feed = feedparser.parse(url)
    entries = feed.entries
    ret = []
    for entry in entries:
        guid = entry.guid
        title = translate_html(entry.title)
        link = entry.link
        description = translate_html(entry.description)
        pubdate = translate_html(entry.published)

        try:
            pubdate = datetime.strptime(pubdate, "%a, %d %b %Y %H:%M:%S %Z")
            pubdate.replace(tzinfo=pytz.timezone("GMT"))
          #  pubdate = pubdate.astimezone(pytz.timezone('EST'))
          #  pubdate.replace(tzinfo=None)
        except ValueError:
            pubdate = datetime.strptime(pubdate, "%a, %d %b %Y %H:%M:%S %z")

        newsStory = NewsStory(guid, title, description, link, pubdate)
        ret.append(newsStory)
    return ret

#======================
# Data structure design
#======================

# Problem 1

class NewsStory():
    def __init__(self, guid: str, title: str, description: str, link: str, pubdate: datetime) -> None:
        self.guid = guid
        self.title = title
        self.description = description
        self.link = link
        self.pubdate = pubdate
    
    def get_guid(self):
        return self.guid

    def get_title(self):
        return self.title

    def get_description(self):
        return self.description

    def get_link(self):
        return self.link

    def get_pubdate(self):
        return self.pubdate.replace(tzinfo=pytz.timezone("EST"))
        
#======================
# Triggers
#======================

class Trigger(object):
    def evaluate(self, story: NewsStory):
        """
        Returns True if an alert should be generated
        for the given news item, or False otherwise.
        """
        # DO NOT CHANGE THIS!
        raise NotImplementedError

# PHRASE TRIGGERS
# Problem 2
class PhraseTrigger(Trigger):
    def __init__(self, phrase: str) -> None:
        super().__init__()
        self.phrase = phrase

    def is_phrase_in(self, text: str) -> bool:
        # process text, remove puncts and split it.
        tokens = text.lower().split()
        text_cleaned = " ".join([token.strip(string.punctuation) for token in tokens])
        for punc in string.punctuation:
            if punc in text_cleaned:
                tokens = text_cleaned.split(punc)
                text_cleaned = " ".join([token.strip(string.punctuation) for token in tokens])
                break

        phrase_tokens = self.phrase.lower().split()
        text_tokens = text_cleaned.split()
        match = False
        for idx in range(len(text_tokens)):
            if phrase_tokens == text_tokens[idx: idx+len(phrase_tokens)]:
                match = True
        
        return match

# Problem 3
class TitleTrigger(PhraseTrigger):
    def __init__(self, phrase: str) -> None:
        super().__init__(phrase)
    
    def evaluate(self, story: NewsStory):
        return self.is_phrase_in(story.get_title()) 


# Problem 4
class DescriptionTrigger(PhraseTrigger):
    def __init__(self, phrase: str) -> None:
        super().__init__(phrase)

    def evaluate(self, story: NewsStory):
        return self.is_phrase_in(story.get_description())

# TIME TRIGGERS
# Problem 5
class TimeTrigger(Trigger):
    def __init__(self, time_in_est: str) -> None:
        super().__init__()
        self.time = datetime.strptime(time_in_est, "%d %b %Y %H:%M:%S").replace(tzinfo=pytz.timezone("EST"))        

# Problem 6
class BeforeTrigger(TimeTrigger):
    def __init__(self, time_in_est: str) -> None:
        super().__init__(time_in_est)

    def evaluate(self, story):
        return story.get_pubdate() < self.time

class AfterTrigger(TimeTrigger):
    def __init__(self, time_in_est: str) -> None:
        super().__init__(time_in_est)
    
    def evaluate(self, story: NewsStory):
        return story.get_pubdate() > self.time

# COMPOSITE TRIGGERS
# Problem 7
class NotTrigger(Trigger):
    def __init__(self, trigger: Trigger) -> None:
        super().__init__()
        self.trigger = trigger

    def evaluate(self, story: NewsStory):
        return not self.trigger.evaluate(story)

# Problem 8
class AndTrigger(Trigger):
    def __init__(self, trigger_1: Trigger, trigger_2: Trigger) -> None:
        super().__init__()
        self.trigger_1 = trigger_1
        self.trigger_2 = trigger_2

    def evaluate(self, story: NewsStory):
        return self.trigger_1.evaluate(story) and self.trigger_2.evaluate(story)

# Problem 9
class OrTrigger(Trigger):
    def __init__(self, trigger_1: Trigger, trigger_2: Trigger) -> None:
        super().__init__()
        self.trigger_1 = trigger_1
        self.trigger_2 = trigger_2

    def evaluate(self, story: NewsStory):
        return self.trigger_1.evaluate(story) or self.trigger_2.evaluate(story)

#======================
# Filtering
#======================
# Problem 10
def filter_stories(stories: list, triggerlist: list):
    """
    Takes in a list of NewsStory instances.

    Returns: a list of only the stories for which a trigger in triggerlist fires.
    """
    stories_filtered = []
    for trigger in triggerlist:
        for story in stories:
            if trigger.evaluate(story):
                stories_filtered.append(story)
                continue
            else:
                pass
    return stories_filtered

#======================
# User-Specified Triggers
#======================
# Problem 11
def read_trigger_config(filename):
    """
    filename: the name of a trigger configuration file

    Returns: a list of trigger objects specified by the trigger configuration
        file.
    """
    # We give you the code to read in the file and eliminate blank lines and
    # comments. You don't need to know how it works for now!
    trigger_file = open(filename, 'r')
    lines = []
    for line in trigger_file:
        line = line.rstrip()
        if not (len(line) == 0 or line.startswith('//')):
            lines.append(line)
    
    # Parse the commands from triggers.txt, then add them to a trigger list.
    trigger_names = {}
    trigger_list = []
    for line in lines:
        items = line.split(",")
        if items[0] != "ADD":
            if items[1] == "TITLE":
                trigger = TitleTrigger(items[2])
            elif items[1] == "DESCRIPTION":
                trigger = DescriptionTrigger(items[2])
            elif items[1] == "AFTER":
                trigger = AfterTrigger(items[2])
            elif items[1] == "BEFORE":
                trigger = BeforeTrigger(items[2])
            elif items[1] == "NOT":
                trigger = NotTrigger(items[2])
            elif items[1] == "AND":
                trigger = AndTrigger(items[2], items[3])
            elif items[1] == "OR":
                trigger = OrTrigger(items[2], items[3])
            else:
                trigger = None
            trigger_names[items[0]] = trigger
        elif items[0] == "ADD":
            for trigger in items[1:]:
                trigger_list.append(trigger_names.get(trigger, None))
    return trigger_list

SLEEPTIME = 120 #seconds -- how often we poll

def main_thread(master):
    # A sample trigger list - you might need to change the phrases to correspond
    # to what is currently in the news
    try:
        
        triggerlist = read_trigger_config(CWD / '6001/ps5/triggers.txt')
        # HELPER CODE - you don't need to understand this!
        # Draws the popup window that displays the filtered stories
        # Retrieves and filters the stories from the RSS feeds
        frame = Frame(master)
        frame.pack(side=BOTTOM)
        scrollbar = Scrollbar(master)
        scrollbar.pack(side=RIGHT,fill=Y)

        t = "Google Top News"
        title = StringVar()
        title.set(t)
        ttl = Label(master, textvariable=title, font=("Helvetica", 18))
        ttl.pack(side=TOP)
        cont = Text(master, font=("Helvetica",14), yscrollcommand=scrollbar.set)
        cont.pack(side=BOTTOM)
        cont.tag_config("title", justify='center')
        button = Button(frame, text="Exit", command=root.destroy)
        button.pack(side=BOTTOM)
        guidShown = []
        def get_cont(newstory):
            if newstory.get_guid() not in guidShown:
                cont.insert(END, newstory.get_title()+"\n", "title")
                cont.insert(END, "\n---------------------------------------------------------------\n", "title")
                cont.insert(END, newstory.get_description())
                cont.insert(END, "\n*********************************************************************\n", "title")
                guidShown.append(newstory.get_guid())

        while True:

            print("Polling . . .", end=' ')
            # Get stories from Google's Top Stories RSS news feed
            stories = process("http://news.google.com/news?output=rss")

            # Get stories from Yahoo's Top Stories RSS news feed
            # NOTE Yahoo's XML file does not contain 'description' field so the program raises an error
            #stories.extend(process("http://news.yahoo.com/rss/topstories"))

            stories = filter_stories(stories, triggerlist)

            list(map(get_cont, stories))
            scrollbar.config(command=cont.yview)

            print("Sleeping...")
            time.sleep(SLEEPTIME)

    except Exception as e:
        print(e)

if __name__ == '__main__':
    root = Tk()
    root.title("Some RSS parser")
    t = threading.Thread(target=main_thread, args=(root,))
    t.start()
    root.mainloop()
