.class public Lcom/casee/adsdk/CaseeAdView;
.super Landroid/widget/RelativeLayout;
.source "CaseeAdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/casee/adsdk/CaseeAdView$ShowADHelper;,
        Lcom/casee/adsdk/CaseeAdView$AdListener;
    }
.end annotation


# static fields
.field static final CASEE_SDK_VERSION:Ljava/lang/String; = "2.3"

.field static final LOG_TAG:Ljava/lang/String; = "CASEE-AD"

.field static final MAX_FETCH_INTERVAL:I = 0xdbba0

.field static final MIN_FETCH_INTERVAL:I = 0x2710

.field static final SDK_UA:Ljava/lang/String; = "Android-CASEE-ADSDK"

.field static final TEST_SITE_ID:Ljava/lang/String; = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

.field private static isTesting:Z

.field static locProvider:Lcom/casee/adsdk/LocationProvider;

.field private static siteId:Ljava/lang/String;


# instance fields
.field private ad:Lcom/casee/adsdk/Ad;

.field private adStatus:Ljava/lang/Boolean;

.field private adViewHeight:I

.field private adViewWidth:I

.field private avg:Lcom/casee/adsdk/AdViewGroup;

.field private backgroundColor:I

.field private fetchAdInteral:I

.field private isShow:Z

.field private isShowingAd:Z

.field private listener:Lcom/casee/adsdk/CaseeAdView$AdListener;

.field private mScale:F

.field private random:Ljava/util/Random;

.field private scaleInParam:[[F

.field private scaleOutParam:[[F

.field private textColor:I

.field private textFontSize:F

.field private timer:Ljava/util/Timer;

.field private transParam:[[F

.field private uiHandler:Landroid/os/Handler;

.field private vertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrSet"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x6

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/casee/adsdk/CaseeAdView;->adStatus:Ljava/lang/Boolean;

    .line 51
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Random;-><init>(J)V

    iput-object v4, p0, Lcom/casee/adsdk/CaseeAdView;->random:Ljava/util/Random;

    .line 52
    iput v8, p0, Lcom/casee/adsdk/CaseeAdView;->adViewWidth:I

    .line 53
    iput v8, p0, Lcom/casee/adsdk/CaseeAdView;->adViewHeight:I

    .line 74
    const/high16 v4, -0x1000000

    iput v4, p0, Lcom/casee/adsdk/CaseeAdView;->backgroundColor:I

    .line 75
    const/4 v4, -0x1

    iput v4, p0, Lcom/casee/adsdk/CaseeAdView;->textColor:I

    .line 76
    const/high16 v4, 0x41800000    # 16.0f

    iput v4, p0, Lcom/casee/adsdk/CaseeAdView;->textFontSize:F

    .line 81
    const/16 v4, 0x7530

    iput v4, p0, Lcom/casee/adsdk/CaseeAdView;->fetchAdInteral:I

    .line 82
    iput-boolean v8, p0, Lcom/casee/adsdk/CaseeAdView;->vertical:Z

    .line 87
    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/casee/adsdk/CaseeAdView;->mScale:F

    .line 495
    const/4 v4, 0x4

    new-array v4, v4, [[F

    new-array v5, v9, [F

    fill-array-data v5, :array_0

    aput-object v5, v4, v8

    new-array v5, v9, [F

    fill-array-data v5, :array_1

    aput-object v5, v4, v10

    new-array v5, v9, [F

    fill-array-data v5, :array_2

    aput-object v5, v4, v11

    const/4 v5, 0x3

    new-array v6, v9, [F

    fill-array-data v6, :array_3

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/casee/adsdk/CaseeAdView;->transParam:[[F

    .line 590
    const/4 v4, 0x5

    new-array v4, v4, [[F

    new-array v5, v7, [F

    fill-array-data v5, :array_4

    aput-object v5, v4, v8

    new-array v5, v7, [F

    fill-array-data v5, :array_5

    aput-object v5, v4, v10

    new-array v5, v7, [F

    fill-array-data v5, :array_6

    aput-object v5, v4, v11

    const/4 v5, 0x3

    new-array v6, v7, [F

    fill-array-data v6, :array_7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v6, v7, [F

    fill-array-data v6, :array_8

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/casee/adsdk/CaseeAdView;->scaleOutParam:[[F

    .line 591
    const/4 v4, 0x5

    new-array v4, v4, [[F

    new-array v5, v7, [F

    fill-array-data v5, :array_9

    aput-object v5, v4, v8

    new-array v5, v7, [F

    fill-array-data v5, :array_a

    aput-object v5, v4, v10

    new-array v5, v7, [F

    fill-array-data v5, :array_b

    aput-object v5, v4, v11

    const/4 v5, 0x3

    new-array v6, v7, [F

    fill-array-data v6, :array_c

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v6, v7, [F

    fill-array-data v6, :array_d

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/casee/adsdk/CaseeAdView;->scaleInParam:[[F

    .line 142
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 143
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 144
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://schemas.android.com/apk/res/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "namespace":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 147
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.casee.adsdk.siteId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/casee/adsdk/CaseeAdView;->siteId:Ljava/lang/String;

    .line 148
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.casee.adsdk.isTesting"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/casee/adsdk/CaseeAdView;->isTesting:Z

    .line 150
    :cond_0
    sget-object v4, Lcom/casee/adsdk/CaseeAdView;->siteId:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/casee/adsdk/CaseeAdView;->siteId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3

    .line 151
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Site ID must be a string which contains 32 chars."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "namespace":Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CASEE-AD"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->startShowAd()V

    .line 167
    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->showAd()V

    .line 168
    return-void

    .line 154
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "namespace":Ljava/lang/String;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    if-eqz p2, :cond_2

    .line 155
    :try_start_1
    const-string v4, "refreshInterval"

    iget v5, p0, Lcom/casee/adsdk/CaseeAdView;->fetchAdInteral:I

    invoke-interface {p2, v2, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/casee/adsdk/CaseeAdView;->fetchAdInteral:I

    .line 156
    iget v4, p0, Lcom/casee/adsdk/CaseeAdView;->fetchAdInteral:I

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_4

    iget v4, p0, Lcom/casee/adsdk/CaseeAdView;->fetchAdInteral:I

    const v5, 0xdbba0

    if-le v4, v5, :cond_5

    .line 157
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Fetch interval must be between 15 secs and 15 mins."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 159
    :cond_5
    const-string v4, "textColor"

    iget v5, p0, Lcom/casee/adsdk/CaseeAdView;->textColor:I

    invoke-interface {p2, v2, v4, v5}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/casee/adsdk/CaseeAdView;->textColor:I

    .line 160
    const-string v4, "backgroundColor"

    iget v5, p0, Lcom/casee/adsdk/CaseeAdView;->backgroundColor:I

    invoke-interface {p2, v2, v4, v5}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/casee/adsdk/CaseeAdView;->backgroundColor:I

    .line 161
    const-string v4, "vertical"

    iget-boolean v5, p0, Lcom/casee/adsdk/CaseeAdView;->vertical:Z

    invoke-interface {p2, v2, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/casee/adsdk/CaseeAdView;->vertical:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 495
    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 590
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    .line 591
    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIII)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I
    .param p4, "siteId"    # Ljava/lang/String;
    .param p5, "isTesting"    # Z
    .param p6, "fetchAdInteral"    # I
    .param p7, "backgroundColor"    # I
    .param p8, "textColor"    # I

    .prologue
    .line 92
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIIIZ)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIIIFZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I
    .param p4, "siteId"    # Ljava/lang/String;
    .param p5, "isTesting"    # Z
    .param p6, "fetchAdInteral"    # I
    .param p7, "backgroundColor"    # I
    .param p8, "textColor"    # I
    .param p9, "textFontSize"    # F
    .param p10, "vertical"    # Z

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIIIZ)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIIIZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I
    .param p4, "siteId"    # Ljava/lang/String;
    .param p5, "isTesting"    # Z
    .param p6, "fetchAdInteral"    # I
    .param p7, "backgroundColor"    # I
    .param p8, "textColor"    # I
    .param p9, "vertical"    # Z

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->adStatus:Ljava/lang/Boolean;

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->random:Ljava/util/Random;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->adViewWidth:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->adViewHeight:I

    .line 74
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->backgroundColor:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->textColor:I

    .line 76
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->textFontSize:F

    .line 81
    const/16 v0, 0x7530

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->fetchAdInteral:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->vertical:Z

    .line 87
    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->mScale:F

    .line 495
    const/4 v0, 0x4

    new-array v0, v0, [[F

    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->transParam:[[F

    .line 590
    const/4 v0, 0x5

    new-array v0, v0, [[F

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->scaleOutParam:[[F

    .line 591
    const/4 v0, 0x5

    new-array v0, v0, [[F

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->scaleInParam:[[F

    .line 111
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Site ID must be a string which contains 32 chars."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    sput-object p4, Lcom/casee/adsdk/CaseeAdView;->siteId:Ljava/lang/String;

    .line 116
    sput-boolean p5, Lcom/casee/adsdk/CaseeAdView;->isTesting:Z

    .line 117
    const/16 v0, 0x2710

    if-lt p6, v0, :cond_2

    const v0, 0xdbba0

    if-le p6, v0, :cond_3

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fetch interval must be between 15 secs and 15 mins."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_3
    iput p6, p0, Lcom/casee/adsdk/CaseeAdView;->fetchAdInteral:I

    .line 123
    iput p7, p0, Lcom/casee/adsdk/CaseeAdView;->backgroundColor:I

    .line 124
    iput p8, p0, Lcom/casee/adsdk/CaseeAdView;->textColor:I

    .line 125
    iput-boolean p9, p0, Lcom/casee/adsdk/CaseeAdView;->vertical:Z

    .line 126
    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->startShowAd()V

    .line 127
    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->showAd()V

    .line 128
    return-void

    .line 495
    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 590
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    .line 591
    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method static synthetic access$000(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->showAd()V

    return-void
.end method

.method static synthetic access$100(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;
    .param p1, "x1"    # Lcom/casee/adsdk/AdViewGroup;
    .param p2, "x2"    # Lcom/casee/adsdk/AdViewGroup;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->fadeInNewAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/casee/adsdk/CaseeAdView;)I
    .locals 1
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 38
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->adViewWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/casee/adsdk/CaseeAdView;)I
    .locals 1
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 38
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->adViewHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;
    .param p1, "x1"    # Lcom/casee/adsdk/AdViewGroup;
    .param p2, "x2"    # Lcom/casee/adsdk/AdViewGroup;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->swapAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V

    return-void
.end method

.method static synthetic access$200(Lcom/casee/adsdk/CaseeAdView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;
    .param p1, "x1"    # Lcom/casee/adsdk/AdViewGroup;
    .param p2, "x2"    # Lcom/casee/adsdk/AdViewGroup;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->fadeIn3DFlipNewAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V

    return-void
.end method

.method static synthetic access$400(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;
    .param p1, "x1"    # Lcom/casee/adsdk/AdViewGroup;
    .param p2, "x2"    # Lcom/casee/adsdk/AdViewGroup;
    .param p3, "x3"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/casee/adsdk/CaseeAdView;->fadeInScaleNewAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/Ad;
    .locals 1
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->ad:Lcom/casee/adsdk/Ad;

    return-object v0
.end method

.method static synthetic access$502(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/Ad;)Lcom/casee/adsdk/Ad;
    .locals 0
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;
    .param p1, "x1"    # Lcom/casee/adsdk/Ad;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView;->ad:Lcom/casee/adsdk/Ad;

    return-object p1
.end method

.method static synthetic access$602(Lcom/casee/adsdk/CaseeAdView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/casee/adsdk/CaseeAdView;->isShowingAd:Z

    return p1
.end method

.method static synthetic access$700(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;
    .locals 1
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->listener:Lcom/casee/adsdk/CaseeAdView$AdListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->adStatus:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$802(Lcom/casee/adsdk/CaseeAdView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView;->adStatus:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/AdViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->avg:Lcom/casee/adsdk/AdViewGroup;

    return-object v0
.end method

.method static synthetic access$902(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;)Lcom/casee/adsdk/AdViewGroup;
    .locals 0
    .param p0, "x0"    # Lcom/casee/adsdk/CaseeAdView;
    .param p1, "x1"    # Lcom/casee/adsdk/AdViewGroup;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView;->avg:Lcom/casee/adsdk/AdViewGroup;

    return-object p1
.end method

.method private animTranslateAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;I)V
    .locals 11
    .param p1, "oldAvg"    # Lcom/casee/adsdk/AdViewGroup;
    .param p2, "avg"    # Lcom/casee/adsdk/AdViewGroup;
    .param p3, "i"    # I

    .prologue
    .line 500
    if-eqz p1, :cond_0

    .line 501
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/casee/adsdk/AdViewGroup;->setClickable(Z)V

    .line 502
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView;->transParam:[[F

    aget-object v2, v2, p3

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/casee/adsdk/CaseeAdView;->transParam:[[F

    aget-object v4, v4, p3

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/casee/adsdk/CaseeAdView;->transParam:[[F

    aget-object v6, v6, p3

    const/4 v7, 0x2

    aget v6, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/casee/adsdk/CaseeAdView;->transParam:[[F

    aget-object v8, v8, p3

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 507
    .local v0, "oldAnim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 508
    new-instance v2, Lcom/casee/adsdk/CaseeAdView$4;

    invoke-direct {v2, p0, p1}, Lcom/casee/adsdk/CaseeAdView$4;-><init>(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 524
    invoke-virtual {p1, v0}, Lcom/casee/adsdk/AdViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 526
    .end local v0    # "oldAnim":Landroid/view/animation/Animation;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/casee/adsdk/AdViewGroup;->setClickable(Z)V

    .line 527
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 528
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView;->transParam:[[F

    aget-object v3, v3, p3

    const/4 v4, 0x4

    aget v3, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/casee/adsdk/CaseeAdView;->transParam:[[F

    aget-object v5, v5, p3

    const/4 v6, 0x5

    aget v5, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/casee/adsdk/CaseeAdView;->transParam:[[F

    aget-object v7, v7, p3

    const/4 v8, 0x6

    aget v7, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/casee/adsdk/CaseeAdView;->transParam:[[F

    aget-object v9, v9, p3

    const/4 v10, 0x7

    aget v9, v9, v10

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 533
    .local v1, "animNew":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 534
    invoke-virtual {p2, v1}, Lcom/casee/adsdk/AdViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 535
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/casee/adsdk/AdViewGroup;->setClickable(Z)V

    .line 536
    const-string v2, "CASEE-AD"

    const-string v3, "display the ad successfully."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/casee/adsdk/CaseeAdView;->isShowingAd:Z

    .line 538
    return-void
.end method

.method private fadeIn3DFlipNewAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V
    .locals 6
    .param p1, "oldAvg"    # Lcom/casee/adsdk/AdViewGroup;
    .param p2, "avg"    # Lcom/casee/adsdk/AdViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 569
    if-eqz p1, :cond_0

    .line 570
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 571
    invoke-virtual {p0, p1}, Lcom/casee/adsdk/CaseeAdView;->removeView(Landroid/view/View;)V

    .line 573
    :cond_0
    invoke-virtual {p2, v5}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 574
    new-instance v0, Lcom/casee/adsdk/Flip3dAnimation;

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/casee/adsdk/Flip3dAnimation;-><init>(FFFF)V

    .line 575
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 576
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 577
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 578
    new-instance v1, Lcom/casee/adsdk/CaseeAdView$6;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/CaseeAdView$6;-><init>(Lcom/casee/adsdk/CaseeAdView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 583
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 584
    invoke-virtual {p2, v0}, Lcom/casee/adsdk/AdViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 585
    const-string v1, "CASEE-AD"

    const-string v2, "display the ad successfully."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iput-boolean v5, p0, Lcom/casee/adsdk/CaseeAdView;->isShowingAd:Z

    .line 587
    return-void
.end method

.method private fadeInNewAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V
    .locals 5
    .param p1, "oldAvg"    # Lcom/casee/adsdk/AdViewGroup;
    .param p2, "avg"    # Lcom/casee/adsdk/AdViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 461
    const/4 v1, 0x0

    .line 462
    .local v1, "first":Z
    if-eqz p1, :cond_0

    .line 463
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 464
    invoke-virtual {p0, p1}, Lcom/casee/adsdk/CaseeAdView;->removeView(Landroid/view/View;)V

    .line 468
    :goto_0
    invoke-virtual {p2, v4}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 470
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 471
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    if-eqz v1, :cond_1

    .line 472
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 476
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 477
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 478
    new-instance v2, Lcom/casee/adsdk/CaseeAdView$3;

    invoke-direct {v2, p0}, Lcom/casee/adsdk/CaseeAdView$3;-><init>(Lcom/casee/adsdk/CaseeAdView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 483
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 484
    invoke-virtual {p0, v0}, Lcom/casee/adsdk/CaseeAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 486
    const-string v2, "CASEE-AD"

    const-string v3, "display the ad successfully."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iput-boolean v4, p0, Lcom/casee/adsdk/CaseeAdView;->isShowingAd:Z

    .line 492
    return-void

    .line 466
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 474
    .restart local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_1
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_1
.end method

.method private fadeInScaleNewAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;I)V
    .locals 10
    .param p1, "oldAvg"    # Lcom/casee/adsdk/AdViewGroup;
    .param p2, "avg"    # Lcom/casee/adsdk/AdViewGroup;
    .param p3, "i"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 618
    if-eqz p1, :cond_0

    .line 619
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 620
    invoke-virtual {p0, p1}, Lcom/casee/adsdk/CaseeAdView;->removeView(Landroid/view/View;)V

    .line 622
    :cond_0
    invoke-virtual {p2, v9}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 623
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView;->scaleInParam:[[F

    aget-object v1, v1, p3

    aget v1, v1, v9

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView;->scaleInParam:[[F

    aget-object v2, v2, p3

    aget v2, v2, v5

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView;->scaleInParam:[[F

    aget-object v3, v3, p3

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/casee/adsdk/CaseeAdView;->scaleInParam:[[F

    aget-object v4, v4, p3

    const/4 v6, 0x3

    aget v4, v4, v6

    iget-object v6, p0, Lcom/casee/adsdk/CaseeAdView;->scaleInParam:[[F

    aget-object v6, v6, p3

    const/4 v7, 0x4

    aget v6, v6, v7

    iget-object v7, p0, Lcom/casee/adsdk/CaseeAdView;->scaleInParam:[[F

    aget-object v7, v7, p3

    const/4 v8, 0x5

    aget v8, v7, v8

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 624
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 625
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 626
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 627
    new-instance v1, Lcom/casee/adsdk/CaseeAdView$8;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/CaseeAdView$8;-><init>(Lcom/casee/adsdk/CaseeAdView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 632
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 633
    invoke-virtual {p2, v0}, Lcom/casee/adsdk/AdViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 634
    const-string v1, "CASEE-AD"

    const-string v2, "display the ad successfully."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iput-boolean v9, p0, Lcom/casee/adsdk/CaseeAdView;->isShowingAd:Z

    .line 636
    return-void
.end method

.method private fadeOut3DFlipOldAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V
    .locals 5
    .param p1, "oldAvg"    # Lcom/casee/adsdk/AdViewGroup;
    .param p2, "avg"    # Lcom/casee/adsdk/AdViewGroup;

    .prologue
    .line 542
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 543
    new-instance v0, Lcom/casee/adsdk/Flip3dAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/casee/adsdk/Flip3dAnimation;-><init>(FFFF)V

    .line 544
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 545
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 546
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 547
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 548
    new-instance v1, Lcom/casee/adsdk/CaseeAdView$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView$5;-><init>(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 565
    invoke-virtual {p1, v0}, Lcom/casee/adsdk/AdViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 566
    return-void
.end method

.method private fadeOutOldAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V
    .locals 3
    .param p1, "oldAvg"    # Lcom/casee/adsdk/AdViewGroup;
    .param p2, "avg"    # Lcom/casee/adsdk/AdViewGroup;

    .prologue
    .line 438
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 440
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 441
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 442
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 443
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 444
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 445
    new-instance v1, Lcom/casee/adsdk/CaseeAdView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView$2;-><init>(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 457
    invoke-virtual {p0, v0}, Lcom/casee/adsdk/CaseeAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 458
    return-void
.end method

.method private fadeOutScaleOldAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;I)V
    .locals 9
    .param p1, "oldAvg"    # Lcom/casee/adsdk/AdViewGroup;
    .param p2, "avg"    # Lcom/casee/adsdk/AdViewGroup;
    .param p3, "i"    # I

    .prologue
    const/4 v5, 0x1

    .line 593
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 594
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView;->scaleOutParam:[[F

    aget-object v1, v1, p3

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView;->scaleOutParam:[[F

    aget-object v2, v2, p3

    aget v2, v2, v5

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView;->scaleOutParam:[[F

    aget-object v3, v3, p3

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/casee/adsdk/CaseeAdView;->scaleOutParam:[[F

    aget-object v4, v4, p3

    const/4 v6, 0x3

    aget v4, v4, v6

    iget-object v6, p0, Lcom/casee/adsdk/CaseeAdView;->scaleOutParam:[[F

    aget-object v6, v6, p3

    const/4 v7, 0x4

    aget v6, v6, v7

    iget-object v7, p0, Lcom/casee/adsdk/CaseeAdView;->scaleOutParam:[[F

    aget-object v7, v7, p3

    const/4 v8, 0x5

    aget v8, v7, v8

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 595
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 596
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 597
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 598
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 599
    new-instance v1, Lcom/casee/adsdk/CaseeAdView$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/casee/adsdk/CaseeAdView$7;-><init>(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 614
    invoke-virtual {p1, v0}, Lcom/casee/adsdk/AdViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 615
    return-void
.end method

.method static getBuildID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method static getSiteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/casee/adsdk/CaseeAdView;->siteId:Ljava/lang/String;

    return-object v0
.end method

.method static getSysVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method static isTesting()Z
    .locals 1

    .prologue
    .line 253
    sget-boolean v0, Lcom/casee/adsdk/CaseeAdView;->isTesting:Z

    return v0
.end method

.method static setSiteId(Ljava/lang/String;)V
    .locals 0
    .param p0, "siteId"    # Ljava/lang/String;

    .prologue
    .line 250
    sput-object p0, Lcom/casee/adsdk/CaseeAdView;->siteId:Ljava/lang/String;

    .line 251
    return-void
.end method

.method private showAd()V
    .locals 2

    .prologue
    const-string v1, "CASEE-AD"

    .line 370
    iget-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->isShowingAd:Z

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 373
    :cond_0
    const-string v0, "CASEE-AD"

    const-string v0, "==================showAd()================"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->uiHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 375
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->uiHandler:Landroid/os/Handler;

    .line 377
    :cond_1
    iget-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->isShow:Z

    if-nez v0, :cond_2

    .line 378
    const-string v0, "CASEE-AD"

    const-string v0, "View is not shown, skip show ad."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 383
    const-string v0, "CASEE-AD"

    const-string v0, "View is invisible, pass show ad."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->isShowingAd:Z

    .line 388
    new-instance v0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;

    invoke-direct {v0, p0}, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;-><init>(Lcom/casee/adsdk/CaseeAdView;)V

    invoke-virtual {v0}, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->start()V

    goto :goto_0
.end method

.method private startShowAd()V
    .locals 6

    .prologue
    const-string v2, "CASEE-AD"

    .line 219
    sget-object v0, Lcom/casee/adsdk/CaseeAdView;->siteId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

    sget-object v1, Lcom/casee/adsdk/CaseeAdView;->siteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "CASEE-AD"

    const-string v0, "You are using the sample site ID. Before release your application, please use a formal site id which you get from CASEE."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->isShow:Z

    .line 223
    const-string v0, "CASEE-AD"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start to show ad: siteid - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/casee/adsdk/CaseeAdView;->siteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; isTesting - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/casee/adsdk/CaseeAdView;->isTesting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; interval - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/casee/adsdk/CaseeAdView;->fetchAdInteral:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v0, Lcom/casee/adsdk/CaseeAdView;->locProvider:Lcom/casee/adsdk/LocationProvider;

    if-nez v0, :cond_1

    .line 228
    new-instance v0, Lcom/casee/adsdk/LocationProvider;

    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/casee/adsdk/LocationProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/casee/adsdk/CaseeAdView;->locProvider:Lcom/casee/adsdk/LocationProvider;

    .line 229
    sget-object v0, Lcom/casee/adsdk/CaseeAdView;->locProvider:Lcom/casee/adsdk/LocationProvider;

    invoke-virtual {v0}, Lcom/casee/adsdk/LocationProvider;->start()V

    .line 232
    :cond_1
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->fetchAdInteral:I

    if-lez v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->timer:Ljava/util/Timer;

    if-nez v0, :cond_2

    .line 235
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->timer:Ljava/util/Timer;

    .line 236
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/casee/adsdk/CaseeAdView$1;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/CaseeAdView$1;-><init>(Lcom/casee/adsdk/CaseeAdView;)V

    iget v2, p0, Lcom/casee/adsdk/CaseeAdView;->fetchAdInteral:I

    int-to-long v2, v2

    iget v4, p0, Lcom/casee/adsdk/CaseeAdView;->fetchAdInteral:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 243
    :cond_2
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->timer:Ljava/util/Timer;

    .line 321
    :cond_0
    return-void
.end method

.method private swapAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V
    .locals 4
    .param p1, "oldAvg"    # Lcom/casee/adsdk/AdViewGroup;
    .param p2, "avg"    # Lcom/casee/adsdk/AdViewGroup;

    .prologue
    const/4 v2, 0x0

    const-string v3, "CASEE-AD"

    .line 395
    iget-boolean v1, p0, Lcom/casee/adsdk/CaseeAdView;->isShow:Z

    if-nez v1, :cond_0

    .line 396
    const-string v1, "CASEE-AD"

    const-string v1, "View is not shown, skip swap ad."

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iput-boolean v2, p0, Lcom/casee/adsdk/CaseeAdView;->isShowingAd:Z

    .line 434
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    const-string v1, "CASEE-AD"

    const-string v1, "View is invisible, pass swap ad."

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iput-boolean v2, p0, Lcom/casee/adsdk/CaseeAdView;->isShowingAd:Z

    goto :goto_0

    .line 407
    :cond_1
    iget v1, p0, Lcom/casee/adsdk/CaseeAdView;->backgroundColor:I

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 409
    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView;->random:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 410
    .local v0, "r":I
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2

    .line 411
    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView;->random:Ljava/util/Random;

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView;->transParam:[[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/casee/adsdk/CaseeAdView;->animTranslateAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;I)V

    goto :goto_0

    .line 413
    :cond_2
    const/16 v1, 0x32

    if-ge v0, v1, :cond_4

    .line 414
    if-eqz p1, :cond_3

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->fadeOut3DFlipOldAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V

    goto :goto_0

    .line 417
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->fadeIn3DFlipNewAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V

    goto :goto_0

    .line 420
    :cond_4
    const/16 v1, 0x50

    if-gt v0, v1, :cond_6

    .line 421
    if-eqz p1, :cond_5

    .line 422
    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView;->random:Ljava/util/Random;

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView;->scaleOutParam:[[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/casee/adsdk/CaseeAdView;->fadeOutScaleOldAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;I)V

    goto :goto_0

    .line 424
    :cond_5
    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView;->random:Ljava/util/Random;

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView;->scaleOutParam:[[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/casee/adsdk/CaseeAdView;->fadeInScaleNewAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;I)V

    goto :goto_0

    .line 428
    :cond_6
    if-eqz p1, :cond_7

    .line 429
    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->fadeOutOldAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V

    goto :goto_0

    .line 431
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/casee/adsdk/CaseeAdView;->fadeInNewAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdViewHeight()I
    .locals 1

    .prologue
    .line 700
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->adViewHeight:I

    return v0
.end method

.method public getAdViewWidth()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->adViewWidth:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->backgroundColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->textColor:I

    return v0
.end method

.method public getTextFontSize()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->textFontSize:F

    return v0
.end method

.method public hasAd()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->ad:Lcom/casee/adsdk/Ad;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVertical()Z
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->vertical:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->stopTimer()V

    .line 349
    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 353
    iget v1, p0, Lcom/casee/adsdk/CaseeAdView;->mScale:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/16 v1, 0x48

    move v0, v1

    .line 355
    .local v0, "hw":I
    :goto_0
    iget-boolean v1, p0, Lcom/casee/adsdk/CaseeAdView;->vertical:Z

    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/casee/adsdk/CaseeAdView;->setMeasuredDimension(II)V

    .line 357
    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->adViewWidth:I

    .line 358
    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/casee/adsdk/CaseeAdView;->adViewHeight:I

    .line 367
    :goto_1
    return-void

    .line 353
    .end local v0    # "hw":I
    :cond_0
    const/16 v1, 0x30

    move v0, v1

    goto :goto_0

    .line 361
    .restart local v0    # "hw":I
    :cond_1
    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/casee/adsdk/CaseeAdView;->setMeasuredDimension(II)V

    .line 362
    invoke-virtual {p0}, Lcom/casee/adsdk/CaseeAdView;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/casee/adsdk/CaseeAdView;->adViewWidth:I

    .line 363
    iput v0, p0, Lcom/casee/adsdk/CaseeAdView;->adViewHeight:I

    goto :goto_1
.end method

.method public onShown()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->isShow:Z

    .line 297
    return-void
.end method

.method public onUnshown()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/casee/adsdk/CaseeAdView;->isShow:Z

    .line 304
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "focus"    # Z

    .prologue
    const-string v1, "CASEE-AD"

    .line 307
    if-eqz p1, :cond_0

    .line 308
    const-string v0, "CASEE-AD"

    const-string v0, "Adview got focus, start ..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->startShowAd()V

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    const-string v0, "CASEE-AD"

    const-string v0, "Adview lost focus, cancel timer."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->stopTimer()V

    goto :goto_0
.end method

.method public setAdViewHeight(I)V
    .locals 0
    .param p1, "adViewHeight"    # I

    .prologue
    .line 704
    iput p1, p0, Lcom/casee/adsdk/CaseeAdView;->adViewHeight:I

    .line 705
    return-void
.end method

.method public setAdViewWidth(I)V
    .locals 0
    .param p1, "adViewWidth"    # I

    .prologue
    .line 696
    iput p1, p0, Lcom/casee/adsdk/CaseeAdView;->adViewWidth:I

    .line 697
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/casee/adsdk/CaseeAdView;->backgroundColor:I

    .line 274
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 275
    return-void
.end method

.method public setListener(Lcom/casee/adsdk/CaseeAdView$AdListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/casee/adsdk/CaseeAdView$AdListener;

    .prologue
    .line 176
    monitor-enter p0

    .line 178
    :try_start_0
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView;->listener:Lcom/casee/adsdk/CaseeAdView$AdListener;

    .line 179
    monitor-exit p0

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 281
    iput p1, p0, Lcom/casee/adsdk/CaseeAdView;->textColor:I

    .line 282
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->avg:Lcom/casee/adsdk/AdViewGroup;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->avg:Lcom/casee/adsdk/AdViewGroup;

    invoke-virtual {v0, p1}, Lcom/casee/adsdk/AdViewGroup;->setTextColor(I)V

    .line 285
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 324
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->avg:Lcom/casee/adsdk/AdViewGroup;

    if-nez v0, :cond_4

    .line 328
    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 332
    :goto_1
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->avg:Lcom/casee/adsdk/AdViewGroup;

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->avg:Lcom/casee/adsdk/AdViewGroup;

    invoke-virtual {v0, p1}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 336
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 338
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView;->avg:Lcom/casee/adsdk/AdViewGroup;

    if-nez v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/casee/adsdk/CaseeAdView;->showAd()V

    goto :goto_0

    .line 330
    :cond_4
    iget v0, p0, Lcom/casee/adsdk/CaseeAdView;->backgroundColor:I

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_1
.end method
