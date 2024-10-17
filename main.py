from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello" : "World"}

@app.get("/Hello")
def read_root():
    return "Hello World！"