  
FROM python:3.7

RUN pip install fastapi uvicorn numpy scipy sklearn pydantic

EXPOSE 80

COPY ./app /app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
