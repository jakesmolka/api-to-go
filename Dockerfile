FROM alpine:3.6

RUN apk add --update \
	bash \
	git \
	openssh
