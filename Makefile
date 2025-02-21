SRCS = error_free.c main.c push_command.c push_swap_command.c \
    push_swap_init.c reverse_rotate_command.c rotate_command.c \
    split.c stack_init.c stack_utils.c swap_command.c tiny_sort.c

NAME = push_swap
OBJS = $(SRCS:.c=.o)

CC = cc
CFLAGS = -Werror -Wextra -Wall -I.

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re

