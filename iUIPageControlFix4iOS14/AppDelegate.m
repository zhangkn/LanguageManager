//
//  AppDelegate.m
//  iUIPageControlFix4iOS14
//
//  Created by mac on 2020/9/24.
//
#import "KNLanguageManager.h"
#import "ViewController.h"

#import "AppDelegate.h"


extern CFAbsoluteTime startTime4main;


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self setDefaultManagerLanguageManager];
    
    [self setupwindow];//
    

    
    double launchTime = CFAbsoluteTimeGetCurrent() -startTime4main;
    NSLog(@"%@", [NSString stringWithFormat:@"launchTime %@",[NSNumber numberWithDouble:launchTime ]]);
//    2020-09-25 17:12:54.531289+0800 iUIPageControlFix4iOS14[14126:917050] launchTime 0.09584593772888184

    
    return YES;
}

- (void)setupwindow{
    
    self.window = [[UIWindow alloc]init];
    self.window.frame = [[UIScreen mainScreen]bounds];
    
    
    ViewController *VC = [[ViewController alloc]init];

//    HWNavigationController *NA = [[HWNavigationController alloc]initWithRootViewController:VC];
    UINavigationController *NA = [[UINavigationController alloc]initWithRootViewController:VC];


    self.window.rootViewController = NA;
    

    [self.window makeKeyAndVisible];
    
//
    
}



//AppDelegate: 设置默认的语言


- (void)setDefaultManagerLanguageManager{
    

    if([KNLanguageManager isEN] ){
        
//
        [[KNLanguageManager defaultManager] changeLanguageType: KNLanguageTypeEnglish];
        

        NSLog(@"当前是英文版本");
        
    }else{
//        _titleLab.font = kPingFangFont(12);
        NSLog(@"当前是中文版本");
        [[KNLanguageManager defaultManager] changeLanguageType: KNLanguageTypeChineseSimple];

        
    }

}




@end
