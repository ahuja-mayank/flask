# Use an official Python runtime as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the requirements file to the working directory
COPY requirements.txt ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose a port (if your Flask application listens on a specific port)
EXPOSE 5000

# Set the command to run your application
CMD ["python", "app.py"]
