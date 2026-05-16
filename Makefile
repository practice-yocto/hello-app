CC ?= $(CROSS_COMPILE)gcc
CFLAGS ?= -O2
LDFLAGS ?=
O ?= build

all: $(O)/hello-app

$(O)/hello-app: $(O)/hello-app.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

$(O)/%.o: %.c
	mkdir -p $(O)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(O)
