#!/bin/sh

set -e

if [ -x "/opt/conda/bin/jupyter" ]; then
    /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip=* --port=8888 --no-browser --allow-root
fi