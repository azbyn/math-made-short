NAME := main
FILE := ${NAME}.tex

default: build

build:
	pdflatex --shell-escape ${FILE}

mount:
	mount -t tmpfs -o size=5m tmpfs ./_minted-cheatsheet/
	mount -t tmpfs -o size=5m tmpfs ./tmp

index:
	makeindex ${NAME}.idx

aclean:
	rm -f -v *.aux
clean:
	rm -f ${NAME}.aux
	rm -f ${NAME}.log
	rm -f ${NAME}.toc
	rm -f ${NAME}.out
	rm -f ${NAME}.idx
	rm -f ${NAME}.ilg
	rm -f ${NAME}.ind
	rm -f -v *.aux
