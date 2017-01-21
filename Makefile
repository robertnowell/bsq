# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dtse <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/03 14:15:06 by dtse              #+#    #+#              #
#    Updated: 2016/08/03 14:15:10 by dtse             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =		bsq

CFLAGS =	-Wall -Werror -Wextra

SRCS =	src/*.c	

INCLUDES = ./bsq.h

OBJS =		$(SRCS:.c=.o)

CC =		gcc

all: $(NAME)

$(NAME):
	@$(CC) $(CFLAGS) -I $(INCLUDES) -o $(NAME) $(SRCS)

clean:
	@/bin/rm -f $(OBJS)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all
