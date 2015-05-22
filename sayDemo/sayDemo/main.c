//
//  main.c
//  sayDemo
//
//  Created by Edward Eric on 15/2/4.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#include <stdio.h>
#include <ApplicationServices/ApplicationServices.h>



int main(int argc, const char * argv[]) {
    // insert code here...
    OSErr rc;
    SpeechChannel channel;
    VoiceSpec vs;
    int voice;
    char *text="What do you want me to say?";
    
    if(!argv[1]){
        voice=1;
    }else{
        voice=atoi(argv[1]);
    }
    
    if(argc==3){
        text = argv[2];
    }
    
    rc=GetIndVoice(voice, &vs);
    
    rc=NewSpeechChannel(&vs, &channel);
    
    rc=SpeakText(channel, text, strlen(text));
    
    if(rc){
        fprintf(stderr,"Enable to speak!\n");
        exit(1);
    }
    
    while (SpeechBusy()) {
        sleep(1);
    }
    
    exit(0);
    
    //printf("Hello, World!\n");
    //return 0;
}
