COMAND = protoc -I proto proto/sso/sso.proto --go_out=./gen/go --go_opt=paths=source_relative --go-grpc_out=./gen/go --go-grpc_opt=paths=source_relative

CLEAN_PATH = .\gen\go\sso

all: generate

generate:
	$(COMAND)

clean:
	rmdir /s /q $(CLEAN_PATH)

.PHONY: all generate clean
