FROM alpine/git AS builder

RUN mkdir /build ; cd /build ; git clone https://github.com/grempe/diceware.git .

FROM nginx

COPY --from=builder /build /usr/share/nginx/html

