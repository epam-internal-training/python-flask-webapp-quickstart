ARG VERSION=3.9
# Use the official Python image as the base image
FROM python:$VERSION AS baseimage

LABEL Ower = "Srini"
LABEL Contact = "srini@email.com"
LABEL Purpose = "puthon app"
LABEL Key = "Value"

# Sets the username
#USER root

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app
# ADD . /app

# Install Flask and other required packages
RUN pip install -r --no-cache-dir requirements.txt

# Environment variables
ENV MY_VAR = $MY_VAR

# Creates a mount point for a volume at the specified path
#VOLUME /data

# Expose the port on which the Flask app will run (default for Flask is 5000)
EXPOSE 5000

# Run the command to start the Flask app when the container is launched
#CMD ["python" "app.py"]

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]