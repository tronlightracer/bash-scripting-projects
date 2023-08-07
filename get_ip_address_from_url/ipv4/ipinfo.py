from pprint import pprint
from argparse import ArgumentParser
# add functionality to insert the request into a column in a sqlite table

# dictionary = {'city': 'Chicago', 'country': 'US', 'hostname': 'lga15s46-in-f14.1e100.net', 'ip': '172.217.4.46', 'loc': '41.8500,-87.6500', 'org': 'AS15169 Google LLC', 'postal': '60666', 'readme': 'https://ipinfo.io/missingauth', 'region': 'Illinois', 'timezone': 'America/Chicago'}

# add these columns
# country, state, city, hostname, ip_addr, location, organization, zip_code, timezone
# state should be equal to region in the dictionary
import sqlite3

import requests
from requests.models import Response

parser = ArgumentParser()
parser.add_argument("--ip")
args = parser.parse_args()
ip_addr = args.ip

token = "token"

def response_maker(ip_address: str) -> Response:
    new_url = f"https://ipinfo.io/{ip_address}"
    print()
    pprint(requests.get(url=new_url, headers={"token": token}).json())

print(response_maker(ip_addr))

