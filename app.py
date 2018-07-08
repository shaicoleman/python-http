#!/usr/bin/python3

import os
from platform import python_version
from datetime import datetime
from http.server import BaseHTTPRequestHandler, HTTPServer

PORT_NUMBER = int(os.environ.get("PORT") or 8080)

class MyHandler(BaseHTTPRequestHandler):

  def do_GET(self):
    self.send_response(200)
    self.send_header('Content-type','text/plain')
    self.end_headers()
    str = f'Hello World!\nPython {python_version()}\nTime: {datetime.now()}'
    self.wfile.write(str.encode('utf-8'))

try:
  server = HTTPServer(('', PORT_NUMBER), MyHandler)
  print('Started httpserver on port', PORT_NUMBER)
  server.serve_forever()

except KeyboardInterrupt:
  server.server_close()
  print('Stopping server')
