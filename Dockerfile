FROM python:3.12-slim
ENV PYTHONUNBUFFERED=1

WORKDIR /app


RUN apt-get update \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt requirements.txt

# RUN pip install --no-cache-dir -r requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000", "--settings=core.settings.dev"]
# CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000"]




