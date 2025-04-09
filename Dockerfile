# USe the official Python image from the Docker hub
FROM python:3.10-slim

# Set the workig directory
WORKDIR /app

# Copy the current directory contents into the contianer at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install flask

# Make port 5000 available to the world outside this contianer
EXPOSE 5000

#Run app.py when the comtainer launches
CMD ["python", "app.py"]