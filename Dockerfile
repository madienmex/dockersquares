FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy script to the container
COPY square.py .
COPY app.py .

# Install Flask
RUN pip install flask
#RUN pip install gunicorn

# Set default command to execute the script
CMD ["python", "./app.py"]
#CMD ["gunicorn", "app:app", "-b", "0.0.0.0:5000"]
