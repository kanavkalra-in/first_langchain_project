from fastapi import FastAPI
from app.config.config import APP_NAME, DATABASE_URL
app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello from first_langchain_project!"}

@app.get("/items/{item_id}")
def read_item(item_id: int, q: str | None = None):
    print(APP_NAME)
    return {"item_id": item_id, "query": APP_NAME}
