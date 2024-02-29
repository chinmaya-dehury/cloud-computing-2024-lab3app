FROM python:slim-buster
WORKDIR /usr/src/app
COPY templates ./templates
COPY app.py .
COPY requirements.txt .
RUN pip3 install -r requirements.txt
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 5000
CMD [ "flask", "run"]
