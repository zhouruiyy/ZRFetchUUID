//
//  ZRUUIDMgr.m
//  ZRFetchUUID
//
//  Created by Zhou,Rui(ART) on 2020/4/22.
//  Copyright © 2020 Zhou,Rui(ART). All rights reserved.
//

#import "ZRUUIDMgr.h"
#import "ZRKeyChain.h"
#import <UIKit/UIKit.h>

@implementation ZRUUIDMgr

+ (NSString *)getIdentifier {
    NSString *deviceKey = @"ZR_DEVICE_ID";
    NSString *deviceId = [ZRKeyChain loadKey:deviceKey];
    if(deviceId && [deviceId isKindOfClass:[NSString class]]) {
    }else {
        NSString *identifierForVendor = [[UIDevice currentDevice].identifierForVendor UUIDString];
        identifierForVendor = [identifierForVendor stringByReplacingOccurrencesOfString:@"-" withString:@""];
        deviceId = [self stringByEscapingForURLArgument:identifierForVendor];
        [ZRKeyChain saveData:deviceId forKey:deviceKey];
    }
    return deviceId;
}

+ (NSString*)stringByEscapingForURLArgument:(NSString*)str {
    
    NSString *tmpStr =
    CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                               (CFStringRef)str,
                                                               NULL,
                                                               CFSTR(":/?#[]@!$ &'()*+,;=\"<>%{}|\\^~`"),
                                                               kCFStringEncodingUTF8));
    return tmpStr ? tmpStr : @"";
}
@end
