FROM apache/superset:latest

EXPOSE 8088

CMD ["bash", "-c", "\
  export FLASK_APP=superset && \
  superset db upgrade && \
  superset fab create-admin \
    --username admin \
    --firstname Superset \
    --lastname Admin \
    --email admin@example.com \
    --password admin || true && \
  superset init && \
  superset run -p 8088 -h 0.0.0.0 \
"]
