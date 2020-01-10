ARG BASE_CONTAINER=jupyter/tensorflow-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Haijun (Navy) Su <navysu@gmail.com>"

# Install dependencies
RUN pip install --quiet \
    'openpyxl==3.0.3'

