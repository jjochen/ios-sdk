//
//  SBSDKBeacon.m
//  SensorbergSDK
//
//   
//  Copyright (c) 2014-2015 Sensorberg GmbH. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "SBSDKBeacon.h"

#import "SBSDKMacros.h"

@implementation SBSDKBeacon

#pragma mark - Lifecycle

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

- (instancetype)init {
    NON_DESIGNATED_INIT(@"initWithBeacon:");
}

- (instancetype)initWithBeacon:(CLBeacon *)beacon {
    if ((self = [super init])) {
        _beacon = beacon;
        _lastSeenAt = [NSDate date];
    }
    
    return self;
}

#pragma clang diagnostic pop

#pragma mark - Values

- (NSString *)UUIDString {
    return self.beacon.proximityUUID.UUIDString;
}

- (NSNumber *)major {
    return self.beacon.major;
}

- (NSNumber *)minor {
    return self.beacon.minor;
}

@end
