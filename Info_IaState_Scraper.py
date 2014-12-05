__author__ = 'John'
import urllib.request
import urllib.parse
import re

"""
    For the most part these functions should only be used by the
    MIS_Database_Functions file. If the object has empty values it will
    be necessary for the consumer function/class to retrieve the data from
    the end user (e.g. type in their name/major). This is especially true for users
    who suppress their information in the info database. The current plan
    is to simply use entry fields for manual entry.
"""

def get_raw_html(net_id):
    """
    Retrieves the unformatted HTML for the given net id from the Iowa State directory

    :param net_id: the net id whose information is to be retrieved
    :return: the raw HTML from the search request
    """
    general_url = 'http://info.iastate.edu/individuals/search/'
    general_url += net_id
    req = urllib.request.Request(general_url)
    resp = urllib.request.urlopen(req)
    data = resp.read()
    return data


def parse_student_data(raw_html):
    """
    Takes raw HTML from the Iowa State info database request and parses out the
    classification, name and major using regular expressions.

    Returns the data in a dictionary object.
    :param raw_html: The raw markup retrieved from the HTTP request
    :return: A dictionary object with keys 'name', 'major', 'classification''
    """
    name = re.findall(r'<h1>.*?</h1>', str(raw_html))
    name = ''.join(name)
    name = name.replace('<h1>', '')
    name = name.replace('</h1>', '')
    name = name.strip()
    ##if name == '':
    ##    raise Exception("Empty name field")

    major = re.findall(r'Classification:</span>.*?</div>', str(raw_html))
    major = ''.join(major)
    major = major.replace('Classification:</span>', '')
    major = major.replace('</div>', '')
    major = major.strip()
    ##if major == '':
    ##    raise Exception("Empty major field")

    classification = re.findall(r'Major:</span>.*?</div>', str(raw_html))
    classification = ''.join(classification)
    classification = classification.replace('Major:</span>', '')
    classification = classification.replace('</div>', '')
    classification = classification.strip()
    ##if classification == '':
    ##    raise Exception("Empty classification field")

    return {'name': name,
            'classification': classification,
            'major': major}
