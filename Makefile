SRCS := $(wildcard bin/*.ml)
OBJS := $(patsubst bin/%.ml,_build/default/bin/%.exe,$(SRCS))

.PHONY: all
all: $(OBJS)

_build/default/bin/%.exe: bin/%.ml
	uv run oj t -c "dune exec ./bin/$(*F).exe" -d tessoku-test/$(*F)/test
