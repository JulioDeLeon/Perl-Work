#ifndef MAIN_H
#define MAIN_H 

#include <sys/socket.h>
#include <stdio.h>
#include <string.h>

#define BANANA 1
#define ORANGE 2

void myMap(void *src, void * dest, void *(f)(void *), size_t n, size_t elem);

int myLength(void *src, size_t elem);

#endif

