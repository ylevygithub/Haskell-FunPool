##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## Makefile
##

SRC		=		DoOp.hs

OBJ		=		$(SRC:.hs=.o)

NAME	=		doop

all:	$(NAME)

$(NAME):		$(OBJ)
	ghc -Wall $(OBJ) -o $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
