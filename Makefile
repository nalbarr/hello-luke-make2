FOO_FILE=foo.txt
BAR_FILE=bar.txt

help:
	@echo make create_foo
	@echo make echo_foo
	@echo make clean
	@echo make mv_foo_to_bar
	@echo make run

create_foo: echo_foo
	@echo "foo" > $(FOO_FILE)

echo_foo:
	@echo $(FOO_FILE) 

mv_foo_to_bar: create_foo
	mv $(FOO_FILE) $(BAR_FILE)

run:
	python3 main.py

clean:
	rm $(FOO_FILE)
	rm $(BAR_FILE)
