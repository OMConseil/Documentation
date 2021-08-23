FROM python:2.7
COPY . /Documentation/
WORKDIR /Documentation/
RUN pip install mkdocs
EXPOSE 8080
CMD ["mkdocs", "serve"]