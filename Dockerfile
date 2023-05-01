FROM alpine:latest

RUN apk add --no-cache go hugo git make perl
RUN go install github.com/jackyzha0/hugo-obsidian@latest
ENV PATH="/root/go/bin:$PATH"
RUN git clone https://github.com/wokuno/quartz.wokuno.com /quartz

WORKDIR /quartz

CMD ["make", "build"]
