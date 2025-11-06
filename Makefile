

./bin/myapp: ./obj/func1.o ./obj/func2.o ./obj/main.o
	clang -o $@ #^


./obj/%.o: ./src/%.c
	clang -o $@ -c $< -I./include

clean:
	rm ./bin/myapp
	rm ./obj/*.o