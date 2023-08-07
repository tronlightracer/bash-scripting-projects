from pprint import pprint
from argparse import ArgumentParser

import requests
from requests.models import Response

parser = ArgumentParser()
parser.add_argument("--ip")
args = parser.parse_args()
ip_addr = args.ip

token = "token"

def response_maker(ip_address: str) -> Response:
    if ":" in ip_address or ip_address[-1] != ".":
        new_url = f"https://ipinfo.io/{ip_address}"
        pprint(requests.get(url=new_url, headers={"token": token}).json())
        print()
    else:
        print("The ipv6 address is not available\n")


print(response_maker(ip_addr))

