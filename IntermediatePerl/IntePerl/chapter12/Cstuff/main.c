#include "main.h"
void myMap(void * src, void * dest, void *(f)(void*), size_t n, size_t elem){
	unsigned int i = 0, j = 0;
	//create a temporay variable that will have the space to fit the given type 
	//within its self;
	void *temp = malloc(elem);
	//proceed to cast the elements as chars
	char* csrc = (char*) src;
	char* cdest = (char*) dest;
	char* ctemp =(char*) temp;
	
	for(i = 0; i<n; i++){
		csrc++;
		cdest++;
		ctemp++;
		temp = f(csrc);
		
		for(j = 0; j < elem; j++){
			cdest[i] = ctemp[i];
		}
		
		free(temp);
	}
	
	
}



int main (int argc, char *argv[]){
	if( argc <= 1){
		printf("ERR: USUAGE: %s <address> <port>\n", argv[0]);
		return -1;
	}else{
		int i = 1;
		for(i = 1; i < argc; i++){
			printf("You have ented: %s\n", argv[i]);
		}
	}
	
}
