# Use ubuntu as the base image
FROM ubuntu:jammy-20231004
#FROM ngrok/ngrok

# WORKDIR /usr/src/app

# Install dependencies
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y screen

RUN apt-get install -y net-tools lsof

# Download and install ngrok
RUN curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | \
   tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && \
   echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | \
   tee /etc/apt/sources.list.d/ngrok.list && \
   apt update && apt install ngrok


ARG NGROK_TOKEN
RUN ngrok config add-authtoken ${NGROK_TOKEN}
#RUN ngrok http 8443 --domain immense-fawn-welcomed.ngrok-free.app
#RUN ngrok http 8443 --domain immense-fawn-welcomed.ngrok-free.app < /dev/null > /dev/null 2>&1 &
#RUN setsid ngrok http 8443 --domain immense-fawn-welcomed.ngrok-free.app >/dev/null 2>&1 < /dev/null &
#RUN screen -dmS ngrok-session ngrok http 8443 --domain immense-fawn-welcomed.ngrok-free.app
RUN nohup ngrok http 8443 --domain immense-fawn-welcomed.ngrok-free.app > /dev/null 2>&1 &

#RUN curl immense-fawn-welcomed.ngrok-free.app

# Copy the rest of your application's source code
COPY . .


