##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## Makefile
##

SRC		=		pushswap.hs

OBJ		=		$(SRC:.c=.o)

NAME	=		pushswap_checker

all:	$(NAME)

$(NAME):		$(OBJ)
	ghc -o $(NAME) $(SRC)

clean:
	rm -f $(NAME)
	rm -f pushswap.hi
	rm -f pushswap.o

fclean: clean
	rm -f $(NAME)

re: fclean all
