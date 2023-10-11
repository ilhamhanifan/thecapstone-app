FROM python:3.12.0-slim-bookworm as base
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

FROM base
WORKDIR /app
COPY . .
CMD [ "python3", "app.py" ]
