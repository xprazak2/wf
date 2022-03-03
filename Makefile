NAME ?= wf
TAG ?= latest
NAMESPACE ?= myspace

ifneq ($(strip ${RELEASE_VERSION}),)
TAG_RELEASE="-t ${NAMESPACE}/${NAME}:${RELEASE_VERSION}"
endif

.PHONY : all build

all : build

build :
	echo "-t ${NAMESPACE}/${NAME}:${TAG} -t ${NAMESPACE}/${NAME}:latest ${TAG_RELEASE} ."
