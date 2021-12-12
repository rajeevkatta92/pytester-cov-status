FROM python:3
RUN pip install fastapi pytest-bdd flake8 pytest pytest-cov json-logging pylint requests pytest-mock python-dotenv azure-iot-device azure-identity azure-keyvault-secrets
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
