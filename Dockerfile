FROM python:3
RUN poetry install fastapi pytest-bdd flake8 pytest pytest-cov json-logging pylint requests pytest-mock python-dotenv
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
