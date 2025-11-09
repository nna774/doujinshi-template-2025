all: build

FILES := $(find . -name '*.typ')

build: $(FILES)
	typst compile main.typ
