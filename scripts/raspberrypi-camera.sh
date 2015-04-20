#!/bin/bash

DESTINATION_DIR=/root/webcam-output

# take a photo
DATE=$(date +"%Y-%m-%d_%H%M")
raspistill -o ${DESTINATION_DIR}/${DATE}.jpg -w 1280 -h 960

# sync to server
rsync -avz -e ssh ${DESTINATION_DIR}/ USER@SERVER:/home/USER/webcam-output
