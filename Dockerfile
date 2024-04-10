FROM python:3.11-slim

RUN apt update -y && apt upgrade -y

# GPIO
RUN pip install lgpio pigpio gpio gpiozero
