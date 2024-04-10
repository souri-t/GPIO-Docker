# Raspberry Pi 5 GPIO Control Docker Container

RPi.GPIO, which has been commonly used when operating GPIO with Python, can no longer be used from RaspberryPi 5.
Instead, I will show you how to control with gpiozero on Docker fontainer.

## Prerequisites

- Raspberry Pi 5
- Docker and docker-compose installed on the Raspberry Pi

## Run Docker Container

Run the Docker container using the following command:

```bash
docker-compose up -d
```

## Sample Script

The script puts to gpio 25 pin that connected LED.

```sample.py
from gpiozero import LED
from time import sleep

led = LED(25)

while True:
    led.on()
    sleep(1)
    led.off()
    sleep(1)
```

## Execute

```bash
docker-compose exec gpio bash
python3.11 code/sample.py
```

or 

```bash
docker-compose exec gpio python3.11 code/sample.py
```