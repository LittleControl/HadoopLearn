#!/bin/bash

docker build -t hadoop:v0.3 .

docker run -it hadoop:v0.2 --name hadoop000 /bin/bash
