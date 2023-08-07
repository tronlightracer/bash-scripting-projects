touch requirements.txt
# all includes packages like wheel and setuptools which regularly don't appear from freezing
python3 -m pip freeze --all > requirements.txt
