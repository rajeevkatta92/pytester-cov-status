FROM python:3
RUN pip install fastapi pytest-bdd flake8 pytest pytest-cov json-logging pylint requests pytest-mock python-dotenv azure-iot-device == 2.7 azure-identity == 1.7 azure-keyvault-secrets == 4.2
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
