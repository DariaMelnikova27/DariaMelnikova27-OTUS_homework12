FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install -U pip
RUN pip install -r requirements.txt

COPY . .

RUN ["pytest", "-v", "--junitxml=reports/result.xml"]
ENTRYPOINT ["pytest"]


