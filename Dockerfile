FROM python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV APP_HOME=/app
WORKDIR $APP_HOME

COPY requirements.txt $APP_HOME/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . $APP_HOME

CMD ["python", "event-listener.py"]
