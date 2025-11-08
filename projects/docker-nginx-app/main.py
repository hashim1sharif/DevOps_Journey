from http.server import BaseHTTPRequestHandler, HTTPServer

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        msg = b"Hello, Hashim from app via Nginx!"
        self.send_response(200)
        self.send_header("Content-type", "text/plain")
        self.send_header("Content-length", str(len(msg)))
        self.end_headers()
        self.wfile.write(msg)

if __name__ == "__main__":
    HTTPServer(("", 8000), Handler).serve_forever()
