FROM ghcr.io/berriai/litellm:main-stable

RUN apk add --no-cache jq

WORKDIR /app

COPY init.sh /app/init.sh
RUN chmod +x /app/init.sh
COPY setup.yaml /app/config.yaml

# Expose the necessary port
EXPOSE 4000/tcp

ENTRYPOINT []
CMD ["/app/init.sh"]