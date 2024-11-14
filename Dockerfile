FROM python:3.11

WORKDIR /code

COPY ./requiredments.txt /code/requiredments.txt
RUN pip install --no-cache-dir --upgrade -r /code/requiredments.txt

COPY ./app /code/app

CMD [ "fastapi", "run", "app/main.py", "--port", "80"]