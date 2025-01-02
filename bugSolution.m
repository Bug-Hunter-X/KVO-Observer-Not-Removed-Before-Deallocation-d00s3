Improved code with proper observer removal:

```objectivec
@interface MyClass : NSObject
@property (nonatomic, strong) NSString *observedString;
@end

@implementation MyClass

- (instancetype)init {
    self = [super init];
    if (self) {
        [self addObserver:self forKeyPath:@