FROM python:2.7-alpine

MAINTAINER Josh Winters <josh@idealspot.com>

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY flowerconfig.py .
COPY entrypoint.sh .

EXPOSE 5555

ENTRYPOINT ["./entrypoint.sh"]
CMD ["--port=5555", "--conf=flowerconfig.py"]

