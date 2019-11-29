#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif
#import "MyLibrary.h"
#import <StoreKit/StoreKit.h>

@implementation MyLibrary

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE(InAppIosRating)
RCT_EXPORT_METHOD(getRating) {
  if (@available(iOS 10.3, *)) {
        [SKStoreReviewController requestReview];
    }
}


@end
