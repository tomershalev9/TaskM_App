# Use an official Python runtime as the base image
FROM python:alpine3.7

# Set the working directory in the container
COPY . /app
# Copy the requirements.txt file and install the dependencies

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY . .

# Expose the port your Flask app will run on
ENV PORT 5000

EXPOSE 5000

# Define the command to run your Flask app
CMD ["python", "main.py"]

