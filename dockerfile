FROM python:2.7
COPY . /Documentation/
WORKDIR /Documentation/
RUN pip install mkdocs
RUN pip install mkdocs-render-swagger-plugin
EXPOSE 8080
CMD ["mkdocs", "serve"]