//
//  ZRKeyChain.h
//  ZRFetchUUID
//
//  Created by Zhou,Rui(ART) on 2020/4/22.
//  Copyright © 2020 Zhou,Rui(ART). All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZRKeyChain : NSObject

// 数据写入keychain
+ (void)saveData:(id)data forKey:(NSString *)key;
// 从keychain中获取数据
+ (id)loadKey:(NSString *)key;
// keychain中删除数据
+ (void)deleteKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
