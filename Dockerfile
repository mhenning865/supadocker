FROM apache/superset:latest

EXPOSE 8088

CMD ["bash", "-c", "\
    export FLASK_APP=superset && \
    superset fab create-admin --username admin --firstname Superset --lastname Admin --email admin@example.com --password admin && \
    superset run -p 8088 -h 0.0.0.0 \
"]
