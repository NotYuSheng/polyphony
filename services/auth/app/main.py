from fastapi import FastAPI
from app.routes import auth
from app.config.settings import settings

app = FastAPI(title=settings.app_name)

app.include_router(auth.router)

@app.get("/health")
def health_check():
    return {"status": "ok"}
