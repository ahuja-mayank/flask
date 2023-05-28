# from flask import Flask

# app = Flask(__name__)

# @app.route('/')
# def hello():
#     return 'Hello, Docker!'

# if __name__ == '__main__':
#     app.run(host='0.0.0.0')

import os
name = os.environ.get('NAME', 'Guest')
print(f'Hello, {name}!')
