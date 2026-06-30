from fastapi import FastAPI
import uvicorn 

app = FastAPI()

@app.get("/greet")
def greet():
    return {
        "message": "I am Jit Patel, Hello Everyone"
    }

@app.get("/health")
def health():
    return {
        "status": "healthy"
    }


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8081)