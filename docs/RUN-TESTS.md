# Browser and API tests

## Install

The tests need certain packages, which are listed in the `requirements.txt` file.

From the terminal, run:
```
pip3 install -r requirements.txt
```

## Start servers
### API
```
python3 api/app.py
```
### Web
```
python -m SimpleHTTPServer 5001
```

## Browser/API testing
```
behave features/login.feature
```
