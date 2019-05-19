FROM alpine:latest AS init
ADD ./kontemplate /usr/local/bin
RUN chmod +x /usr/local/bin/kontemplate

FROM alpine:latest
COPY --from=init /usr/local/bin/kontemplate /usr/local/bin/kontemplate
ENTRYPOINT [ "/usr/local/bin/kontemplate" ]
CMD [ "--help" ]