# FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
# RUN apk --update add bash nano
# ENV STATIC_URL /static
# ENV STATIC_PATH /var/www/app/static
# ENV FLASK_APP=/app/main.py
# COPY ./requirements.txt /var/www/requirements.txt
# RUN pip install -r /var/www/requirements.txt

# CMD ["python", "main.py"]

FROM tiangolo/uwsgi-nginx:python3.8

# copy over our requirements.txt file
COPY requirements.txt /tmp/

# upgrade pip and install required python packages
RUN pip install -U pip
RUN pip install -r /tmp/requirements.txt
# COPY ./app /app