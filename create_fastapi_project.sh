#!/bin/bash

read -p "Enter project name: " project_name
mkdir -p $project_name/app/{routers,models,core,tests}
cd $project_name

# Create base FastAPI app
cat <<EOF > app/main.py
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello from $project_name!"}
EOF

# Create requirements file
cat <<EOF > requirements.txt
fastapi
uvicorn
EOF

echo "✅ Project '$project_name' created successfully!"
echo "To run it:"
echo "---------------------------------------------"
echo "cd $project_name"
echo "pip install -r requirements.txt"
echo "uvicorn app.main:app --reload"
echo "---------------------------------------------"

