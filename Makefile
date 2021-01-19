SOME_FILE=foo.txt

help:
	@echo make create_foo
	@echo make echo_foo
	@echo make clean

create_foo: echo_foo
	@echo "foo" > $(SOME_FILE)

echo_foo:
	@echo $(SOME_FILE) 

clean:
	rm -f $(SOME_FILE)
