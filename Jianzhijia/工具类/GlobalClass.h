
#define BKZ_HOST_URL @"http://vtest.beikaozu.com/"
//#define BKZ_HOST_URL @"http://v6.beikaozu.com/"

//------ 全局的变量:界面布局坐标 ------//
#define UI_NAVIGATION_BAR_HEIGHT  44
#define UI_TAB_BAR_HEIGHT         49
#define UI_TOOL_BAR_HEIGHT        49
#define UI_SEARCH_BAR_HEIGHT      44

#define AppVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

#define UI_SCREEN_WIDTH ([[UIScreen mainScreen]bounds].size.width)
#define UI_SCREEN_HEIGHT ([[UIScreen mainScreen]bounds].size.height)
#define UI_SCREEN_HEIGHT_NS ([[UIScreen mainScreen]bounds].size.height-20)

#define UI_NAVIGATION_BUTTON_SIZE   CGSizeMake(40, 40)
#define UI_NAVIGATION_BAR_RECT      CGRectMake(0, 0, UI_SCREEN_WIDTH, UI_NAVIGATION_BAR_HEIGHT)
#define UI_TAB_BAR_RECT             CGRectMake(0, (UI_SCREEN_HEIGHT_NS-UI_TAB_BAR_HEIGHT), UI_SCREEN_WIDTH, UI_TAB_BAR_HEIGHT)
#define UI_TOOL_BAR_RECT            CGRectMake(0, (UI_SCREEN_HEIGHT_NS-UI_TOOL_BAR_HEIGHT), UI_SCREEN_WIDTH, UI_TOOL_BAR_HEIGHT)
#define UI_BODY_WITH_NAVI_BAR_RECT  CGRectMake(0, UI_NAVIGATION_BAR_HEIGHT, UI_SCREEN_WIDTH, (UI_SCREEN_HEIGHT_NS-UI_NAVIGATION_BAR_HEIGHT))
#define UI_BODY_WITH_NAVI_AND_TOOL_BAR_RECT  CGRectMake(0, UI_NAVIGATION_BAR_HEIGHT, UI_SCREEN_WIDTH, (UI_SCREEN_HEIGHT_NS-UI_NAVIGATION_BAR_HEIGHT-UI_TOOL_BAR_HEIGHT))
#define UI_BODY_RECT                CGRectMake(0, 0, UI_SCREEN_WIDTH, (UI_SCREEN_HEIGHT_NS))

//仅用于usertrack统计的appkey和appsecret
#define USERTRACK_APPKEY        TAOKE_APPKEY
#define USERTRACK_APPSECRET     TAOKE_APPSECRET


#define BKZ_MYUSE_CATEGORYARRAY @"myuser_categoryArray"//自己练模块的科目分类
#define BKZ_MYTEACHER_CATEGORYARRAY @"myteacher_categoryArray"//自己练模块的科目分类

#define BKZ_QUIZ_MAIN_EXAMINATIONS @"user/examinations?"//真题库
#define BKZ_QUIZ_MAIN_TESTS @"user/tests?"//专项练习
#define BKZ_QUIZ_MAIN_ERRLIBS @"user/errlibrarys?"
#define BKZ_QUIZ_MAIN_ERRLIB_DETAIL @"user/errlibrarys/info"
#define BKZ_QUIZ_MAIN_TEST_POINTS @"user/category/pointsbyid"
#define BKZ_QUIZ_MAIN_TEST_POINTS_INFO @"user/category/pointsinfo"

#define Option_Selected_Background_Color RGB2UIColor(243, 125, 123)
#define Option_Non_Selected_Background_Color RGB2UIColor(255, 255, 255)

#define BKZShareSDK_Content_text @"没通过四六级不可怕，可怕的是你还不知道#备考族#。最全的题库，最强的挑战你快来吧！"
#define BZKShareSDK_content_Word_text @"#备考族# 我刚使用备考族完成全部单词本，你也快一起来吧 http://www.beikaozu.com"
#define BZK_Website_URL @"http://www.beikaozu.com"

#define IS_OS_6_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 6.0)
#define IS_OS_7_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
#define IS_OS_8_OR_LATER    ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)

#define RANDOM_COLOR [UIColor colorWithRed:(arc4random()%100)/(float)100 green:(arc4random()%100)/(float)100 blue:(arc4random()%100)/(float)100 alpha:0.3]

#define RGB2UIColor(r, g, b)  [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]
#define GrayUIColor(gray)  [UIColor colorWithRed:((gray) / 255.0) green:((gray) / 255.0) blue:((gray) / 255.0) alpha:1.0]

#define V_SCALE (float)[UIScreen mainScreen].bounds.size.width/320
#define H_SCALE (float)[UIScreen mainScreen].bounds.size.height/568


#define bigScreenHeight ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone && [UIScreen mainScreen].bounds.size.height == 568.0)

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height


#define TOOLBAR_HEIGHT 50.0f
#define HYBRID_SCHEME @"hybrid"
#define WINDVANE_VERSION @"1.0.0"


#define MA_SCREEN_WIDTH ([[UIScreen mainScreen]bounds].size.width)
#define MA_SCREEN_HEIGHT ([[UIScreen mainScreen]bounds].size.height)


//红点消息的备用名
#define BKZ_NewsName_Tabbar_Class @"BKZ_NewsName_Tabbar_Class"
#define BKZ_NewsName_Tabbar_News @"BKZ_NewsName_Tabbar_News"
#define BKZ_NewsName_Tabbar_Myself @"BKZ_NewsName_Tabbar_Myself"

#define BKZ_NewsName_Teacher_Homework @"BKZ_NewsName_Teacher_Homework"
#define BKZ_NewsName_Group_NewsAboutMyself @"BKZ_NewsName_Group_NewsAboutMyself"
#define BKZ_NewsName_Group_qa @"BKZ_NewsName_Group_qa" 
#define BKZ_NewsName_Myself_news @"BKZ_NewsName_Myself_news"
#define BKZ_NewsName_Myself_AddNew @"BKZ_NewsName_Myself_AddNew"

//占位图
#define BKZ_ZHANWEITU @"heat_icon"


typedef enum {
    BackIndex = 0,
    FowardIndex = 1,
    RefreshIndex = 3,
    CloseIndex = 4,
} ToolBarActionIndex;


