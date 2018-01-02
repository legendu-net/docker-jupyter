#!/bin/bash

# su -m $DOCKER_USER -c "jupyter lab --allow-root --ip=* --port=8888 --no-browser --notebook-dir=/jupyter"
su -m $DOCKER_USER -c "jupyter notebook --allow-root --ip=* --port=8888 --no-browser --notebook-dir=/jupyter"

