# AminBot - Telegram Smart Chat Bot

AminBot is Telegram bot designed to provide intelligent chatbot responses, perform image detection using YOLOv5, and generate creative images using OpenAI's GPT model. The project is composed of multiple Docker containers, each serving a specific purpose and working together seamlessly to process and respond to data in real-time using AI and machine learning.

## Features

- **Smart Telegram Chatbot:**
  - Engage in intelligent conversations with the chatbot, which leverages OpenAI's GPT model.


- **Image Detection with YOLOv5:**
  - The bot integrates YOLOv5 for image detection, identifying objects and providing detailed summaries.

- **Creative Image Generation:**
  - Utilizes OpenAI's GPT model to generate creative images based on provided images.

- **Dockerized Services:**
  - The project is containerized using Docker, making it easy to deploy and manage.

## Project Overview

The project combines modern DevOps practices, leveraging Docker, Python, APIs, and MongoDB to create dynamic, multi-container Docker application. Each container in the system plays a unique role, working together to process and respond to data in real-time using AI and machine learning.

## Architecture

The application is structured around Docker containers, each serving a specific purpose:

- **Telegram Bot Container (`aminabuzahra/amin_bot`):** Hosts Python scripts (`app.py` and `bot.py`) for Telegram API interactions and integrates OpenAI API for text processing. Also, interacts with MongoDB for data storage.
- **YOLOv5 Container (`aminabuzahra/amin_yolo5`):** Dedicated to image processing with YOLOv5, handling image detection and analysis.
- **MongoDB Containers (`mongo1`, `mongo2`, `mongo3`):** Form a MongoDB replica set, ensuring data availability and redundancy for persistent data storage.

## Functionality

The bot is powered by Python scripts, with `app.py` managing HTTP requests. The `bot.py` script handles Telegram API interactions, message processing, coordinates with YOLOv5 and MongoDB, and manages the overall operational flow. The YOLOv5 container processes images and communicates results back to the Telegram bot.

## DevOps Integrations

Key DevOps practices integrated into the project:

- **Docker Containerization:** Provides consistency, simplifies deployment, and isolates dependencies.
- **GitHub Version Control:** Facilitates collaborative development and effective change management.
- **Monitoring and Security:** Utilizes Snyk for vulnerability scanning and NGROK for secure tunneling.

## Lana Bot Telegram Issues

1. When using the Telegram bot (Lana Bot) that leverages the OpenAI API, there's an issue with maintaining the context of the conversation. This problem needs to be addressed in the Python code within `bot.py`.

2. Synchronize Telegram message responses.

3. Improve Telegram messaging response time.


## Conclusion

AminBot is a testament to the practical application of DevOps, AI, and cloud services in software development. It showcases the effectiveness of Docker and Python in real-time data processing, emphasizing agility, scalability, and robustness.
