FROM python:3.9.18-alpine3.18
WORKDIR /app
ADD ./requirements.txt .
RUN pip install -r requirements.txt
ADD ./app.py .
EXPOSE 5000
CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:5000", "app:app"]
