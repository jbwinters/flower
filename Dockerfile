FROM python:2.7

MAINTAINER Josh Winters <josh@idealspot.com>

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY flowerconfig.py .

EXPOSE 5555

CMD ["celery", "flower", "--port=5555", "--conf=flowerconfig.py"]


