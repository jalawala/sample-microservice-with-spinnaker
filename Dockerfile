# A Go multistage docker file
FROM alpine
ENV PORT 8080
EXPOSE 8080
ADD . /app
RUN adduser -S -D -H -h /app appuser
USER appuser
#COPY --from=builder /build/main /app/
WORKDIR /app
CMD ["./main"]