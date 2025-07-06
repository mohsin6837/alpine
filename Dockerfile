FROM alpine

RUN apk add --no-cache bash

WORKDIR /app
COPY entrypoint.sh .
RUN chmod +X entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]
