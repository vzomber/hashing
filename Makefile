NAME = ft_ssl

SRC =	src/main.c src/ft_md5.c src/preparations.c

OBJ =	main.o ft_md5.o preparations.o

FLAGS = -Wall -Wextra -Werror #-fsanitize=address

all: $(NAME)

$(OBJ): $(SRC)
	@gcc -c $(SRC) -I ./includes -I libft/inc/

$(NAME): $(OBJ)
	#@make -C libft
	@gcc $(FLAGS) $(OBJ) -o $(NAME) -L./libft -lft 
	@echo "\033[32mmake for ft_ssl: Done\033[0m"

clean:
	@rm -f $(OBJ)
	#@make -C libft clean

fclean: clean
	@rm -f $(NAME)
	#@make -C libft fclean

re: fclean all