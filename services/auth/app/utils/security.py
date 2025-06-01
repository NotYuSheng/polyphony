from passlib.context import CryptContext
from fastapi import HTTPException
from zxcvbn import zxcvbn

# Make sure bcrypt is installed properly
pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")

def hash_password(password: str) -> str:
    # Ensure password is a string
    if not isinstance(password, str):
        raise TypeError("Password must be a string")
    return pwd_context.hash(password)

def verify_password(plain_password: str, hashed_password: str) -> bool:
    if not isinstance(plain_password, str) or not isinstance(hashed_password, str):
        raise TypeError("Both password and hash must be strings")
    return pwd_context.verify(plain_password, hashed_password)

def validate_password_strength(password: str):
    result = zxcvbn(password)
    if result["score"] < 3:
        raise HTTPException(status_code=400, detail="Password too weak")
