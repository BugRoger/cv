.PHONY: all build clean

all: michael_schmidt.pdf

build: Dockerfile 
	docker build -t bugroger/cv:latest .

michael_schmidt.pdf: build
	docker run --rm -v $(PWD):/src bugroger/cv:latest pdflatex michael_schmidt.tex

clean:
	rm -rf michael_schmidt.pdf michael_schmidt.aux michael_schmidt.log michael_schmidt.out