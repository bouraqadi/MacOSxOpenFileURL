//
//  main.m
//  defaultWebBrowser
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        CFURLRef httpURL = CFURLCreateWithString(kCFAllocatorDefault, CFSTR("http://"), nil);
        CFURLRef appURL =  LSCopyDefaultApplicationURLForURL(httpURL, kLSRolesViewer, nil);
        CFStringRef appPath = CFURLCopyFileSystemPath(appURL, kCFURLPOSIXPathStyle);
        printf("%s\n", CFStringGetCStringPtr(appPath, kCFStringEncodingMacRoman));
     }
    return 0;
}
