
.PHONY: protos

all:
	docker build - < ci/Dockerfile -t protobuilder
	docker run  -v `pwd`:/mnt protobuilder /mnt/ci/compile_protos.sh
