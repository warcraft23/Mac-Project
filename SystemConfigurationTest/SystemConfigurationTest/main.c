//
//  main.c
//  SystemConfigurationTest
//
//  Created by Edward Eric on 15/2/16.
//  Copyright (c) 2015年 Edward Eric. All rights reserved.
//

#include <stdio.h>
#include <SystemConfiguration/SCPreferences.h>

void dumpDict(CFDictionaryRef dict){
    CFDataRef xml=CFPropertyListCreateXMLData(kCFAllocatorDefault, (CFPropertyListRef)dict);
    
    if (xml) {
        write(1, CFDataGetBytePtr(xml), CFDataGetLength(xml));
        CFRelease(xml);
    }
}


int main(int argc, const char * argv[]) {
    // insert code here...
    
    CFStringRef myName = CFSTR("com.technologeeks.SystemConfigurationTest");
    CFArrayRef keyList;
    SCPreferencesRef prefs=NULL;
    char *value;
    CFIndex i;
    CFDictionaryRef global;
    
    prefs = SCPreferencesCreate(NULL, myName, NULL);
    
    if (!prefs) {
        fprintf(stderr, "SCPreferencesCreate");
        exit(1);
    }
    
    keyList=SCPreferencesCopyKeyList(prefs);
    if (!keyList) {
        fprintf(stderr, "CopyKeyList");
        exit(2);
    }
    
    for (i=0; i<CFArrayGetCount(keyList); i++) {
        dumpDict(SCPreferencesGetValue(prefs, CFArrayGetValueAtIndex(keyList, i)));
    }
    
    printf("Hello, World!\n");
    return 0;
}
