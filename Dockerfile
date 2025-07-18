FROM python:3.11-slim-bullseye
<<<<<<< HEAD
=======

# Set the working directory in the container to /app
>>>>>>> 655b62ab301a681e87648f5e1b1296b9cb292d14
WORKDIR /app
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/YourUsername/YourRepoName.git .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 7860
CMD ["uvicorn", "run:main_app", "--host", "0.0.0.0", "--port", "7860", "--workers", "4"]

