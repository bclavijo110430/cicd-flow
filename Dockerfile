FROM python:3
ENV PYTHONUNBUFFERED 1
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
CMD ["/bin/bash", "-c", "python /code/manage.py runserver 0.0.0.0:8000" ]
EXPOSE 8000/tcp