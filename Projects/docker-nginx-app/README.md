# Dockerized Web Application with Nginx Reverse Proxy

## Overview
This project demonstrates how to containerize a simple Python web application and route traffic through an Nginx reverse proxy using **Docker Compose**.  
It is part of my DevOps learning journey to understand container networking, service orchestration, and reverse proxy configuration.

The setup runs two containers:
- A lightweight **Python HTTP server** that returns a text response
- An **Nginx container** that forwards incoming requests to the Python app

This example illustrates how to connect multiple containers within a single Docker network using  docker-compose.



## How It Works

1. **main.py** runs a minimal HTTP server on port `8000`.
2. **Nginx** listens on port `80` (mapped to host port `8081`).
3. Requests to `http://localhost:8081` go to Nginx → forwarded to `app:8000`.
4. Both services are orchestrated with **Docker Compose**, which automatically creates a shared network.


## How to Run

### Prerequisites
- Docker Desktop or Docker Engine installed  
- Docker Compose plugin available (Docker v20.10+)

### Steps

`bash
# Move into the project directory
cd projects/docker-nginx-app

# Build and start the containers
docker compose up --build -d

# Verify both containers are running
docker ps

# Test application

![alt image](https://github.com/hashim1sharif/DevOps_Journey/blob/6f9adb61575be78d5f8521823dda6e560690ebcf/Projects/docker-nginx-app/images/Screenshot%202025-11-08%20120208.png)

![alt image](https://github.com/hashim1sharif/DevOps_Journey/blob/6f9adb61575be78d5f8521823dda6e560690ebcf/Projects/docker-nginx-app/images/Screenshot%202025-11-08%20120232.png)