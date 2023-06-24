NAME = minitalk

SERVER = server

CLIENT = client

FLAGS = -Wall -Wextra -Werror

LIBFLAGS = -L$(LIBS_PATH) -lft -lft_printf

INCLUDES = -I ./headers

LIBS_PATH = ./libs

all: $(NAME)

LIBFT:
	@$(MAKE) -s -k -C $(LIBS_PATH)/libft

FT_PRINTF:
	@$(MAKE) -s -k -C $(LIBS_PATH)/ft_printf

$(NAME): LIBFT FT_PRINTF $(SERVER) $(CLIENT)

$(SERVER):
	cc $(FLAGS) $(INCLUDES) $(LIBFLAGS) ./srcs/server.c -o $@

$(CLIENT):
	cc $(FLAGS) $(INCLUDES) $(LIBFLAGS) ./srcs/client.c -o $@

val:
	valgrind --leak-check=full -q ./$(SERVER)
	valgrind --leak-check=full -q ./$(CLIENT)