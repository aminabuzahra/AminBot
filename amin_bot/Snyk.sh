#!/bin/bash

snyk container test aminabuzahra/amin_bot:python-3-10-slim-gpt --file=Dockerfile2
# snyk container test aminabuzahra/amin_bot:python-3-10-slim-gpt --file=Dockerfile2 > /home/amin/PycharmProjects/Amin_Docker_Project/amin_bot/snyk-scan-results/aminabuzahra_amin_bot_python-3-10-slim-gpt.txt