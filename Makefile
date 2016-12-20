# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sflinois <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/04 09:38:34 by sflinois          #+#    #+#              #
#    Updated: 2016/12/20 22:00:06 by sflinois         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CCRED =	$(echo -e "\033[0;31m")
CCYELLOW = $(echo -e "\033[0;33m")
CCGREEN = $(echo -e "\033[0;32m")
CCEND = $(echo -e "\033[0m")

NAME =	libft.a

SRCS = srcs

D_BTREE = $(SRCS)/fct_btree/
D_IS = $(SRCS)/fct_is/
D_LIST = $(SRCS)/fct_list/
D_CALC = $(SRCS)/fct_calc/

OBJS = objs/
INCS = includes/

SRC = 	$(SRCS)/ft_atoi.c \
		$(SRCS)/ft_bzero.c \
		$(SRCS)/ft_itoa.c \
		$(SRCS)/ft_memalloc.c \
		$(SRCS)/ft_memccpy.c \
		$(SRCS)/ft_memchr.c \
		$(SRCS)/ft_memcmp.c \
		$(SRCS)/ft_memcpy.c \
		$(SRCS)/ft_memdel.c \
		$(SRCS)/ft_memmove.c \
		$(SRCS)/ft_memset.c \
		$(SRCS)/ft_putchar.c \
		$(SRCS)/ft_putchar_fd.c \
		$(SRCS)/ft_putendl.c \
		$(SRCS)/ft_putendl_fd.c \
		$(SRCS)/ft_putnbr.c \
		$(SRCS)/ft_putnbr_fd.c \
		$(SRCS)/ft_putstr.c \
		$(SRCS)/ft_putstr_fd.c \
		$(SRCS)/ft_strcat.c \
		$(SRCS)/ft_strchr.c \
		$(SRCS)/ft_strclr.c \
		$(SRCS)/ft_strcmp.c \
		$(SRCS)/ft_strcpy.c \
		$(SRCS)/ft_strdel.c \
		$(SRCS)/ft_strdup.c \
		$(SRCS)/ft_strndup.c \
		$(SRCS)/ft_strequ.c \
		$(SRCS)/ft_striter.c \
		$(SRCS)/ft_striteri.c \
		$(SRCS)/ft_strjoin.c \
		$(SRCS)/ft_strlcat.c \
		$(SRCS)/ft_strlen.c \
		$(SRCS)/ft_strmap.c \
		$(SRCS)/ft_strmapi.c \
		$(SRCS)/ft_strncat.c \
		$(SRCS)/ft_strncmp.c \
		$(SRCS)/ft_strncpy.c \
		$(SRCS)/ft_strnequ.c \
		$(SRCS)/ft_strnew.c \
		$(SRCS)/ft_strnstr.c \
		$(SRCS)/ft_strrchr.c \
		$(SRCS)/ft_strsplit.c \
		$(SRCS)/ft_strstr.c \
		$(SRCS)/ft_strsub.c \
		$(SRCS)/ft_strtrim.c \
		$(SRCS)/ft_tolower.c \
		$(SRCS)/ft_toupper.c \
		$(SRCS)/ft_pow.c \
		$(SRCS)/ft_base2dec.c \
		$(SRCS)/ft_base2base.c \
		$(D_IS)/ft_isalpha.c $(D_IS)/ft_isalnum.c $(D_IS)/ft_isascii.c \
		$(D_IS)/ft_isdigit.c $(D_IS)/ft_isprint.c $(D_IS)/ft_isneg.c \
		\
		$(D_LIST)/ft_lstnew.c $(D_LIST)/ft_lstdelone.c $(D_LIST)/ft_lstdel.c \
		$(D_LIST)/ft_lstadd.c $(D_LIST)/ft_lstiter.c $(D_LIST)/ft_lstmap.c \
		\
		$(D_BTREE)/ft_btree_create_node.c $(D_BTREE)/ft_btree_apply_prefix.c \
		$(D_BTREE)/ft_btree_apply_infix.c $(D_BTREE)/ft_btree_apply_suffix.c 

OBJ = 	$(SRC:.c=.o)

INC = $(INCS)libft.h

FLAGS = -Wall -Wextra -Werror -g

all : $(NAME)

$(NAME): $(SRC) $(INC)
	gcc $(FLAGS) -I $(INC) -c $(SRC)
	mv $(SRC) $(SRCS)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
