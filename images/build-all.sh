#!/bin/bash

docker build -f Dockerfile-base -t oai-base .
docker build -f Dockerfile-enb -t oai-enb .
docker build -f Dockerfile-ue -t oai-ue .
docker build -f Dockerfile-gnb -t oai-gnb .
docker build -f Dockerfile-nrue -t oai-nrue .
