.PHONY: all dependencies build install remove_dependencies

all: dependencies build install remove_dependencies

build:
	@echo "building from source"
	@g++ -o net net.cpp -lcurl

install:
	@echo "placing binary in /usr/local/bin"
	@sudo mv net /usr/local/bin/net

dependencies:
	@echo "downloading dependencies"
	@sudo apt install libcurl4-openssl-dev -y > /dev/null
	
remove_dependencies:
	@echo "removing dependencies"
	@sudo apt remove libcurl4-openssl-dev -y > /dev/null