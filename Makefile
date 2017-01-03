# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sflinois <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/04 09:38:34 by sflinois          #+#    #+#              #
#    Updated: 2016/12/21 12:25:00 by sflinois         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CCRED =	$(echo -e "\033[0;31m")
CCYELLOW = $(echo -e "\033[0;33m")
CCGREEN = $(echo -e "\033[0;32m")
CCEND = $(echo -e "\033[0m")

NAME =	libft.a

SRCS = srcs

D_BTREE = $(SRCS)/fct_btree
D_CALC = $(SRCS)/fct_calc
D_IS = $(SRCS)/fct_is
D_LIST = $(SRCS)/fct_list
D_MEM = $(SRCS)/fct_mem
D_PUT = $(SRCS)/fct_put
D_STR = $(SRCS)/fct_str

OBJS = objs/
INCS = includes/

SRC = 	$(D_BTREE)/ft_btree_create_node.c $(D_BTREE)/ft_btree_apply_prefix.c \
		$(D_BTREE)/ft_btree_apply_infix.c $(D_BTREE)/ft_btree_apply_suffix.c \
		\
		$(D_CALC)/ft_atoi.c $(D_CALC)/ft_base2base.c $(D_CALC)/ft_base2dec.c \
		$(D_CALC)/ft_pow.c \
		\
		$(D_IS)/ft_isalpha.c $(D_IS)/ft_isalnum.c $(D_IS)/ft_isascii.c \
		$(D_IS)/ft_isdigit.c $(D_IS)/ft_isprint.c $(D_IS)/ft_isneg.c \
		\
		$(D_LIST)/ft_lstadd.c $(D_LIST)/ft_lstdel.c $(D_LIST)/ft_lstdelone.c \
		$(D_LIST)/ft_lstiter.c $(D_LIST)/ft_lstmap.c $(D_LIST)/ft_lstnew.c \
		\
		$(D_MEM)/ft_bzero.c $(D_MEM)/ft_memalloc.c $(D_MEM)/ft_memccpy.c \
		$(D_MEM)/ft_memchr.c $(D_MEM)/ft_memcmp.c $(D_MEM)/ft_memcpy.c \
		$(D_MEM)/ft_memdel.c $(D_MEM)/ft_memmove.c $(D_MEM)/ft_memset.c \
		\
		$(D_PUT)/ft_putchar.c $(D_PUT)/ft_putchar_fd.c $(D_PUT)/ft_putendl.c \
		$(D_PUT)/ft_putendl_fd.c $(D_PUT)/ft_putnbr.c $(D_PUT)/ft_putnbr_fd.c \
		$(D_PUT)/ft_putstr.c $(D_PUT)/ft_putstr_fd.c \
		\
		$(D_STR)/ft_itoa.c $(D_STR)/ft_strcat.c $(D_STR)/ft_strchr.c \
		$(D_STR)/ft_strclr.c $(D_STR)/ft_strcmp.c $(D_STR)/ft_strcpy.c \
		$(D_STR)/ft_strdel.c $(D_STR)/ft_strdup.c $(D_STR)/ft_strndup.c \
		$(D_STR)/ft_strequ.c $(D_STR)/ft_striter.c $(D_STR)/ft_striteri.c \
		$(D_STR)/ft_strjoin.c $(D_STR)/ft_strlcat.c $(D_STR)/ft_strlen.c \
		$(D_STR)/ft_strmap.c $(D_STR)/ft_strmapi.c $(D_STR)/ft_strncat.c \
		$(D_STR)/ft_strncmp.c $(D_STR)/ft_strncpy.c $(D_STR)/ft_strnequ.c \
		$(D_STR)/ft_strnew.c $(D_STR)/ft_strnstr.c $(D_STR)/ft_strrchr.c \
		$(D_STR)/ft_strsplit.c $(D_STR)/ft_strstr.c $(D_STR)/ft_strsub.c \
		$(D_STR)/ft_strtrim.c $(D_STR)/ft_tolower.c $(D_STR)/ft_toupper.c \

OBJ = 	ft_btree_create_node.c ft_btree_apply_prefix.c \
		ft_btree_apply_infix.c ft_btree_apply_suffix.c \
		\
		ft_atoi.c ft_base2base.c ft_base2dec.c \
		ft_pow.c \
		\
		ft_isalpha.c ft_isalnum.c ft_isascii.c \
		ft_isdigit.c ft_isprint.c ft_isneg.c \
		\
		ft_lstadd.c ft_lstdel.c ft_lstdelone.c \
		ft_lstiter.c ft_lstmap.c ft_lstnew.c \
		\
		ft_bzero.c ft_memalloc.c ft_memccpy.c \
		ft_memchr.c ft_memcmp.c ft_memcpy.c \
		ft_memdel.c ft_memmove.c ft_memset.c \
		\
		ft_putchar.c ft_putchar_fd.c ft_putendl.c \
		ft_putendl_fd.c $(D_PUT)/ft_putnbr.c $(D_PUT)/ft_putnbr_fd.c \
		$(D_PUT)/ft_putstr.c $(D_PUT)/ft_putstr_fd.c \
		\
		$(D_STR)/ft_itoa.c $(D_STR)/ft_strcat.c $(D_STR)/ft_strchr.c \
		$(D_STR)/ft_strclr.c $(D_STR)/ft_strcmp.c $(D_STR)/ft_strcpy.c \
		$(D_STR)/ft_strdel.c $(D_STR)/ft_strdup.c $(D_STR)/ft_strndup.c \
		$(D_STR)/ft_strequ.c $(D_STR)/ft_striter.c $(D_STR)/ft_striteri.c \
		$(D_STR)/ft_strjoin.c $(D_STR)/ft_strlcat.c $(D_STR)/ft_strlen.c \
		$(D_STR)/ft_strmap.c $(D_STR)/ft_strmapi.c $(D_STR)/ft_strncat.c \
		$(D_STR)/ft_strncmp.c $(D_STR)/ft_strncpy.c $(D_STR)/ft_strnequ.c \
		$(D_STR)/ft_strnew.c $(D_STR)/ft_strnstr.c $(D_STR)/ft_strrchr.c \
		$(D_STR)/ft_strsplit.c $(D_STR)/ft_strstr.c $(D_STR)/ft_strsub.c \
		$(D_STR)/ft_strtrim.c $(D_STR)/ft_tolower.c $(D_STR)/ft_toupper.c \

INC = $(INCS)libft.h

FLAGS = -Wall -Wextra -Werror -g

all : $(NAME)

$(NAME): $(SRC) $(INC)
	gcc $(FLAGS) -I $(INC) -c $(SRC)
	mv *.o $(OBJS)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
