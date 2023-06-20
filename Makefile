NAME = server

all: 
	gcc -Wall -Wextra -Werror -g ./srcs/server.c -o server

$(NAME): all

val:
	valgrind --leak-check=full -q ./$(NAME)