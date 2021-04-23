FROM ubuntu:20.04 as build

RUN set -xe \
    && apt-get update \
	&& apt-get install python3.9 -y \
    && apt-get install python3-pip -y \
	&& apt-get install vim -y
RUN pip3 install --upgrade pip

# RUN pip3 install -r requirements.txt
RUN pip install pipenv

ADD src app/
WORKDIR /app

RUN pipenv install --deploy

CMD ["pipenv", "run", "python", "app.py"]