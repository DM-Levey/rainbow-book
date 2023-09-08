# 基础镜像
FROM ubuntu:20.04

COPY rainbow_book /app/rainbow_book
WORKDIR /app

ENTRYPOINT ["/app/rainbow_book"]

