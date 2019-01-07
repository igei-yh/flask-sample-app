# python official image
From python:3.6

# copy project directory to container.
ARG project_dir=/app/
COPY . $project_dir

# set project directory.
WORKDIR $project_dir

# install python modules needed.
RUN pip install -r requirements.txt

# run the application.
CMD ["python", "main.py"]
