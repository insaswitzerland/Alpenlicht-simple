# Alpenlicht Studio — image prête pour l'hébergement
FROM python:3.12-slim

WORKDIR /app
COPY Alpenlicht.py /app/Alpenlicht.py

# Les données (commandes, réglages) vivent dans /data, à monter en volume
ENV ALPENLICHT_HOST=0.0.0.0 \
    ALPENLICHT_NO_BROWSER=1 \
    ALPENLICHT_NO_MENU=1 \
    ALPENLICHT_PASSWORD=1 \
    ALPENLICHT_DATA=/data \
    PYTHONUNBUFFERED=1

RUN mkdir -p /data
VOLUME ["/data"]

EXPOSE 8000
CMD ["python", "/app/Alpenlicht.py"]
