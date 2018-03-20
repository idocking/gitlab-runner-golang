all:

help:
	# make alpine

alpine: FORCE
	docker build -t idocking/gitlab-runner-golang:1.9.4-alpine3.6 ${PWD}/alpine/

FORCE: