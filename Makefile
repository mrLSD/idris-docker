#
# Makefile
# @author Evgeny Ukhanov <mrlsd@ya.ru>
#

run:
	@docker run --rm -it -v `pwd`:/idris -w /idris mrlsd/idris:latest idris main.idr

build:
	@docker build -t mrlsd/idris:1.1.1 .

rm:
	@docker rmi mrlsd/idris:latest

