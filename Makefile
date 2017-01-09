# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sflinois <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/04 09:38:34 by sflinois          #+#    #+#              #
#    Updated: 2017/01/09 17:28:58 by sflinois         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CCRED =	"\033[0;31m"
CCYELLOW = "\033[0;33m"
CCGREEN = "\033[0;32m"
CCEND = "\033[0m"

NAME =	libft.a

SRC_PATH = srcs
SRC_NAME = ft_btree_create_node.c ft_btree_apply_prefix.c \
	ft_btree_apply_infix.c ft_btree_apply_suffix.c \
	\
	ft_atoi.c ft_base2base.c ft_base2dec.c ft_pow.c \
	\
	ft_isalpha.c ft_isalnum.c ft_isascii.c \
	ft_isdigit.c ft_isprint.c ft_isneg.c \
	\
	ft_lstadd.c ft_lstdel.c ft_lstdelone.c \
	ft_lstiter.c ft_lstmap.c ft_lstnew.c \
	ft_lstdelone_cmp.c \
	\
	ft_bzero.c ft_memalloc.c ft_memccpy.c \
	ft_memchr.c ft_memcmp.c ft_memcpy.c \
	ft_memdel.c ft_memmove.c ft_memset.c \
	\
	ft_putchar.c ft_putchar_fd.c ft_putendl.c \
	ft_putendl_fd.c ft_putnbr.c ft_putnbr_fd.c \
	ft_putstr.c ft_putstr_fd.c \
	\
	ft_itoa.c ft_strcat.c ft_strchr.c \
	ft_strclr.c ft_strcmp.c ft_strcpy.c \
	ft_strdel.c ft_strdup.c ft_strndup.c \
	ft_strequ.c ft_striter.c ft_striteri.c \
	ft_strjoin.c ft_strlcat.c ft_strlen.c \
	ft_strmap.c ft_strmapi.c ft_strncat.c \
	ft_strncmp.c ft_strncpy.c ft_strnequ.c \
	ft_strnew.c ft_strnstr.c ft_strrchr.c \
	ft_strsplit.c ft_strstr.c ft_strsub.c \
	ft_strtrim.c ft_tolower.c ft_toupper.c \

OBJ_PATH = objs
OBJ_NAME = $(SRC_NAME:.c = .o)

SRC = $(addprefix $(SRC_PATH)/,$(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH)/,$(OBJ_NAME))

CPPFLAGS = -Iincludes

INC = $(INCS)libft.h

CFLAGS = -Wall -Wextra -Werror -g

all : $(NAME)

$(NAME): $(OBJ)
	@gcc $(FLAGS) -I $(INC) -c $(SRC)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo $(CCGREEN) "Libft OK" $(CCEND)

clean:
	@rm -f $(OBJ)
	@echo $(CCRED) "Remove libft .o" $(CCEND)

fclean: clean
	@rm -f $(NAME)
	@echo $(CCRED) "Remove libft.a" $(CCEND)

re: fclean all
