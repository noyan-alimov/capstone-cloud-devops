FROM python:3.8.6-alpine3.12

# Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . /app/

# Install packages from requirements.txt
RUN pip install --upgrade pip &&\
    pip install -r requirements.txt

# Run app.py at container launch
CMD ["python", "app.py"]