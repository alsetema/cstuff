#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<string.h>
#include<pthread.h>
#include<arpa/inet.h>
int hear(int);

void *send_loop(void *saddr_inf);

struct type_saddr_inf {
    int socket; 
    struct sockaddr_in remote_address;
};


int main(int argc, char ** argv) {
    int port;    
    printf("argument count is: %d\n", argc);
    if(argc == 2) {
       sscanf(argv[1], "%d", &port); 
    } else {
        port = 5555;
    }
    printf("Listening on port %d\n", port);
        
    
    hear(port);
    
    return 0;
}



int hear(int port) {
    //creating the socket thing
    int listensocket = socket(AF_INET, SOCK_DGRAM, 0);
    
    //setting up the address to listen to and so on
    struct sockaddr_in listenAddress;
    listenAddress.sin_family = AF_INET;
    listenAddress.sin_port = htons(port);
    listenAddress.sin_addr.s_addr = htonl(INADDR_ANY);
   
    //the middle argument is casting the listenaddress to a pointer of type struct sockaddr;
    int result = bind(listensocket, (struct sockaddr *) &listenAddress, sizeof(listenAddress));
    if(result < 0) {
        printf("There was an error binding the thing\n");
        return -1;
    }
   
    char response[100];
    struct sockaddr_in sender_address;
    int sender_address_size = sizeof(sender_address);
    char userinput[sizeof(response)];
    printf("before receiving\n");
    int datagramsize = recvfrom(listensocket, &response, sizeof(response), 0, (struct sockaddr *) &sender_address, &sender_address_size);
    printf("after receiving\n");
    struct type_saddr_inf *information;
    information = malloc(sizeof(struct type_saddr_inf));
    //the -> thing, will de-reference the pointer (a.k.a go and get what's inside of the struct) and then operate on what's after -> , in this case the "socket" field
    information->socket = listensocket;
    information->remote_address = sender_address;
    
    //this is a value that can be used for pthread to store the id of the new thread it spawns    
    pthread_t thread_id;
    //create thread here
    pthread_create(&thread_id, 0, send_loop, information);
    printf("before while loop\n");
    while(1) {
        //recv will give me the datagram, whereas recvfrom has a parametre to input another sockaddr_in where the address of the sender will be populated
         
        int datagramsize = recvfrom(listensocket, &response, sizeof(response), 0, (struct sockaddr *) &sender_address, &sender_address_size);
        printf("%.*s", datagramsize, response);
        printf("> ");
        fgets(userinput, sizeof(userinput), stdin);
        int message_length = strlen(userinput); 
        int sent = sendto(listensocket, userinput, message_length, 0, (struct sockaddr *) &sender_address, sender_address_size); 
     }
       //the printf works by actually using . for amount, then * for placeholder in printf, then it will print the amount of characters specified in the first argument (called datagramsize), starting from the posistion of the pointer of the second argumetn (response) 
}

void *send_loop(void *saddr_inf) {
    struct type_saddr_inf  *real_saddr_inf = (struct type_saddr_inf *) saddr_inf;
    printf("the port is %d\n", ntohs(real_saddr_inf->remote_address.sin_port));
}
