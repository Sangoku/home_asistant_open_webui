FROM ghcr.io/berriai/litellm:main-latest

WORKDIR /app

COPY init.sh /app/init.sh
RUN chmod +x /app/init.sh
COPY setup.yaml /app/config.yaml

EXPOSE 4000

ENTRYPOINT []
CMD ["/app/init.sh"]