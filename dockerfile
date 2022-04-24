FROM python:3.8

RUN python -m pip install --upgrade pip

WORKDIR /usr/src/app

RUN pip install django==3.1.13
# RUN pip install pymysql==1.0.2

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0:8000"]
