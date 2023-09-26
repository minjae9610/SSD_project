NAME			=	ssd

PROJECTS		=	SSD_simulator	\
					SSD_TestShell	\

OUTPUTS			=	ssd				\
					testshell		\

REMOVE			=	rm -f

all:				${NAME}

${NAME}:
					@${MAKE} -C SSD_simulator
					@${MAKE} -C SSD_TestShell
					cp SSD_simulator/ssd .
					cp SSD_TestShell/testshell .

clean:
					${REMOVE} ${OUTPUTS}
					@${MAKE} -C SSD_simulator clean
					@${MAKE} -C SSD_TestShell clean

fclean:
					@${MAKE} clean
					${REMOVE} nand
					${REMOVE} result
					${REMOVE} ${OUTPUTS}
					@${MAKE} -C SSD_simulator fclean
					@${MAKE} -C SSD_TestShell fclean

re:
					@${MAKE} fclean
					@${MAKE}

.PHONY:				all clean fclean re