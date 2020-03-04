FROM python:stretch

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8080

CMD ["gunicorn" , "-b", "80:8080", "main:APP"]