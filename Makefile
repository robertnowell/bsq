# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dtse <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/03 14:15:06 by dtse              #+#    #+#              #
#    Updated: 2017/01/23 09:42:28 by rnowell          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =		bsq

CFLAGS =	-Wall -Werror -Wextra

SRCS =	src/*.c	

INCLUDES = ./misc/bsq.h

OBJS =		$(SRCS:.c=.o)

CC =		gcc

all: $(NAME); @echo "successful make"

$(NAME):
	@$(CC) $(CFLAGS) -I $(INCLUDES) -o $(NAME) $(SRCS)

clean:
	@/bin/rm -f $(OBJS)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all
