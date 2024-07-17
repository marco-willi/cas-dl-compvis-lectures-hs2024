.PHONY: docker-build docker-run docker-push book slides create-slides clear-slides exam

#################################################################################
# GLOBALS                                                                       #
#################################################################################

ifneq (,$(wildcard ./.env))
    include .env
    export
endif

current_dir = $(shell pwd)

#################################################################################
# COMMANDS                                                                      #
#################################################################################

docker-build:	## Build docker image
	cd docker; docker build -t ${REGISTRY_ROOT}/${REPO_NAME}:${IMAGE_TAG} .

docker-build-quarto:	## Build docker image
	cd docker; docker build -t ${REGISTRY_ROOT}/${REPO_NAME}:${IMAGE_TAG}-quarto -f Dockerfile.quarto .

docker-run:	## Run docker container
	cd docker; docker run -d \
	  --name ${REPO_NAME} \
	  -p 8881:8888 \
	  -v "${current_dir}":/home/jovyan/work \
	  ${REGISTRY_ROOT}/${REPO_NAME}:${IMAGE_TAG} start.sh jupyter lab --LabApp.token=''

docker-run-quarto:	## Run docker container
	cd docker; docker run -d \
	  --name ${REPO_NAME}-quarto \
	  -p 8882:8888 \
	  -v "${current_dir}":/home/jovyan/work \
	  ${REGISTRY_ROOT}/${REPO_NAME}:${IMAGE_TAG}-quarto start.sh jupyter lab --LabApp.token=''

docker-push: ## Push image to registry
	docker login -u ${CONTAINER_REGISTRY_USER} -p ${CONTAINER_REGISTRY_PUSH_TOKEN}
	docker push ${REGISTRY_ROOT}/${REPO_NAME}:${IMAGE_TAG}

book: ## Build Juypter book
	jupyter-book build book/

book-all: book-clean book ## Build Juypter book

book-clean: ## Clean build files
	rm -rf ./book/_build


md-to-slides: ## convert *.md files to .tex slides
	python /home/jovyan/work/book/scripts/md_to_latex.py \
		--markdown_file /home/jovyan/work/book/lectures/${lecture}/${lecture}.md \
		--output /home/jovyan/work/book/lectures/${lecture}/slides/${lecture}.tex

create-slides: ## make slides
	export TEXINPUTS=${TEXINPUTS} && \
	cp /home/jovyan/work/book/references.bib ./book/lectures/${lecture}/slides && \
	cd ./book/lectures/${lecture}/slides && \
	xelatex -shell-escape ${lecture} && \
	bibtex ${lecture} && \
	xelatex -shell-escape ${lecture} && \
	xelatex -shell-escape ${lecture} 

clear-slides: ## clear slide files
	cd ./book/lectures/${lecture}/slides  && \
	find . -not -name "${lecture}.tex" -not -name "${lecture}.pdf" -delete

slides: md-to-slides create-slides clear-slides ## make slides

create-slides-simple: ## make slides  no bibtex
	export TEXINPUTS=${TEXINPUTS} && \
	cd ./book/slides/${lecture} && \
	xelatex -shell-escape ${lecture} && \
	xelatex -shell-escape ${lecture} 

# slides-simple: create-slides-simple clear-slides ## make slides no bibtex

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