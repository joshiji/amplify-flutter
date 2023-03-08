// 
// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
// Autogenerated from Pigeon (v7.2.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

#import "PushNotificationsNativePlugin.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSArray *wrapResult(id result, FlutterError *error) {
  if (error) {
    return @[
      error.code ?: [NSNull null], error.message ?: [NSNull null], error.details ?: [NSNull null]
    ];
  }
  return @[ result ?: [NSNull null] ];
}
static id GetNullableObjectAtIndex(NSArray *array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}

@interface PermissionsOptions ()
+ (PermissionsOptions *)fromList:(NSArray *)list;
+ (nullable PermissionsOptions *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@interface GetPermissionStatusResult ()
+ (GetPermissionStatusResult *)fromList:(NSArray *)list;
+ (nullable GetPermissionStatusResult *)nullableFromList:(NSArray *)list;
- (NSArray *)toList;
@end

@implementation PermissionsOptions
+ (instancetype)makeWithAlert:(NSNumber *)alert
    sound:(NSNumber *)sound
    badge:(NSNumber *)badge {
  PermissionsOptions* pigeonResult = [[PermissionsOptions alloc] init];
  pigeonResult.alert = alert;
  pigeonResult.sound = sound;
  pigeonResult.badge = badge;
  return pigeonResult;
}
+ (PermissionsOptions *)fromList:(NSArray *)list {
  PermissionsOptions *pigeonResult = [[PermissionsOptions alloc] init];
  pigeonResult.alert = GetNullableObjectAtIndex(list, 0);
  NSAssert(pigeonResult.alert != nil, @"");
  pigeonResult.sound = GetNullableObjectAtIndex(list, 1);
  NSAssert(pigeonResult.sound != nil, @"");
  pigeonResult.badge = GetNullableObjectAtIndex(list, 2);
  NSAssert(pigeonResult.badge != nil, @"");
  return pigeonResult;
}
+ (nullable PermissionsOptions *)nullableFromList:(NSArray *)list {
  return (list) ? [PermissionsOptions fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    (self.alert ?: [NSNull null]),
    (self.sound ?: [NSNull null]),
    (self.badge ?: [NSNull null]),
  ];
}
@end

@implementation GetPermissionStatusResult
+ (instancetype)makeWithStatus:(PermissionStatus)status {
  GetPermissionStatusResult* pigeonResult = [[GetPermissionStatusResult alloc] init];
  pigeonResult.status = status;
  return pigeonResult;
}
+ (GetPermissionStatusResult *)fromList:(NSArray *)list {
  GetPermissionStatusResult *pigeonResult = [[GetPermissionStatusResult alloc] init];
  pigeonResult.status = [GetNullableObjectAtIndex(list, 0) integerValue];
  return pigeonResult;
}
+ (nullable GetPermissionStatusResult *)nullableFromList:(NSArray *)list {
  return (list) ? [GetPermissionStatusResult fromList:list] : nil;
}
- (NSArray *)toList {
  return @[
    @(self.status),
  ];
}
@end

@interface PushNotificationsFlutterApiCodecReader : FlutterStandardReader
@end
@implementation PushNotificationsFlutterApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [GetPermissionStatusResult fromList:[self readValue]];
    case 129: 
      return [PermissionsOptions fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface PushNotificationsFlutterApiCodecWriter : FlutterStandardWriter
@end
@implementation PushNotificationsFlutterApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[GetPermissionStatusResult class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PermissionsOptions class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface PushNotificationsFlutterApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation PushNotificationsFlutterApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[PushNotificationsFlutterApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[PushNotificationsFlutterApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *PushNotificationsFlutterApiGetCodec() {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    PushNotificationsFlutterApiCodecReaderWriter *readerWriter = [[PushNotificationsFlutterApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

@interface PushNotificationsFlutterApi ()
@property(nonatomic, strong) NSObject<FlutterBinaryMessenger> *binaryMessenger;
@end

@implementation PushNotificationsFlutterApi

- (instancetype)initWithBinaryMessenger:(NSObject<FlutterBinaryMessenger> *)binaryMessenger {
  self = [super init];
  if (self) {
    _binaryMessenger = binaryMessenger;
  }
  return self;
}
- (void)onNotificationReceivedInBackgroundWithPayload:(NSDictionary<id, id> *)arg_withPayload completion:(void (^)(NSError *_Nullable))completion {
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:@"dev.flutter.pigeon.PushNotificationsFlutterApi.onNotificationReceivedInBackground"
      binaryMessenger:self.binaryMessenger
      codec:PushNotificationsFlutterApiGetCodec()];
  [channel sendMessage:@[arg_withPayload ?: [NSNull null]] reply:^(id reply) {
    completion(nil);
  }];
}
- (void)onLaunchNotificationOpenedWithPayload:(NSDictionary<id, id> *)arg_withPayload completion:(void (^)(NSError *_Nullable))completion {
  FlutterBasicMessageChannel *channel =
    [FlutterBasicMessageChannel
      messageChannelWithName:@"dev.flutter.pigeon.PushNotificationsFlutterApi.onLaunchNotificationOpened"
      binaryMessenger:self.binaryMessenger
      codec:PushNotificationsFlutterApiGetCodec()];
  [channel sendMessage:@[arg_withPayload ?: [NSNull null]] reply:^(id reply) {
    completion(nil);
  }];
}
@end

@interface PushNotificationsHostApiCodecReader : FlutterStandardReader
@end
@implementation PushNotificationsHostApiCodecReader
- (nullable id)readValueOfType:(UInt8)type {
  switch (type) {
    case 128: 
      return [GetPermissionStatusResult fromList:[self readValue]];
    case 129: 
      return [PermissionsOptions fromList:[self readValue]];
    default:
      return [super readValueOfType:type];
  }
}
@end

@interface PushNotificationsHostApiCodecWriter : FlutterStandardWriter
@end
@implementation PushNotificationsHostApiCodecWriter
- (void)writeValue:(id)value {
  if ([value isKindOfClass:[GetPermissionStatusResult class]]) {
    [self writeByte:128];
    [self writeValue:[value toList]];
  } else if ([value isKindOfClass:[PermissionsOptions class]]) {
    [self writeByte:129];
    [self writeValue:[value toList]];
  } else {
    [super writeValue:value];
  }
}
@end

@interface PushNotificationsHostApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation PushNotificationsHostApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[PushNotificationsHostApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[PushNotificationsHostApiCodecReader alloc] initWithData:data];
}
@end

NSObject<FlutterMessageCodec> *PushNotificationsHostApiGetCodec() {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    PushNotificationsHostApiCodecReaderWriter *readerWriter = [[PushNotificationsHostApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void PushNotificationsHostApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<PushNotificationsHostApi> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.PushNotificationsHostApi.getPermissionStatus"
        binaryMessenger:binaryMessenger
        codec:PushNotificationsHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getPermissionStatusWithCompletion:)], @"PushNotificationsHostApi api (%@) doesn't respond to @selector(getPermissionStatusWithCompletion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        [api getPermissionStatusWithCompletion:^(GetPermissionStatusResult *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.PushNotificationsHostApi.requestPermissions"
        binaryMessenger:binaryMessenger
        codec:PushNotificationsHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(requestPermissionsWithPermissionOptions:completion:)], @"PushNotificationsHostApi api (%@) doesn't respond to @selector(requestPermissionsWithPermissionOptions:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        PermissionsOptions *arg_withPermissionOptions = GetNullableObjectAtIndex(args, 0);
        [api requestPermissionsWithPermissionOptions:arg_withPermissionOptions completion:^(NSNumber *_Nullable output, FlutterError *_Nullable error) {
          callback(wrapResult(output, error));
        }];
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.PushNotificationsHostApi.getBadgeCount"
        binaryMessenger:binaryMessenger
        codec:PushNotificationsHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(getBadgeCountWithError:)], @"PushNotificationsHostApi api (%@) doesn't respond to @selector(getBadgeCountWithError:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        NSNumber *output = [api getBadgeCountWithError:&error];
        callback(wrapResult(output, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.PushNotificationsHostApi.setBadgeCount"
        binaryMessenger:binaryMessenger
        codec:PushNotificationsHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setBadgeCountWithBadgeCount:error:)], @"PushNotificationsHostApi api (%@) doesn't respond to @selector(setBadgeCountWithBadgeCount:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_withBadgeCount = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setBadgeCountWithBadgeCount:arg_withBadgeCount error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.PushNotificationsHostApi.registerCallbackFunction"
        binaryMessenger:binaryMessenger
        codec:PushNotificationsHostApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(registerCallbackFunctionCallbackHandle:callbackType:error:)], @"PushNotificationsHostApi api (%@) doesn't respond to @selector(registerCallbackFunctionCallbackHandle:callbackType:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        NSNumber *arg_callbackHandle = GetNullableObjectAtIndex(args, 0);
        CallbackType arg_callbackType = [GetNullableObjectAtIndex(args, 1) integerValue];
        FlutterError *error;
        [api registerCallbackFunctionCallbackHandle:arg_callbackHandle callbackType:arg_callbackType error:&error];
        callback(wrapResult(nil, error));
      }];
    } else {
      [channel setMessageHandler:nil];
    }
  }
}
