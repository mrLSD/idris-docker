#
# Makefile
# @author Evgeny Ukhanov <mrlsd@ya.ru>
#

run:
	@docker run --rm -it -v `pwd`:/idris -w /idris mrlsd/idris:1.2 idris main.idr

build:
	@docker build -t mrlsd/idris:1.2 .

rm:
	@docker rmi -f mrlsd/idris:latest
        @docker rmi -f mrlsd/idris:1.1.1


