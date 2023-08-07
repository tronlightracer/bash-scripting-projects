#! /home/trev/Documents/bash_scripting/get_ip_address_from_url/venv/bin/python3

from pprint import pprint

from requests import get
from bs4 import BeautifulSoup as bs5

url = "https://www.semrush.com/blog/most-visited-websites/"

got = get(url=url)

soup = bs5(got.content, 'html.parser')
#pprint(soup.text)

websites = soup.find_all('span', class_ ='___SText_jyp83_gg_')

website_list = [i.get_text() for i in websites if "." in i.get_text()]
print(website_list)