BUILDER_IMAGE_NAME := builder

builder:
	docker build -f ./Dockerfile -t ${BUILDER_IMAGE_NAME} .

clean:
	rm -rf ./output

build: builder clean
	mkdir ./output && \
	docker run --rm \
	-v $(PWD)/output:/go/bin \
	${BUILDER_IMAGE_NAME}
