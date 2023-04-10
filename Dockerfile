FROM python:3.10.5

COPY . /usr

WORKDIR /usr

ADD requirements.txt /usr

# create and activate virtual environment
RUN python -m venv venv
RUN . venv/bin/activate
RUN pip install --upgrade bson


# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# run the application
CMD ["uvicorn", "index:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
#CMD ["sleep", "10000"]
#CMD ["/bin/bash", "-c", "exec /bin/bash -c 'trap : TERM INT; sleep 9999999999d & wait'"]
