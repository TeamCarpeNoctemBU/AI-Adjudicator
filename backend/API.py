from sanic import Sanic
from sanic.response import text

app = Sanic("MyHelloWorldApp")

@app.get("/")
async def hello_world(request):
    return text("Hello, world.")

@app.get("/foo")
async def foo_handler(request):
    return text("I said foo!")