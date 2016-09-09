obj-m := nl_server.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
	gcc -o nl_client.out nl_client.c
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	rm nl_client.out
