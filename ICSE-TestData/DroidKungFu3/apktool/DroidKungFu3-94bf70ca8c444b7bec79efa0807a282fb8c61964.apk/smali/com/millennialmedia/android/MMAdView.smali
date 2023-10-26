.class public Lcom/millennialmedia/android/MMAdView;
.super Landroid/webkit/WebView;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdView$MMAdListener;,
        Lcom/millennialmedia/android/MMAdView$MMJSInterface;,
        Lcom/millennialmedia/android/MMAdView$ScreenReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MillennialMediaAdSDK"


# instance fields
.field private final SDKVER:Ljava/lang/String;

.field public accelerate:Z

.field private acid:Ljava/lang/String;

.field private final activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public adType:Ljava/lang/String;

.field private age:Ljava/lang/String;

.field private apid:Ljava/lang/String;

.field private auid:Ljava/lang/String;

.field private autoCallForAds:Z

.field private baseUrl:Ljava/lang/String;

.field protected canAccelerate:Z

.field private children:Ljava/lang/String;

.field private cm:Landroid/net/ConnectivityManager;

.field private education:Ljava/lang/String;

.field private ethnicity:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private goalId:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private height:Ljava/lang/String;

.field private income:Ljava/lang/String;

.field private keywords:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field public listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

.field private longitude:Ljava/lang/String;

.field private marital:Ljava/lang/String;

.field private modeString:Ljava/lang/String;

.field private nextUrl:Ljava/lang/String;

.field private orientation:Ljava/lang/String;

.field private overlayTitle:Ljava/lang/String;

.field private overlayTransition:Ljava/lang/String;

.field private politics:Ljava/lang/String;

.field private refreshIntervalInMilliseconds:I

.field private refreshIntervalInSeconds:I

.field private refreshTimerOn:Z

.field private runnable:Ljava/lang/Runnable;

.field private shouldLaunchToOverlay:Z

.field private shouldResizeOverlay:I

.field private shouldShowNavbar:Z

.field private shouldShowTitlebar:Z

.field public testMode:Z

.field private transitionTime:J

.field private ua:Ljava/lang/String;

.field private width:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v0, "15062"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 58
    const-string v0, "12.34.43.21"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    .line 59
    const-string v0, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->baseUrl:Ljava/lang/String;

    .line 60
    const-string v0, "3.6.3-10.10.26.a"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->SDKVER:Ljava/lang/String;

    .line 64
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInSeconds:I

    .line 65
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->autoCallForAds:Z

    .line 67
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldLaunchToOverlay:Z

    .line 68
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowTitlebar:Z

    .line 69
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowNavbar:Z

    .line 70
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 75
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 88
    const-string v0, "&mode=live"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->modeString:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 92
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 93
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    .line 94
    const-string v0, "bottomtotop"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->overlayTransition:Ljava/lang/String;

    .line 95
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionTime:J

    .line 96
    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldResizeOverlay:I

    .line 97
    const-string v0, "Advertisement"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->overlayTitle:Ljava/lang/String;

    .line 352
    new-instance v0, Lcom/millennialmedia/android/MMAdView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdView$1;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->runnable:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 111
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 113
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInSeconds:I

    .line 114
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->init()V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/util/Hashtable;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "metaMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v0, "15062"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 58
    const-string v0, "12.34.43.21"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    .line 59
    const-string v0, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->baseUrl:Ljava/lang/String;

    .line 60
    const-string v0, "3.6.3-10.10.26.a"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->SDKVER:Ljava/lang/String;

    .line 64
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInSeconds:I

    .line 65
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->autoCallForAds:Z

    .line 67
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldLaunchToOverlay:Z

    .line 68
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowTitlebar:Z

    .line 69
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowNavbar:Z

    .line 70
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 75
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 88
    const-string v0, "&mode=live"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->modeString:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 92
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 93
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    .line 94
    const-string v0, "bottomtotop"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->overlayTransition:Ljava/lang/String;

    .line 95
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionTime:J

    .line 96
    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldResizeOverlay:I

    .line 97
    const-string v0, "Advertisement"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->overlayTitle:Ljava/lang/String;

    .line 352
    new-instance v0, Lcom/millennialmedia/android/MMAdView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdView$1;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->runnable:Ljava/lang/Runnable;

    .line 143
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 144
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 146
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInSeconds:I

    .line 147
    invoke-virtual {p0, p5}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 148
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->init()V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I
    .param p5, "testMode"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v0, "15062"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 58
    const-string v0, "12.34.43.21"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    .line 59
    const-string v0, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->baseUrl:Ljava/lang/String;

    .line 60
    const-string v0, "3.6.3-10.10.26.a"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->SDKVER:Ljava/lang/String;

    .line 64
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInSeconds:I

    .line 65
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->autoCallForAds:Z

    .line 67
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldLaunchToOverlay:Z

    .line 68
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowTitlebar:Z

    .line 69
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowNavbar:Z

    .line 70
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 75
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 88
    const-string v0, "&mode=live"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->modeString:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 92
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 93
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    .line 94
    const-string v0, "bottomtotop"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->overlayTransition:Ljava/lang/String;

    .line 95
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionTime:J

    .line 96
    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldResizeOverlay:I

    .line 97
    const-string v0, "Advertisement"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->overlayTitle:Ljava/lang/String;

    .line 352
    new-instance v0, Lcom/millennialmedia/android/MMAdView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdView$1;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->runnable:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 121
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 123
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInSeconds:I

    .line 124
    iput-boolean p5, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 125
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->init()V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Hashtable;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I
    .param p5, "testMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "metaMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v0, "15062"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 58
    const-string v0, "12.34.43.21"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    .line 59
    const-string v0, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->baseUrl:Ljava/lang/String;

    .line 60
    const-string v0, "3.6.3-10.10.26.a"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->SDKVER:Ljava/lang/String;

    .line 64
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInSeconds:I

    .line 65
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->autoCallForAds:Z

    .line 67
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldLaunchToOverlay:Z

    .line 68
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowTitlebar:Z

    .line 69
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowNavbar:Z

    .line 70
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 75
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 88
    const-string v0, "&mode=live"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->modeString:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 92
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 93
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    .line 94
    const-string v0, "bottomtotop"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->overlayTransition:Ljava/lang/String;

    .line 95
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionTime:J

    .line 96
    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldResizeOverlay:I

    .line 97
    const-string v0, "Advertisement"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->overlayTitle:Ljava/lang/String;

    .line 352
    new-instance v0, Lcom/millennialmedia/android/MMAdView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdView$1;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->runnable:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 155
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 157
    iput-boolean p5, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 158
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInSeconds:I

    .line 159
    invoke-virtual {p0, p6}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 160
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->init()V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I
    .param p5, "testMode"    # Z
    .param p6, "accelerate"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v0, "15062"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 58
    const-string v0, "12.34.43.21"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    .line 59
    const-string v0, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->baseUrl:Ljava/lang/String;

    .line 60
    const-string v0, "3.6.3-10.10.26.a"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->SDKVER:Ljava/lang/String;

    .line 64
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInSeconds:I

    .line 65
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->autoCallForAds:Z

    .line 67
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldLaunchToOverlay:Z

    .line 68
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowTitlebar:Z

    .line 69
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowNavbar:Z

    .line 70
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 75
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 88
    const-string v0, "&mode=live"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->modeString:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 92
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 93
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    .line 94
    const-string v0, "bottomtotop"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->overlayTransition:Ljava/lang/String;

    .line 95
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionTime:J

    .line 96
    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldResizeOverlay:I

    .line 97
    const-string v0, "Advertisement"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->overlayTitle:Ljava/lang/String;

    .line 352
    new-instance v0, Lcom/millennialmedia/android/MMAdView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdView$1;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->runnable:Ljava/lang/Runnable;

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 132
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 134
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInSeconds:I

    .line 135
    iput-boolean p5, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 136
    iput-boolean p6, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 137
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->init()V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZZLjava/util/Hashtable;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I
    .param p5, "testMode"    # Z
    .param p6, "accelerate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZ",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "metaMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v0, "15062"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 58
    const-string v0, "12.34.43.21"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    .line 59
    const-string v0, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->baseUrl:Ljava/lang/String;

    .line 60
    const-string v0, "3.6.3-10.10.26.a"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->SDKVER:Ljava/lang/String;

    .line 64
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInSeconds:I

    .line 65
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->autoCallForAds:Z

    .line 67
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldLaunchToOverlay:Z

    .line 68
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowTitlebar:Z

    .line 69
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowNavbar:Z

    .line 70
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 75
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 88
    const-string v0, "&mode=live"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->modeString:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 92
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 93
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    .line 94
    const-string v0, "bottomtotop"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->overlayTransition:Ljava/lang/String;

    .line 95
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionTime:J

    .line 96
    iput v2, p0, Lcom/millennialmedia/android/MMAdView;->shouldResizeOverlay:I

    .line 97
    const-string v0, "Advertisement"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->overlayTitle:Ljava/lang/String;

    .line 352
    new-instance v0, Lcom/millennialmedia/android/MMAdView$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdView$1;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->runnable:Ljava/lang/Runnable;

    .line 166
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 167
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 169
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInSeconds:I

    .line 170
    iput-boolean p5, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    .line 171
    iput-boolean p6, p0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    .line 172
    invoke-virtual {p0, p7}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 173
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->init()V

    .line 174
    return-void
.end method

.method static synthetic access$0(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    return-void
.end method

.method static synthetic access$1(Lcom/millennialmedia/android/MMAdView;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshTimerOn:Z

    return v0
.end method

.method static synthetic access$10(Lcom/millennialmedia/android/MMAdView;I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->shouldResizeOverlay:I

    return-void
.end method

.method static synthetic access$11(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowTitlebar:Z

    return-void
.end method

.method static synthetic access$12(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowNavbar:Z

    return-void
.end method

.method static synthetic access$13(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->administerRefreshTimer(Z)V

    return-void
.end method

.method static synthetic access$14(Lcom/millennialmedia/android/MMAdView;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->shouldLaunchToOverlay:Z

    return v0
.end method

.method static synthetic access$15(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->activityWeakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$16(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->goalId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/millennialmedia/android/MMAdView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/millennialmedia/android/MMAdView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInMilliseconds:I

    return v0
.end method

.method static synthetic access$4(Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->nextUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->nextUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdView;->shouldLaunchToOverlay:Z

    return-void
.end method

.method static synthetic access$7(Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->overlayTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->overlayTransition:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/millennialmedia/android/MMAdView;J)V
    .locals 0

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/millennialmedia/android/MMAdView;->transitionTime:J

    return-void
.end method

.method private administerRefreshTimer(Z)V
    .locals 4
    .param p1, "refreshAds"    # Z

    .prologue
    .line 329
    monitor-enter p0

    .line 331
    if-eqz p1, :cond_1

    .line 334
    :try_start_0
    const-string v0, "MillennialMediaAdSDK"

    const-string v1, "Refresh Timer is on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->handler:Landroid/os/Handler;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->runnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInMilliseconds:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 329
    :goto_0
    monitor-exit p0

    .line 349
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAd()V
    .locals 6

    .prologue
    const-string v5, "MillennialMediaAdSDK"

    .line 644
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 651
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getMetaValues()Ljava/lang/String;

    move-result-object v2

    .line 652
    .local v2, "metaValues":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/millennialmedia/android/MMAdView;->testMode:Z

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MMAdView;->getTestMode(Z)V

    .line 653
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/MMAdView;->getAdType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "adTypeString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->baseUrl:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "sdkapid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&auid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ua="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->ua:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&mmisdk="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "3.6.3-10.10.26.a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->modeString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "adUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 661
    :cond_0
    const-string v3, "MillennialMediaAdSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calling for an advertisement: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v3

    new-instance v4, Lcom/millennialmedia/android/MMAdView$4;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/MMAdView$4;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/MMAdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 687
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdView;->loadUrl(Ljava/lang/String;)V

    .line 695
    .end local v0    # "adTypeString":Ljava/lang/String;
    .end local v1    # "adUrl":Ljava/lang/String;
    .end local v2    # "metaValues":Ljava/lang/String;
    :goto_0
    return-void

    .line 693
    :cond_1
    const-string v3, "MillennialMediaAdSDK"

    const-string v3, "No network available, can\'t call for ads."

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFirstAd(I)V
    .locals 1
    .param p1, "refreshInt"    # I

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->setRefreshIntervalForTimer(I)V

    .line 285
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->autoCallForAds:Z

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 291
    :cond_0
    return-void
.end method

.method private getMetaValues()Ljava/lang/String;
    .locals 3

    .prologue
    .line 484
    const-string v0, ""

    .line 486
    .local v0, "metaString":Ljava/lang/String;
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&age="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&gender="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&zip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v2, "single"

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v2, "married"

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v2, "divorced"

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v2, "swinger"

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v2, "relationship"

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v2, "engaged"

    if-ne v1, v2, :cond_4

    .line 503
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&marital="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    :cond_4
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&income="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&kw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    :cond_6
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    :cond_7
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&long="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    :cond_8
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&acid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    :cond_9
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&hsht="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    :cond_a
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&hswd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    :cond_b
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&ethnicity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    :cond_c
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    const-string v2, "straight"

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    const-string v2, "gay"

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    const-string v2, "bisexual"

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    const-string v2, "notsure"

    if-ne v1, v2, :cond_e

    .line 549
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    :cond_e
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&edu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    :cond_f
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&children="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    :cond_10
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&politics="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    :cond_11
    if-eqz v0, :cond_12

    move-object v1, v0

    .line 576
    :goto_0
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v11, 0x0

    const/4 v12, -0x3

    const-string v10, "MillennialMediaAdSDK"

    .line 184
    const/16 v9, 0x3ad6

    invoke-virtual {p0, v9}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 186
    const-string v9, "MillennialMediaAdSDK"

    const-string v9, "New MMAdView Started"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 191
    invoke-virtual {p0, v11}, Lcom/millennialmedia/android/MMAdView;->setBackgroundColor(I)V

    .line 192
    const-string v9, "android_id"

    iput-object v9, p0, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    .line 193
    invoke-virtual {p0, v11}, Lcom/millennialmedia/android/MMAdView;->setWillNotDraw(Z)V

    .line 194
    invoke-virtual {p0, v13}, Lcom/millennialmedia/android/MMAdView;->setClickable(Z)V

    .line 195
    new-instance v9, Lcom/millennialmedia/android/MMAdView$MMJSInterface;

    invoke-direct {v9, p0}, Lcom/millennialmedia/android/MMAdView$MMJSInterface;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    const-string v10, "interface"

    invoke-virtual {p0, v9, v10}, Lcom/millennialmedia/android/MMAdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/millennialmedia/android/MMAdView;->ua:Ljava/lang/String;

    .line 199
    const-string v9, "android_id"

    iput-object v9, p0, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    .line 202
    iget-object v9, p0, Lcom/millennialmedia/android/MMAdView;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 203
    .local v0, "activity":Landroid/app/Activity;
    iget-object v9, p0, Lcom/millennialmedia/android/MMAdView;->activityWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v9, :cond_0

    .line 259
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 213
    .local v6, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    const-string v9, "com.millennialmedia.android.VideoPlayer"

    invoke-direct {v3, v0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    .local v3, "cn":Landroid/content/ComponentName;
    const/16 v9, 0x80

    invoke-virtual {v6, v3, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 215
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "aiString":Ljava/lang/String;
    const-string v9, "MillennialMediaAdSDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Activity: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "aiString":Ljava/lang/String;
    .end local v3    # "cn":Landroid/content/ComponentName;
    :goto_1
    :try_start_1
    new-instance v3, Landroid/content/ComponentName;

    const-string v9, "com.millennialmedia.android.MMAdViewOverlayActivity"

    invoke-direct {v3, v0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    .restart local v3    # "cn":Landroid/content/ComponentName;
    const/16 v9, 0x80

    invoke-virtual {v6, v3, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 235
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .restart local v2    # "aiString":Ljava/lang/String;
    const-string v9, "MillennialMediaAdSDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Activity: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "aiString":Ljava/lang/String;
    .end local v3    # "cn":Landroid/content/ComponentName;
    :goto_2
    const-string v9, "phone"

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 251
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;

    .line 252
    const/4 v7, 0x0

    .line 255
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    iput-object v9, p0, Lcom/millennialmedia/android/MMAdView;->cm:Landroid/net/ConnectivityManager;

    .line 257
    iget v9, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInSeconds:I

    invoke-direct {p0, v9}, Lcom/millennialmedia/android/MMAdView;->getFirstAd(I)V

    goto :goto_0

    .line 217
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 219
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 221
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 222
    .local v8, "videoDialog":Landroid/app/AlertDialog;
    const-string v9, "Whoops!"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    const-string v9, "Looks like you forgot to declare the Millennial Media Video Player in your manifest file."

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 224
    const-string v9, "OK"

    new-instance v10, Lcom/millennialmedia/android/MMAdView$2;

    invoke-direct {v10, p0, v8}, Lcom/millennialmedia/android/MMAdView$2;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/app/AlertDialog;)V

    invoke-virtual {v8, v12, v9, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 228
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 237
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "videoDialog":Landroid/app/AlertDialog;
    :catch_1
    move-exception v9

    move-object v4, v9

    .line 239
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 240
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 241
    .local v5, "overlayDialog":Landroid/app/AlertDialog;
    const-string v9, "Whoops!"

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    const-string v9, "Looks like you forgot to declare the Millennial Media MMAdViewOverlayActivity in your manifest file."

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 243
    const-string v9, "OK"

    new-instance v10, Lcom/millennialmedia/android/MMAdView$3;

    invoke-direct {v10, p0, v5}, Lcom/millennialmedia/android/MMAdView$3;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v12, v9, v10}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 247
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_2
.end method

.method private setRefreshIntervalForTimer(I)V
    .locals 4
    .param p1, "refreshInterval"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "MillennialMediaAdSDK"

    .line 298
    if-ltz p1, :cond_0

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    .line 301
    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdView;->refreshTimerOn:Z

    .line 302
    const-string v0, "MillennialMediaAdSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Refresh interval is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Change to at least 30 to refresh ads."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    return-void

    .line 304
    :cond_0
    if-gez p1, :cond_1

    .line 308
    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdView;->refreshTimerOn:Z

    .line 309
    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdView;->autoCallForAds:Z

    .line 310
    const-string v0, "MillennialMediaAdSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Automatic ad fetching is off with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". You must manually call for ads."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :cond_1
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshTimerOn:Z

    .line 316
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshIntervalInMilliseconds:I

    .line 317
    invoke-direct {p0, v2}, Lcom/millennialmedia/android/MMAdView;->administerRefreshTimer(Z)V

    goto :goto_0
.end method

.method private stopUpdateTimer()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 277
    :cond_0
    return-void
.end method


# virtual methods
.method public callForAd()V
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->autoCallForAds:Z

    if-nez v0, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 634
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 718
    .local v0, "action":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 720
    const-string v1, "MillennialMediaAdSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad clicked: action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 721
    const-string v3, " x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 720
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/millennialmedia/android/MMAdView$5;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMAdView$5;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 782
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 784
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public getAdType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "adtype"    # Ljava/lang/String;

    .prologue
    const-string v2, "MillennialMediaAdSDK"

    const-string v1, "&adtype=MMBannerAdTop"

    .line 602
    const-string v0, "MMBannerAdTop"

    if-ne p1, v0, :cond_0

    .line 603
    const-string v0, "&adtype=MMBannerAdTop"

    move-object v0, v1

    .line 621
    :goto_0
    return-object v0

    .line 605
    :cond_0
    const-string v0, "MMBannerAdBottom"

    if-ne p1, v0, :cond_1

    .line 606
    const-string v0, "&adtype=MMBannerAdBottom"

    goto :goto_0

    .line 608
    :cond_1
    const-string v0, "MMBannerAdRectangle"

    if-ne p1, v0, :cond_2

    .line 609
    const-string v0, "&adtype=MMBannerAdRectangle"

    goto :goto_0

    .line 611
    :cond_2
    const-string v0, "MMFullScreenAdLaunch"

    if-ne p1, v0, :cond_3

    .line 612
    const-string v0, "&adtype=MMFullScreenAdLaunch"

    goto :goto_0

    .line 614
    :cond_3
    const-string v0, "MMFullScreenAdTransition"

    if-ne p1, v0, :cond_4

    .line 615
    const-string v0, "&adtype=MMFullScreenAdTransition"

    goto :goto_0

    .line 619
    :cond_4
    const-string v0, "MillennialMediaAdSDK"

    const-string v0, "******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS **********"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v0, "MillennialMediaAdSDK"

    const-string v0, "******* SDK DEFAULTED TO MMBannerAdTop. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v0, "&adtype=MMBannerAdTop"

    move-object v0, v1

    goto :goto_0
.end method

.method public getTestMode(Z)V
    .locals 2
    .param p1, "testMode"    # Z

    .prologue
    .line 588
    if-eqz p1, :cond_0

    .line 589
    const-string v0, "&mode=inapptest"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->modeString:Ljava/lang/String;

    .line 590
    const-string v0, "MillennialMediaAdSDK"

    const-string v1, "*********** advertising test mode **************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    return-void
.end method

.method public getWebView()Lcom/millennialmedia/android/MMAdView;
    .locals 0

    .prologue
    .line 704
    return-object p0
.end method

.method public halt()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->stopUpdateTimer()V

    .line 266
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "windowInFocus"    # Z

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshTimerOn:Z

    if-eqz v0, :cond_0

    .line 396
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->administerRefreshTimer(Z)V

    .line 397
    const-string v0, "MillennialMediaAdSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Window Focus Changed. Window in focus?: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    return-void
.end method

.method public setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/millennialmedia/android/MMAdView$MMAdListener;

    .prologue
    .line 1026
    monitor-enter p0

    .line 1028
    :try_start_0
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    .line 1026
    monitor-exit p0

    .line 1030
    return-void

    .line 1026
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMetaValues(Ljava/util/Hashtable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "metaHash":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "gender"

    const-string v4, "ethnicity"

    const-string v3, "education"

    const-string v2, "children"

    const-string v1, "age"

    .line 431
    const-string v0, "age"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string v0, "age"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    .line 434
    :cond_0
    const-string v0, "gender"

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    const-string v0, "gender"

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    .line 437
    :cond_1
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    .line 440
    :cond_2
    const-string v0, "marital"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    const-string v0, "marital"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    .line 443
    :cond_3
    const-string v0, "income"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 444
    const-string v0, "income"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    .line 446
    :cond_4
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 447
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    .line 449
    :cond_5
    const-string v0, "mmacid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 450
    const-string v0, "mmacid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 452
    :cond_6
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 453
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 455
    :cond_7
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 456
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 458
    :cond_8
    const-string v0, "ethnicity"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 459
    const-string v0, "ethnicity"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    .line 461
    :cond_9
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 462
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    .line 464
    :cond_a
    const-string v0, "education"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 465
    const-string v0, "education"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    .line 467
    :cond_b
    const-string v0, "children"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 468
    const-string v0, "children"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    .line 470
    :cond_c
    const-string v0, "politics"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 471
    const-string v0, "politics"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    .line 473
    :cond_d
    return-void
.end method

.method public startConversionTrackerWithGoalId(Ljava/lang/String;)V
    .locals 2
    .param p1, "goalId"    # Ljava/lang/String;

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->goalId:Ljava/lang/String;

    .line 1066
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/millennialmedia/android/MMAdView$6;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMAdView$6;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1083
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1088
    :goto_0
    return-void

    .line 1086
    :cond_0
    const-string v0, "MillennialMediaAdSDK"

    const-string v1, "No network available, can\'t call for ads."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public touchUpInside(Ljava/lang/String;)V
    .locals 13
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 797
    const-string v10, "MillennialMediaAdSDK"

    const-string v11, "touch event happened, touchUpInside called"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    if-eqz p1, :cond_2

    .line 801
    const/16 v9, 0xcc

    .line 802
    .local v9, "rc":I
    const/4 v7, 0x0

    .line 803
    .local v7, "mimeTypeString":Ljava/lang/String;
    move-object v6, p1

    .line 809
    .local v6, "locationString":Ljava/lang/String;
    :cond_0
    move-object v6, p1

    .line 810
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 811
    .local v2, "connectURL":Ljava/net/URL;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 812
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 813
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v10, "GET"

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 815
    const-string v10, "Location"

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 816
    const-string v10, "Content-Type"

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 817
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 819
    const-string v10, "urlapp"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Response Code:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-string v10, "urlapp"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Response Message:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const-string v10, "MillennialMediaAdSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "urlString: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 836
    const/16 v10, 0x12c

    if-lt v9, v10, :cond_1

    const/16 v10, 0x190

    if-lt v9, v10, :cond_0

    .line 838
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "connectURL":Ljava/net/URL;
    :cond_1
    :goto_0
    const-string v10, "MillennialMediaAdSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "locationString: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v10, p0, Lcom/millennialmedia/android/MMAdView;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 840
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_3

    .line 842
    const-string v10, "MillennialMediaAdSDK"

    const-string v11, "Activity is null. Returning from click"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v6    # "locationString":Ljava/lang/String;
    .end local v7    # "mimeTypeString":Ljava/lang/String;
    .end local v9    # "rc":I
    :cond_2
    :goto_1
    return-void

    .line 824
    .restart local v6    # "locationString":Ljava/lang/String;
    .restart local v7    # "mimeTypeString":Ljava/lang/String;
    .restart local v9    # "rc":I
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 828
    .local v4, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 831
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v10

    move-object v4, v10

    .line 833
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 858
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_3
    if-eqz v6, :cond_2

    .line 860
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 870
    .local v3, "destinationURI":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "https"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    const-string v10, "text/html"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 872
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/millennialmedia/android/MMAdViewOverlayActivity;

    invoke-direct {v5, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 873
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "canAccelerate"

    iget-boolean v11, p0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 874
    const-string v10, "overlayTransition"

    iget-object v11, p0, Lcom/millennialmedia/android/MMAdView;->overlayTransition:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    const-string v10, "transitionTime"

    iget-wide v11, p0, Lcom/millennialmedia/android/MMAdView;->transitionTime:J

    invoke-virtual {v5, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 876
    const-string v10, "shouldResizeOverlay"

    iget v11, p0, Lcom/millennialmedia/android/MMAdView;->shouldResizeOverlay:I

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    const-string v10, "shouldShowTitlebar"

    iget-boolean v11, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowTitlebar:Z

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 878
    const-string v10, "shouldShowNavbar"

    iget-boolean v11, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowNavbar:Z

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 879
    const-string v10, "overlayTitle"

    iget-object v11, p0, Lcom/millennialmedia/android/MMAdView;->overlayTitle:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    const-string v10, "MillennialMediaAdSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Accelerometer on?: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v12, p0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 885
    const/4 v10, 0x0

    invoke-virtual {v0, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 888
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "market"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 890
    const-string v10, "MillennialMediaAdSDK"

    const-string v11, "Android Market URL, launch the Market Application"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v8, v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 892
    .local v8, "myIntent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 894
    .end local v8    # "myIntent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "rtsp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "video/mp4"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "video/3gpp"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 899
    :cond_7
    const-string v10, "MillennialMediaAdSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Video, launch the video player for video at: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {v5, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 901
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 902
    const/4 v10, 0x0

    invoke-virtual {v0, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 904
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "tel"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 906
    const-string v10, "MillennialMediaAdSDK"

    const-string v11, "Telephone Number, launch the phone"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.DIAL"

    invoke-direct {v8, v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 908
    .restart local v8    # "myIntent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 910
    .end local v8    # "myIntent":Landroid/content/Intent;
    :cond_9
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 912
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".mp4"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".3gp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 915
    :cond_a
    const-string v10, "MillennialMediaAdSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Video, launch the video player for video at: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {v5, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 917
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 918
    const/4 v10, 0x0

    invoke-virtual {v0, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 923
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_b
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/millennialmedia/android/MMAdViewOverlayActivity;

    invoke-direct {v5, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 924
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v10, "canAccelerate"

    iget-boolean v11, p0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 925
    const-string v10, "overlayTransition"

    iget-object v11, p0, Lcom/millennialmedia/android/MMAdView;->overlayTransition:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    const-string v10, "transitionTime"

    iget-wide v11, p0, Lcom/millennialmedia/android/MMAdView;->transitionTime:J

    invoke-virtual {v5, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 927
    const-string v10, "shouldResizeOverlay"

    iget v11, p0, Lcom/millennialmedia/android/MMAdView;->shouldResizeOverlay:I

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 928
    const-string v10, "shouldShowTitlebar"

    iget-boolean v11, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowTitlebar:Z

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 929
    const-string v10, "shouldShowNavbar"

    iget-boolean v11, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowNavbar:Z

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 930
    const-string v10, "overlayTitle"

    iget-object v11, p0, Lcom/millennialmedia/android/MMAdView;->overlayTitle:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    const-string v10, "MillennialMediaAdSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Accelerometer on?: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v12, p0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 934
    const/4 v10, 0x0

    invoke-virtual {v0, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 937
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_c
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 941
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/millennialmedia/android/MMAdViewOverlayActivity;

    invoke-direct {v5, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 942
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v10, "canAccelerate"

    iget-boolean v11, p0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 943
    const-string v10, "overlayTransition"

    iget-object v11, p0, Lcom/millennialmedia/android/MMAdView;->overlayTransition:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    const-string v10, "transitionTime"

    iget-wide v11, p0, Lcom/millennialmedia/android/MMAdView;->transitionTime:J

    invoke-virtual {v5, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 945
    const-string v10, "shouldResizeOverlay"

    iget v11, p0, Lcom/millennialmedia/android/MMAdView;->shouldResizeOverlay:I

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 946
    const-string v10, "shouldShowTitlebar"

    iget-boolean v11, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowTitlebar:Z

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 947
    const-string v10, "shouldShowNavbar"

    iget-boolean v11, p0, Lcom/millennialmedia/android/MMAdView;->shouldShowNavbar:Z

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 948
    const-string v10, "overlayTitle"

    iget-object v11, p0, Lcom/millennialmedia/android/MMAdView;->overlayTitle:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    const-string v10, "MillennialMediaAdSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Accelerometer on?: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v12, p0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 952
    const/4 v10, 0x0

    invoke-virtual {v0, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 957
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_d
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v8, v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 958
    .restart local v8    # "myIntent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public updateUserLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "userLocation"    # Landroid/location/Location;

    .prologue
    .line 410
    if-eqz p1, :cond_1

    .line 411
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 412
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    .line 416
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 417
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    .line 420
    :cond_1
    return-void
.end method
