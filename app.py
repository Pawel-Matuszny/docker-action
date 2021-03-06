from wsgiref.simple_server import make_server

import falcon

class ThingsResource:
    def on_get(self, req, resp):
        """Handles GET requests"""
        resp.status = falcon.HTTP_200 
        resp.content_type = falcon.MEDIA_TEXT
        resp.text = ('\nHello my name is pawel')

app = falcon.App()

things = ThingsResource()

app.add_route('/', things)

if __name__ == '__main__':
    with make_server('', 8000, app) as httpd:
        print('Serving on port 8000...')
        httpd.serve_forever()