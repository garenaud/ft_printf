# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: grenaud- <grenaud-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/09 10:27:44 by grenaud-          #+#    #+#              #
#    Updated: 2021/12/15 13:57:36 by grenaud-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC				= gcc
CFLAGS			= -Wall -Wextra -Werror
AR				= ar -rcs
RM				= rm -fr
NORM			= norminette -R CheckForbidenSourceHeader
# **************************************************************************** #
NAME			= libftprintf.a
# **************************************************************************** #
PATH_PRINTF		= ./
HD_PRINTF		= ft_printf.h
SRC_PRINTF		= 	ft_printf.c \
					ft_printf_utils.c \
					ft_printhex.c \
					ft_printptr.c \
					ft_printunsigned.c
OBJ_PRINTF		= ${SRC_PRINTF:.c=.o}
# **************************************************************************** #
PATH_LIBFT		= libft/
NAME_LIBFT		= libft.a
HD_LIBFT		= libft.h
# **************************************************************************** #
PATH_SUBMAKE	= ${PATH_LIBFT}
SRC_NORM		= ${SRC_PRINTF}
HD_NORM			= ${HD_PRINTF}
# **************************************************************************** #
# Colors
DEF_COLOR = \033[0;39m
GRAY = \033[0;90m
RED = \033[0;91m
GREEN = \033[0;92m
YELLOW = \033[0;93m
BLUE = \033[0;94m
MAGENTA = \033[0;95m
CYAN = \033[0;96m
WHITE = \033[0;97m
# **************************************************************************** #
all: ${NAME}

${NAME}: 	${OBJ_PRINTF} sub_all
			@cp ${PATH_LIBFT}${NAME_LIBFT} ${PATH_PRINTF}
			@echo "$(GREEN)cp executed!$(DEF_COLOR)"
			@mv ${NAME_LIBFT} ${NAME}
			@${AR} ${NAME} ${OBJ_PRINTF}
			@echo "$(GREEN)ft_printf compiled!$(DEF_COLOR)"

clean: 		sub_clean
			@${RM} ${OBJ_PRINTF}
			@echo "$(CYAN)ft_printf cleaned$(DEF_COLOR)"

fclean: 	clean sub_fclean
			@${RM} ${NAME}
			@echo "$(BLUE)ft_printf executable files cleaned$(DEF_COLOR)"
			@echo "$(BLUE)libft executable files cleaned$(DEF_COLOR)"

re: 		fclean all sub_re

.PHONY: all clean fclean re

normi: 
	${NORM} ${SRC_NORM}
	${NORM} ${HD_NORM}

# **************************************************************************** #
sub_all:
	${MAKE} all -C ${PATH_SUBMAKE}

sub_clean:
	${MAKE} clean -C ${PATH_SUBMAKE}

sub_fclean:
	${MAKE} fclean -C ${PATH_SUBMAKE}

sub_re:
	${MAKE} re -C ${PATH_SUBMAKE}
# **************************************************************************** #
