//
//  main.c
//  ZombieTest
//
//  Created by Edward Eric on 15/3/2.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//
#include <unistd.h>
#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    int rc= fork();
    int child=0;
    
    switch (rc) {
        case -1:
            fprintf(stderr, "Unable to fork!\n");
            break;
            
        case 0:
            printf("Child is born!\n");
            child++;
            break;
            
            
        default:
            printf("Parent going to sleep and now wait()ing!\n");
            sleep(60);
            break;
    }
    
    
    
    
    printf("%s exiting\n",(child?"child":"parent"));
    return 0;
}
