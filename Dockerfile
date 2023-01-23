FROM python:3.6.15@sha256:f8652afaf88c25f0d22354d547d892591067aa4026a7fa9a6819df9f300af6fc

WORKDIR /app

ADD ./requirements.txt /app

RUN useradd -m -u 1000 bot

USER bot

RUN pip install -r requirements.txt

ADD src/ /app

ENTRYPOINT [ "/usr/local/bin/python" ]
CMD [ "/app/app.py" ]
