# Name of the project
PROJ_NAME=printy
 
# .c files
C_SOURCE=$(wildcard *.c)
 
# .h files
H_SOURCE=$(wildcard *.h)
 
# Object files
OBJ=$(C_SOURCE:.c=.o)
 
# Compiler
CC=gcc
 
# Flags for compiler
CC_FLAGS=-c         \
         -W         \
         -Wall      \
         -ansi      \
         -pedantic
 
#
# Compilation and linking
#

# My first makefile
 
all: printy
 
printy: main.o helloWorld.o
 gcc -o printy main.o helloWorld.o
 
main.o: main.c helloWorld.h
 gcc -o main.o main.c -c -W -Wall -ansi -pedantic
 
helloWorld.o: hellowolrd.c helloWorld.h
 gcc -o helloWorld.o helloWorld.c -c -W -Wall -ansi -pedantic
 
clean:
 rm -rf *.o *~ printy