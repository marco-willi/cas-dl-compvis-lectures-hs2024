.PHONY: docker-build docker-run docker-push render book slides create-slides clear-slides exam

#################################################################################
# GLOBALS                                                                       #
#################################################################################

ifneq (,$(wildcard ./_environment.local))
    include _environment.local
    export
endif

current_dir = $(shell pwd)

#################################################################################
# COMMANDS                                                                      #
#################################################################################

docker-build:	## Build docker image
	docker build -t ${REGISTRY_ROOT}/${REPO_NAME}:${IMAGE_TAG} .

docker-run:	## Run docker container
	docker run -d \
	  --name ${REPO_NAME} \
	  -p 8882:8888 \
	  -v "${current_dir}":/home/jovyan/work \
	  ${REGISTRY_ROOT}/${REPO_NAME}:${IMAGE_TAG} start.sh jupyter lab --LabApp.token=''


docker-push: ## Push image to registry
	docker login -u ${CONTAINER_REGISTRY_USER} -p ${CONTAINER_REGISTRY_PUSH_TOKEN}
	docker push ${REGISTRY_ROOT}/${REPO_NAME}:${IMAGE_TAG}

#######################################################
# Quarto
#######################################################


render: ## Render Quarto book
	quarto render

create-exam: ## make exam tex
	export TEXINPUTS=${TEXINPUTS} && \
	cd ./docs/exam/tex && \
	xelatex -shell-escape main && \
	xelatex -shell-escape main && \
	xelatex -shell-escape main

clear-exam: ## clear exam files
	cd ./docs/exam/tex && \
	find . -not -name "*.tex" -not -name "main.pdf" -not -name "exam.cls" -delete

exam: create-exam clear-exam ## make exam
