//
//  main.c
//  kqueueTest
//
//  Created by Edward Eric on 15/2/15.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#include <stdio.h>
#include <sys/event.h>

int main(int argc, const char * argv[]) {
    // insert code here...
//    printf("Hello, World!\n");
    pid_t pid;
    int kQueue;
    int returnValue;
    int done;
    struct kevent ke;
    
    pid=atoi(argv[1]);
    
    
    kQueue=kqueue();
    
    if (kQueue == -1) {
        perror("kQueue");
        exit(2);
    }
    
    EV_SET(&ke, pid, EVFILT_PROC, EV_ADD, NOTE_EXIT|NOTE_FORK|NOTE_EXEC, 0, NULL);
    
    returnValue=kevent(kQueue, &ke, 1, NULL, 0, NULL);
    if (returnValue<0) {
        perror("kevent");
        exit(3);
    }
    
    done=0;
    
    while (!done) {
        memset(&ke,'\0',sizeof(struct kevent));
        
        returnValue=kevent(kQueue, NULL, 0, &ke, 1, NULL);
        
        if (ke.fflags&NOTE_FORK) {
            printf("pid %d has fork()ed\n",pid);
        }
        
        if (ke.fflags&NOTE_EXEC) {
            printf("pid %d has exec()ed\n",pid);
        }
        
        if (ke.fflags&NOTE_EXIT) {
            printf("pid %d has exit()ed\n",pid);
            done++;
        }
    }
    return 0;
}
