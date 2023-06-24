NAME = minitalk

SERVER = server

CLIENT = client

FLAGS = -Wall -Wextra -Werror

INCLUDES = -I ./headers

all: $(NAME)

LIBFT:
	@$(MAKE) -s -k -C ./libs/libft

FT_PRINTF:
	@$(MAKE) -s -k -C ./libs/ft_printf

$(NAME): LIBFT FT_PRINTF $(SERVER) $(CLIENT)

$(SERVER):
	cc $(FLAGS) $(INCLUDES) ./srcs/server.c -o $(SERVER)

$(CLIENT):
	cc $(FLAGS) $(INCLUDES) ./srcs/client.c -o $(CLIENT)

val:
	valgrind --leak-check=full -q ./$(SERVER)
	valgrind --leak-check=full -q ./$(CLIENT)