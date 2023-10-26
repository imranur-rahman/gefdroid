.class public Lcom/energysource/szj/embeded/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final AD_EXIT_FULL_SCREEN:I = 0x6

.field public static final AD_FILL_PARENT:I = 0x3e8

.field private static final AD_INTO_FULL_SCREEN:I = 0x5

.field static final AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

.field public static final AD_SIZE_1024_768:I = 0x8fe

.field public static final AD_SIZE_240_320:I = 0x4b1

.field public static final AD_SIZE_240_38:I = 0x44d

.field public static final AD_SIZE_320_240:I = 0x4b2

.field public static final AD_SIZE_320_480:I = 0x837

.field public static final AD_SIZE_320_50:I = 0x835

.field public static final AD_SIZE_468_60:I = 0x1fa6

.field public static final AD_SIZE_480_320:I = 0x836

.field public static final AD_SIZE_480_800:I = 0x515

.field public static final AD_SIZE_768_1024:I = 0x8ff

.field public static final AD_SIZE_800_480:I = 0x516

.field public static final Bottom_Banner:I = 0x51

.field public static final Bottom_Left:I = 0x53

.field public static final Bottom_Right:I = 0x55

.field private static final CLOSE_FULL_AD:I = 0x64

.field private static final DESTORY_ATONCE:I = 0xc9

.field private static final DESTORY_DELAY:I = 0xc8

.field public static final Middle_Banner:I = 0x11

.field private static final SHOWTYPEQR:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ADMANAGER"

.field private static final TRYREQUEST:I = 0x1

.field public static final Top_Banner:I = 0x31

.field public static final Top_Left:I = 0x33

.field public static final Top_Right:I = 0x35

.field public static handlerMsgCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final intArray:[Ljava/lang/Integer;

.field protected static isloadcount:I

.field private static permisJudge:Lcom/energysource/szj/embeded/PermissionJudge;

.field private static sdkConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityMap:Ljava/util/HashMap;

.field private adListener:Lcom/energysource/szj/embeded/AdListener;

.field private advIntoFlag:Z

.field private adviewMap:Ljava/util/HashMap;

.field private isDebug:Z

.field private layoutMap:Ljava/util/HashMap;

.field protected mActivity:Landroid/app/Activity;

.field final mAdViewList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/energysource/szj/embeded/AdView;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/widget/FrameLayout;

.field final mTimeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/energysource/szj/embeded/AdView$AdViewTime;",
            ">;"
        }
    .end annotation
.end field

.field webViewMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/energysource/szj/embeded/AdManager;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/AdManager;-><init>()V

    sput-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    .line 41
    sput v2, Lcom/energysource/szj/embeded/AdManager;->isloadcount:I

    .line 46
    new-instance v0, Lcom/energysource/szj/embeded/PermissionJudge;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/PermissionJudge;-><init>()V

    sput-object v0, Lcom/energysource/szj/embeded/AdManager;->permisJudge:Lcom/energysource/szj/embeded/PermissionJudge;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/energysource/szj/embeded/AdManager;->handlerMsgCountMap:Ljava/util/HashMap;

    .line 155
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/16 v2, 0x140

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x1e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x300

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/energysource/szj/embeded/AdManager;->intArray:[Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdManager;->mTimeList:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdManager;->layoutMap:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdManager;->activityMap:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/energysource/szj/embeded/AdManager;->isDebug:Z

    .line 39
    return-void
.end method

.method public static addAd(IIIII)V
    .locals 9
    .param p0, "id"    # I
    .param p1, "size"    # I
    .param p2, "align"    # I
    .param p3, "xMargin"    # I
    .param p4, "yMargin"    # I

    .prologue
    .line 365
    const/4 v2, 0x0

    .line 366
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v0, 0x0

    .line 367
    .local v0, "changeDipFlag":Z
    sget-object v1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v1, v1, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    const/16 v3, 0x140

    if-le v1, v3, :cond_0

    .line 368
    const/4 v0, 0x1

    .line 370
    :cond_0
    const/4 v3, 0x0

    .line 371
    .local v3, "w":I
    const/4 v1, 0x0

    .line 373
    .local v1, "h":I
    sparse-switch p1, :sswitch_data_0

    .line 482
    const-string v0, "ADMANAGER"

    .end local v0    # "changeDipFlag":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===add ad size(width):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 484
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo()V

    .line 487
    :cond_1
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    .line 488
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 490
    const/4 v4, 0x0

    .line 491
    .local v4, "width":I
    const/4 v0, 0x0

    .line 493
    .local v0, "height":I
    sget-object v2, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 494
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "height":I
    check-cast v0, Ljava/util/Map$Entry;

    .line 495
    .local v0, "en":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "en":Ljava/util/Map$Entry;
    check-cast v0, Ljava/lang/String;

    .line 496
    .local v0, "hm":Ljava/lang/String;
    const-string v4, ","

    .end local v4    # "width":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "values":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 498
    .restart local v4    # "width":I
    const/4 v5, 0x1

    aget-object v0, v0, v5

    .end local v0    # "values":[Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 499
    .local v0, "height":I
    const-string v5, "ADMANAGER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==get sizeno:width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    .end local v4    # "width":I
    .local v0, "changeDipFlag":Z
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :sswitch_0
    if-eqz v0, :cond_3

    .line 376
    const-string v0, "240"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 377
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "38"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 378
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 528
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    new-instance v0, Lcom/energysource/szj/embeded/AdView;

    .end local v0    # "h":I
    sget-object v2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    .end local v2    # "w":I
    iget-object v2, v2, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0}, Lcom/energysource/szj/embeded/AdView;-><init>(Landroid/content/Context;I)V

    .line 530
    .local v0, "adView":Lcom/energysource/szj/embeded/AdView;
    if-eqz v1, :cond_2

    .line 531
    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    .line 532
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 533
    invoke-virtual {v0, p1}, Lcom/energysource/szj/embeded/AdView;->setSizeNo(I)V

    .line 534
    sparse-switch p2, :sswitch_data_1

    .line 561
    :goto_2
    :sswitch_1
    sget-object p1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    .end local p1    # "size":I
    iget-object p1, p1, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 562
    .local p1, "rootView":Landroid/widget/FrameLayout;
    sget-object p2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    .end local p2    # "align":I
    iget-object p2, p2, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .end local p3    # "xMargin":I
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object p2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object p2, p2, Lcom/energysource/szj/embeded/AdManager;->layoutMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object p2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object p2, p2, Lcom/energysource/szj/embeded/AdManager;->activityMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .end local p0    # "id":I
    sget-object p3, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object p3, p3, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    .end local p1    # "rootView":Landroid/widget/FrameLayout;
    :cond_2
    return-void

    .line 380
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    .restart local p0    # "id":I
    .local p1, "size":I
    .restart local p2    # "align":I
    .restart local p3    # "xMargin":I
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0xf0

    const/16 v4, 0x26

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .local v8, "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 383
    .end local v8    # "h":I
    .local v0, "h":I
    goto :goto_1

    .line 385
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_2
    if-eqz v0, :cond_4

    .line 386
    const-string v0, "320"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 387
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "50"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 388
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 390
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_4
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x140

    const/16 v4, 0x32

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 392
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 394
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_3
    if-eqz v0, :cond_5

    .line 395
    const-string v0, "240"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 396
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "320"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 397
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 399
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0xf0

    const/16 v4, 0x140

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 401
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 403
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_4
    if-eqz v0, :cond_6

    .line 404
    const-string v0, "320"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 405
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "240"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 406
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 408
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x140

    const/16 v4, 0xf0

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 410
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 412
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_5
    if-eqz v0, :cond_7

    .line 413
    const-string v0, "480"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 414
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "320"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 415
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 417
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_7
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x1e0

    const/16 v4, 0x140

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 419
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 421
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_6
    if-eqz v0, :cond_8

    .line 422
    const-string v1, "320"

    .end local v1    # "h":I
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v3

    .line 423
    const-string v1, "480"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v1

    .line 424
    .restart local v1    # "h":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 429
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_3
    :sswitch_7
    if-eqz v0, :cond_9

    .line 430
    const-string v0, "768"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 431
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "1024"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 432
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 426
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_8
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x140

    const/16 v5, 0x1e0

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_3

    .line 434
    :cond_9
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x300

    const/16 v4, 0x400

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 436
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 438
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_8
    if-eqz v0, :cond_a

    .line 439
    const-string v0, "1024"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 440
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "768"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 441
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 443
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_a
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x400

    const/16 v4, 0x300

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 445
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 447
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_9
    if-eqz v0, :cond_b

    .line 448
    const-string v0, "468"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 449
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "60"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 450
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 452
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_b
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x1d4

    const/16 v4, 0x3c

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 454
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 457
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_a
    if-eqz v0, :cond_c

    .line 458
    const-string v0, "480"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 459
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "800"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 460
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 462
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_c
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x1e0

    const/16 v4, 0x320

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 464
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 467
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_b
    if-eqz v0, :cond_d

    .line 468
    const-string v0, "800"

    .end local v0    # "changeDipFlag":Z
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v2

    .line 469
    .end local v3    # "w":I
    .local v2, "w":I
    const-string v0, "480"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/energysource/szj/embeded/AdManager;->changeDipToPx(F)I

    move-result v0

    .line 470
    .end local v1    # "h":I
    .local v0, "h":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_1

    .line 472
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_d
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/16 v2, 0x320

    const/16 v4, 0x1e0

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 474
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 476
    .local v0, "changeDipFlag":Z
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :sswitch_c
    sget-object p1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    .end local p1    # "size":I
    iget-object p1, p1, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 477
    .end local v3    # "w":I
    .local v2, "w":I
    invoke-static {v2}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo(I)I

    move-result p1

    .line 478
    .restart local p1    # "size":I
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "changeDipFlag":Z
    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v8, v1

    .end local v1    # "h":I
    .restart local v8    # "h":I
    move-object v1, v0

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v8

    .line 479
    .end local v8    # "h":I
    .local v0, "h":I
    goto/16 :goto_1

    .line 501
    .local v0, "height":I
    .local v1, "h":I
    .local v2, "it":Ljava/util/Iterator;
    .restart local v3    # "w":I
    .restart local v4    # "width":I
    :cond_e
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "it":Ljava/util/Iterator;
    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v1

    .end local v1    # "h":I
    .local v0, "h":I
    move-object v1, v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .line 503
    .end local v3    # "w":I
    .local v2, "w":I
    goto/16 :goto_1

    .line 505
    .end local v0    # "h":I
    .end local v4    # "width":I
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_f
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo()V

    .line 507
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-nez v0, :cond_10

    .line 508
    const-string v0, "ADMANAGER"

    const-string v4, " get sizeno is null ....233"

    invoke-static {v0, v4}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .end local v1    # "h":I
    .restart local v0    # "h":I
    move-object v1, v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    goto/16 :goto_1

    .line 510
    .end local v0    # "h":I
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_10
    const/4 v4, 0x0

    .line 511
    .restart local v4    # "width":I
    const/4 v0, 0x0

    .line 513
    .local v0, "height":I
    sget-object v2, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 514
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "height":I
    check-cast v0, Ljava/util/Map$Entry;

    .line 515
    .local v0, "en":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "en":Ljava/util/Map$Entry;
    check-cast v0, Ljava/lang/String;

    .line 516
    .local v0, "hm":Ljava/lang/String;
    const-string v4, ","

    .end local v4    # "width":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "values":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 518
    .restart local v4    # "width":I
    const/4 v5, 0x1

    aget-object v0, v0, v5

    .end local v0    # "values":[Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 519
    .local v0, "height":I
    const-string v5, "ADMANAGER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==get sizeno:width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 521
    :cond_11
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "it":Ljava/util/Iterator;
    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v0, v1

    .end local v1    # "h":I
    .local v0, "h":I
    move-object v1, v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    goto/16 :goto_1

    .line 536
    .end local v2    # "w":I
    .end local v4    # "width":I
    .local v0, "adView":Lcom/energysource/szj/embeded/AdView;
    :sswitch_d
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 543
    :sswitch_e
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 544
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 547
    :sswitch_f
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 548
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 551
    :sswitch_10
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 552
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 555
    :sswitch_11
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 556
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .end local v0    # "adView":Lcom/energysource/szj/embeded/AdView;
    .local v1, "h":I
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "w":I
    :cond_12
    move v0, v1

    .end local v1    # "h":I
    .local v0, "h":I
    move-object v1, v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    move v2, v3

    .end local v3    # "w":I
    .local v2, "w":I
    goto/16 :goto_1

    .line 373
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_c
        0x44d -> :sswitch_0
        0x4b1 -> :sswitch_3
        0x4b2 -> :sswitch_4
        0x515 -> :sswitch_a
        0x516 -> :sswitch_b
        0x835 -> :sswitch_2
        0x836 -> :sswitch_5
        0x837 -> :sswitch_6
        0x8fe -> :sswitch_8
        0x8ff -> :sswitch_7
        0x1fa6 -> :sswitch_9
    .end sparse-switch

    .line 534
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_1
        0x31 -> :sswitch_d
        0x33 -> :sswitch_e
        0x35 -> :sswitch_10
        0x51 -> :sswitch_1
        0x53 -> :sswitch_f
        0x55 -> :sswitch_11
    .end sparse-switch
.end method

.method public static changeDipToPx(F)I
    .locals 9
    .param p0, "s"    # F

    .prologue
    .line 294
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v0

    .line 295
    .local v2, "t":D
    float-to-double v0, p0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    double-to-int v1, v0

    .line 299
    .local v1, "size":I
    sget-object p0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    .end local p0    # "s":F
    iget-object p0, p0, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v4, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 300
    .local v4, "w":I
    sget-object p0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object p0, p0, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 302
    .local p0, "h":I
    const/4 v5, 0x0

    .local v5, "width":I
    const/4 v0, 0x0

    .line 303
    .local v0, "height":I
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_2

    .line 304
    const-string v6, "ADMANAGER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==width:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    if-ge v4, p0, :cond_0

    .line 306
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "height":I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t:"

    .end local v5    # "width":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",\u5f53\u524d\u624b\u673a\u5206\u8fa8\u7387\u4e3a\uff1a"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-double v5, v4

    mul-double/2addr v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-double v5, p0

    mul-double/2addr v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "tmp":Ljava/lang/String;
    const-string v5, "ADMANAGER"

    invoke-static {v5, v0}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    int-to-double v4, v4

    mul-double/2addr v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 310
    .local v0, "width":I
    int-to-double v4, p0

    mul-double/2addr v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int p0, v4

    .line 322
    .end local v4    # "w":I
    .local p0, "height":I
    :goto_0
    return v1

    .line 311
    .local v0, "height":I
    .restart local v4    # "w":I
    .restart local v5    # "width":I
    .local p0, "h":I
    :cond_0
    if-le v4, p0, :cond_1

    .line 312
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "height":I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t:"

    .end local v5    # "width":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",\u5f53\u524d\u624b\u673a\u5206\u8fa8\u7387\u4e3a\uff1a"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-double v5, p0

    mul-double/2addr v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-double v5, v4

    mul-double/2addr v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "tmp":Ljava/lang/String;
    const-string v5, "ADMANAGER"

    invoke-static {v5, v0}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    int-to-double v5, p0

    mul-double/2addr v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-int v0, v5

    .line 316
    .local v0, "width":I
    int-to-double v4, v4

    mul-double/2addr v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int p0, v4

    .line 317
    .local p0, "height":I
    goto :goto_0

    .line 318
    .local v0, "height":I
    .restart local v5    # "width":I
    .local p0, "h":I
    :cond_1
    const-string v6, "ADMANAGER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5176\u5b83\uff1a,w:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .end local v4    # "w":I
    const-string v7, ",h:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "h":I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move p0, v0

    .end local v0    # "height":I
    .local p0, "height":I
    move v0, v5

    .end local v5    # "width":I
    .local v0, "width":I
    goto :goto_0
.end method

.method public static clearMemory()V
    .locals 0

    .prologue
    .line 946
    return-void
.end method

.method public static closeAdView(I)V
    .locals 7
    .param p0, "id"    # I

    .prologue
    const-string v6, "ADMANAGER"

    .line 685
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v4, v4, Lcom/energysource/szj/embeded/AdManager;->activityMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 686
    .local v0, "act":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 687
    const-string v4, "ADMANAGER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeAdView\u6ca1\u6709\u53d6\u5230\u5f53\u524dActivity,id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 692
    .local v3, "rootView":Landroid/widget/FrameLayout;
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v4, v4, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 693
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v4, v4, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/energysource/szj/embeded/AdView;

    .line 696
    .local v1, "adView":Lcom/energysource/szj/embeded/AdView;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/energysource/szj/embeded/AdView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 698
    .end local v1    # "adView":Lcom/energysource/szj/embeded/AdView;
    .end local v3    # "rootView":Landroid/widget/FrameLayout;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 699
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ADMANAGER"

    const-string v4, "closeAdView Exception:"

    invoke-static {v6, v4, v2}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeAllAdView()V
    .locals 4

    .prologue
    .line 709
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v2, v2, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 710
    sget-object v2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    sget-object v2, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v2, v2, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/energysource/szj/embeded/AdManager;->closeAdView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 713
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ADMANAGER"

    const-string v3, "=error="

    invoke-static {v2, v3, v0}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 715
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public static destoryAd()V
    .locals 12

    .prologue
    const-string v11, "ADMANAGER"

    .line 578
    const/4 v10, 0x0

    .line 579
    .local v10, "view":Lcom/energysource/szj/embeded/AdView;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 582
    .local v2, "adtime_out":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 583
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "view":Lcom/energysource/szj/embeded/AdView;
    check-cast v10, Lcom/energysource/szj/embeded/AdView;

    .line 584
    .restart local v10    # "view":Lcom/energysource/szj/embeded/AdView;
    if-nez v10, :cond_1

    .line 585
    const-string v0, "ADMANAGER"

    const-string v0, "===VIEW is null"

    invoke-static {v11, v0}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 588
    :cond_1
    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 590
    :try_start_0
    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getAdtime_in()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getTid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 592
    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getAdtime_in()J

    move-result-wide v0

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getShowtype()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/energysource/szj/embeded/AdManager;->saveAdViewShowTime(JJLjava/lang/String;I)V

    .line 594
    const-string v0, "ADMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010destoryAd===onDetachedFromWindow\u3011\uff1aadviewid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "=onDetachedFromWindow=\u5e7f\u544a\u6210\u529f\u5c55\u793a\u4e00\u6b21:\u3010\u65f6\u95f4\u3011:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getAdtime_in()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",tid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",showtype:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getShowtype()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "=="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 602
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 603
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "ADMANAGER"

    const-string v0, "onWindowVisibilityChanged:"

    invoke-static {v11, v0, v7}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 599
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v0, "ADMANAGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5e7f\u544a\u5c55\u793a\u65f6\u95f4\u8bb0\u5f55\u8fc7\u6ee4\uff1aadtime_in:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/energysource/szj/embeded/AdView;->getAdtime_in()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 611
    :cond_3
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setStartLoadFlag(Z)V

    .line 612
    new-instance v6, Lcom/energysource/szj/embeded/SZJClassLoad;

    invoke-direct {v6}, Lcom/energysource/szj/embeded/SZJClassLoad;-><init>()V

    .line 613
    .local v6, "cl":Lcom/energysource/szj/embeded/SZJClassLoad;
    invoke-virtual {v6}, Lcom/energysource/szj/embeded/SZJClassLoad;->stopModule()Z

    .line 614
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v9

    .line 615
    .local v9, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setModulesMap(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 616
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setDestoryFlag(Z)V

    .line 617
    const-string v0, "ADMANAGER"

    const-string v0, "==admanager \u603b\u7b97\u9500\u6bc1\u4e86=="

    invoke-static {v11, v0}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method private static getAppsec()Ljava/lang/String;
    .locals 9

    .prologue
    const-string v8, "ADMANAGER"

    const-string v7, ""

    .line 185
    :try_start_0
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v4, v4, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 186
    .local v3, "packagemanager":Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v4, v4, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 187
    .local v0, "applicationinfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 189
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "appsec"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "appsec":Ljava/lang/String;
    const-string v4, "ADMANAGER"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appsec from meta-data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    .line 196
    .end local v0    # "applicationinfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appsec":Ljava/lang/String;
    .end local v3    # "packagemanager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v4

    .line 193
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 194
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ADMANAGER"

    const-string v4, ""

    invoke-static {v8, v7, v2}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v4, ""

    move-object v4, v7

    goto :goto_0
.end method

.method private static getSizeNo(I)I
    .locals 11
    .param p0, "width"    # I

    .prologue
    const/4 v9, 0x0

    const-string v10, "ADMANAGER"

    .line 266
    sget-object v8, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-nez v8, :cond_0

    .line 267
    const-string v8, "ADMANAGER"

    const-string v8, "===getSizeNo null"

    invoke-static {v10, v8}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v8, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-direct {v8}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo()V

    .line 269
    sget-object v8, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-nez v8, :cond_0

    .line 270
    const-string v8, "ADMANAGER"

    const-string v8, "===getSizeNo null agagin"

    invoke-static {v10, v8}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 288
    :goto_0
    return v8

    .line 275
    :cond_0
    const/4 v3, 0x0

    .line 276
    .local v3, "sizeNo":I
    move v4, p0

    .line 277
    .local v4, "t":I
    sget-object v8, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 278
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 279
    .local v0, "en":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 280
    .local v1, "hm":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 281
    .local v7, "values":[Ljava/lang/String;
    aget-object v8, v7, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 282
    .local v6, "twidth":I
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 283
    .local v5, "theight":I
    if-lt p0, v6, :cond_1

    const/16 v8, 0xc8

    if-lt v8, v5, :cond_1

    sub-int v8, p0, v6

    if-le v4, v8, :cond_1

    .line 284
    sub-int v4, p0, v6

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    .end local v0    # "en":Ljava/util/Map$Entry;
    .end local v1    # "hm":Ljava/lang/String;
    .end local v5    # "theight":I
    .end local v6    # "twidth":I
    .end local v7    # "values":[Ljava/lang/String;
    :cond_2
    move v8, v3

    .line 288
    goto :goto_0
.end method

.method private getSizeNo()V
    .locals 5

    .prologue
    const-string v4, "bootableModule"

    .line 249
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v2

    .line 250
    .local v2, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v2}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getModulesMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 251
    .local v1, "chm":Ljava/util/concurrent/ConcurrentHashMap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 252
    const-string v3, "bootableModule"

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 253
    const-string v3, "bootableModule"

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/energysource/szj/android/SZJModule;

    .line 254
    .local v0, "bootable":Lcom/energysource/szj/android/SZJModule;
    invoke-interface {v0}, Lcom/energysource/szj/android/SZJModule;->getSizeNO()Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    .line 257
    .end local v0    # "bootable":Lcom/energysource/szj/android/SZJModule;
    :cond_0
    return-void
.end method

.method public static initAd(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appsec"    # Ljava/lang/String;

    .prologue
    const-string v7, "ADMANAGER"

    const-string v6, ""

    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, "flag":Z
    const-string v4, "ADMANAGER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " =====come in webViewMap.size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v5, v5, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v4, v4, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 210
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v2

    .line 211
    .local v2, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iput-object p0, v4, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 213
    .local v3, "rootView":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 214
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    check-cast v3, Landroid/widget/FrameLayout;

    .end local v3    # "rootView":Landroid/view/View;
    iput-object v3, v4, Lcom/energysource/szj/embeded/AdManager;->mRootView:Landroid/widget/FrameLayout;

    .line 216
    :cond_0
    invoke-virtual {v2}, Lcom/energysource/szj/embeded/SZJServiceInstance;->isStartLoadFlag()Z

    move-result v4

    if-nez v4, :cond_2

    .line 217
    const-string v4, "ADMANAGER"

    const-string v4, "===\u52a0\u8f7d\u7c7b\u3002\u3002\u3002\u3002\u53ea\u6267\u884c\u4e00\u6b21\u3002"

    invoke-static {v7, v4}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setStartLoadFlag(Z)V

    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setContext(Landroid/content/Context;)V

    .line 220
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setDestoryFlag(Z)V

    .line 221
    invoke-virtual {v2, p0}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setActivity(Landroid/app/Activity;)V

    .line 223
    const-string v4, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-static {}, Lcom/energysource/szj/embeded/AdManager;->getAppsec()Ljava/lang/String;

    move-result-object p1

    .line 227
    :cond_1
    if-nez p1, :cond_3

    const-string v4, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 228
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setAppsec(Ljava/lang/String;)V

    .line 232
    :goto_0
    new-instance v0, Lcom/energysource/szj/embeded/SZJClassLoad;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/SZJClassLoad;-><init>()V

    .line 234
    .local v0, "cl":Lcom/energysource/szj/embeded/SZJClassLoad;
    invoke-virtual {v0}, Lcom/energysource/szj/embeded/SZJClassLoad;->start()V

    .line 235
    const/4 v1, 0x1

    .line 237
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->handlerMsgCountMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 240
    .end local v0    # "cl":Lcom/energysource/szj/embeded/SZJClassLoad;
    :cond_2
    sget-object v4, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-direct {v4}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo()V

    .line 242
    sget v4, Lcom/energysource/szj/embeded/AdManager;->isloadcount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/energysource/szj/embeded/AdManager;->isloadcount:I

    .line 244
    return v1

    .line 230
    :cond_3
    invoke-virtual {v2, p1}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setAppsec(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openAdView(I)V
    .locals 11
    .param p0, "id"    # I

    .prologue
    const-string v6, "wljie"

    const-string v10, "==error=="

    const-string v9, "ADMANAGER"

    .line 635
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->activityMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 636
    .local v0, "act":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 637
    const-string v6, "ADMANAGER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openView\u6ca1\u6709\u53d6\u5230\u5f53\u524dActivity,id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    :try_start_0
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->layoutMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 642
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->layoutMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 643
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/energysource/szj/embeded/AdView;

    .line 645
    .local v1, "adView":Lcom/energysource/szj/embeded/AdView;
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 646
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->adviewMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    :cond_2
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->layoutMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 649
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->layoutMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_3
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->activityMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 652
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->activityMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v8, v8, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 655
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .local v5, "rootView":Landroid/widget/FrameLayout;
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v1, v6}, Lcom/energysource/szj/embeded/AdView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 664
    :goto_1
    :try_start_2
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v6, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 665
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v6, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 666
    const-string v6, "wljie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openAdView(int id)==(AD_MANAGER.mAdViewList.get(id)==null==============adView.getHeight()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/energysource/szj/embeded/AdView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 674
    .end local v1    # "adView":Lcom/energysource/szj/embeded/AdView;
    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "rootView":Landroid/widget/FrameLayout;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 675
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "ADMANAGER"

    const-string v6, "==error=="

    invoke-static {v9, v10, v2}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 660
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "adView":Lcom/energysource/szj/embeded/AdView;
    .restart local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5    # "rootView":Landroid/widget/FrameLayout;
    :catch_1
    move-exception v3

    .line 661
    .local v3, "e1":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v6, "ADMANAGER"

    const-string v7, "==error=="

    invoke-static {v6, v7, v3}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 668
    .end local v3    # "e1":Ljava/lang/IllegalStateException;
    :cond_5
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v6, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 669
    sget-object v6, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v6, v6, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v6, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 670
    const-string v6, "wljie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openAdView(int id)==(AD_MANAGER.mAdViewList.get(id)==null not ============adView.getHeight()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/energysource/szj/embeded/AdView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public static openAllAdView()V
    .locals 2

    .prologue
    .line 625
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v1, v1, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 626
    sget-object v1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    sget-object v1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v1, v1, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Lcom/energysource/szj/embeded/AdManager;->openAdView(I)V

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_0
    return-void
.end method

.method public static openDebug()V
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdManager;->setDebug(Z)V

    .line 110
    return-void
.end method

.method public static openDebugListener(Lcom/energysource/szj/android/DebugListener;)V
    .locals 1
    .param p0, "dl"    # Lcom/energysource/szj/android/DebugListener;

    .prologue
    .line 117
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v0

    .line 118
    .local v0, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v0, p0}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setDebugListener(Lcom/energysource/szj/android/DebugListener;)V

    .line 119
    return-void
.end method

.method public static openPermissionJudge()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->permisJudge:Lcom/energysource/szj/embeded/PermissionJudge;

    sget-object v1, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v1, v1, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/PermissionJudge;->setContext(Landroid/content/Context;)V

    .line 55
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->permisJudge:Lcom/energysource/szj/embeded/PermissionJudge;

    invoke-virtual {v0}, Lcom/energysource/szj/embeded/PermissionJudge;->openSwitchFlag()V

    .line 56
    return-void
.end method

.method protected static saveAdViewShowTime(JJLjava/lang/String;I)V
    .locals 7
    .param p0, "start"    # J
    .param p2, "end"    # J
    .param p4, "tid"    # Ljava/lang/String;
    .param p5, "showtype"    # I

    .prologue
    .line 726
    :try_start_0
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v0

    .line 727
    .local v0, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v0}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getModulesMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 729
    .local v0, "chm":Ljava/util/concurrent/ConcurrentHashMap;
    if-nez v0, :cond_0

    .line 730
    const-string p0, "ADMANAGER"

    .end local p0    # "start":J
    const-string p1, "\u5df2\u7ecf\u9500\u6bc1,chm==null"

    invoke-static {p0, p1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    .end local v0    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local p2    # "end":J
    :goto_0
    return-void

    .line 733
    .restart local v0    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local p0    # "start":J
    .restart local p2    # "end":J
    :cond_0
    const-string v1, "bootableModule"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    check-cast v0, Lcom/energysource/szj/android/SZJModule;

    .local v0, "framework":Lcom/energysource/szj/android/SZJModule;
    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    .line 735
    invoke-interface/range {v0 .. v6}, Lcom/energysource/szj/android/SZJModule;->saveShowNum(JJLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 737
    .end local v0    # "framework":Lcom/energysource/szj/android/SZJModule;
    .end local p0    # "start":J
    :catch_0
    move-exception p0

    .line 738
    .local p0, "e":Ljava/lang/Exception;
    const-string p1, "ADMANAGER"

    const-string p2, "=saveAdViewShowTime="

    .end local p2    # "end":J
    invoke-static {p1, p2, p0}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setAdListener(Lcom/energysource/szj/embeded/AdListener;)V
    .locals 1
    .param p0, "adListener"    # Lcom/energysource/szj/embeded/AdListener;

    .prologue
    .line 125
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iput-object p0, v0, Lcom/energysource/szj/embeded/AdManager;->adListener:Lcom/energysource/szj/embeded/AdListener;

    .line 126
    return-void
.end method


# virtual methods
.method public adViewLoadAdvObject(ILcom/energysource/szj/embeded/AdView;Lcom/energysource/szj/android/AdvObject;)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "adView"    # Lcom/energysource/szj/embeded/AdView;
    .param p3, "advObject"    # Lcom/energysource/szj/android/AdvObject;

    .prologue
    .line 838
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v9, v9, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    if-nez v9, :cond_0

    .line 839
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v9, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    .line 841
    :cond_0
    const/4 v0, 0x0

    .line 842
    .local v0, "awv":Lcom/energysource/szj/embeded/AdvWebView;
    const/4 v4, 0x0

    .line 844
    .local v4, "key":I
    const-string v9, "ADMANAGER"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====request id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "AD_MANAGER.webViewMap size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v11, v11, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v9, v9, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 848
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v9, v9, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 849
    .local v6, "tempMap":Ljava/util/HashMap;
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 850
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 851
    .local v1, "e":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/energysource/szj/embeded/AdvWebView;

    .line 852
    .local v7, "tempView":Lcom/energysource/szj/embeded/AdvWebView;
    const/4 v9, 0x4

    invoke-virtual {v7}, Lcom/energysource/szj/embeded/AdvWebView;->getVisibility()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 853
    const-string v9, "==AdView=="

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==tempView.getVisibility()=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/energysource/szj/embeded/AdvWebView;->getVisibility()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {p2, v7}, Lcom/energysource/szj/embeded/AdView;->removeView(Landroid/view/View;)V

    .line 855
    move-object v0, v7

    .line 856
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 858
    :cond_2
    const/16 v9, 0x8

    invoke-virtual {v7}, Lcom/energysource/szj/embeded/AdvWebView;->getVisibility()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 859
    const-string v9, "==AdView=="

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==View.GONE===tempView.getVisibility()=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/energysource/szj/embeded/AdvWebView;->getVisibility()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-virtual {p2, v7}, Lcom/energysource/szj/embeded/AdView;->removeView(Landroid/view/View;)V

    .line 861
    move-object v0, v7

    .line 862
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "e":Ljava/util/Map$Entry;
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 865
    .end local v7    # "tempView":Lcom/energysource/szj/embeded/AdvWebView;
    :cond_3
    if-nez v0, :cond_4

    .line 866
    new-instance v0, Lcom/energysource/szj/embeded/AdvWebView;

    .end local v0    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v9, v9, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v9}, Lcom/energysource/szj/embeded/AdvWebView;-><init>(Landroid/content/Context;)V

    .line 867
    .restart local v0    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/energysource/szj/embeded/AdvWebView;->setBackgroundColor(I)V

    .line 869
    :cond_4
    if-nez v4, :cond_6

    .line 870
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v9, v9, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    .end local v3    # "it":Ljava/util/Iterator;
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getWidth()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getHeight()I

    move-result v10

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 885
    .local v5, "p":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v5}, Lcom/energysource/szj/embeded/AdvWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_8

    .line 887
    const-wide/16 v9, 0xbb8

    invoke-virtual {v0, v9, v10}, Lcom/energysource/szj/embeded/AdvWebView;->setTime(J)V

    .line 891
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getTid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/energysource/szj/embeded/AdvWebView;->setTid(Ljava/lang/String;)V

    .line 892
    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getShowtype()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/energysource/szj/embeded/AdvWebView;->setShowType(I)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getWidth()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/energysource/szj/embeded/AdvWebView;->setResWidth(I)V

    .line 894
    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getHeight()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/energysource/szj/embeded/AdvWebView;->setResHeight(I)V

    .line 895
    invoke-virtual {v0}, Lcom/energysource/szj/embeded/AdvWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 896
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/energysource/szj/embeded/AdvWebView;->setVerticalScrollBarEnabled(Z)V

    .line 897
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/energysource/szj/embeded/AdvWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 898
    new-instance v2, Lcom/energysource/szj/embeded/EsScreen;

    invoke-direct {v2}, Lcom/energysource/szj/embeded/EsScreen;-><init>()V

    .line 899
    .local v2, "es":Lcom/energysource/szj/embeded/EsScreen;
    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getHeight()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/energysource/szj/embeded/EsScreen;->setHeight(I)V

    .line 900
    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getWidth()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/energysource/szj/embeded/EsScreen;->setWidth(I)V

    .line 903
    new-instance v8, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;

    invoke-direct {v8}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;-><init>()V

    .line 904
    .local v8, "webViewClient":Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;
    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getTid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->setTid(Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getResTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->setResTitle(Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getResContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->setResContent(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getShowtype()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->setShowtype(I)V

    .line 908
    invoke-virtual {v0, v8}, Lcom/energysource/szj/embeded/AdvWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 910
    const-string v9, "es"

    invoke-virtual {v0, v2, v9}, Lcom/energysource/szj/embeded/AdvWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 911
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/energysource/szj/embeded/AdvWebView;->loadUrl(Ljava/lang/String;)V

    .line 913
    const/16 p3, 0x0

    .line 914
    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {p2, v0, v9, v10}, Lcom/energysource/szj/embeded/AdView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 915
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/energysource/szj/embeded/AdvWebView;->setLast(Z)V

    .line 916
    const-string v9, "wljie"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====adView.getWidth():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/energysource/szj/embeded/AdView;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v9, "wljie"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====adView.getHeight():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/energysource/szj/embeded/AdView;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v9, "wljie"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====adView.getWidth():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/energysource/szj/embeded/AdView;->getResWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string v9, "wljie"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====adView.getHeight():"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/energysource/szj/embeded/AdView;->getResHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v9, p0, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 923
    iget-object v9, p0, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    invoke-virtual {v9, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 926
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v9, v9, Lcom/energysource/szj/embeded/AdManager;->adListener:Lcom/energysource/szj/embeded/AdListener;

    if-eqz v9, :cond_5

    invoke-virtual {p2}, Lcom/energysource/szj/embeded/AdView;->getChildCount()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_5

    .line 927
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v9, v9, Lcom/energysource/szj/embeded/AdManager;->adListener:Lcom/energysource/szj/embeded/AdListener;

    invoke-interface {v9, p2}, Lcom/energysource/szj/embeded/AdListener;->receiveAd(Lcom/energysource/szj/embeded/AdView;)V

    .line 929
    :cond_5
    return-void

    .line 873
    .end local v2    # "es":Lcom/energysource/szj/embeded/EsScreen;
    .end local v5    # "p":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "webViewClient":Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;
    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_6
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v9, v9, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 877
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v6    # "tempMap":Ljava/util/HashMap;
    :cond_7
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 878
    .restart local v6    # "tempMap":Ljava/util/HashMap;
    new-instance v0, Lcom/energysource/szj/embeded/AdvWebView;

    .end local v0    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v9, v9, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v9}, Lcom/energysource/szj/embeded/AdvWebView;-><init>(Landroid/content/Context;)V

    .line 879
    .restart local v0    # "awv":Lcom/energysource/szj/embeded/AdvWebView;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/energysource/szj/embeded/AdvWebView;->setBackgroundColor(I)V

    .line 880
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v9, v9, Lcom/energysource/szj/embeded/AdManager;->webViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 889
    .restart local v5    # "p":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/energysource/szj/android/AdvObject;->getTime()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/energysource/szj/embeded/AdvWebView;->setTime(J)V

    goto/16 :goto_2
.end method

.method protected getContextFromActivity()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 936
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 941
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 938
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/energysource/szj/embeded/AdManager;->requestAdvById(I)V

    goto :goto_0

    .line 936
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected requestAdvById(I)V
    .locals 26
    .param p1, "id"    # I

    .prologue
    .line 749
    :try_start_0
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v13

    .line 750
    .local v13, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v13}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getModulesMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    .line 751
    .local v7, "chm":Ljava/util/concurrent/ConcurrentHashMap;
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v23

    if-lez v23, :cond_b

    .line 753
    sget-object v23, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-nez v23, :cond_0

    .line 754
    sget-object v23, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-direct/range {v23 .. v23}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo()V

    .line 756
    :cond_0
    const-string v23, "bootableModule"

    move-object v0, v7

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/energysource/szj/android/SZJModule;

    .line 757
    .local v6, "bootable":Lcom/energysource/szj/android/SZJModule;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mAdViewList:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/energysource/szj/embeded/AdView;

    .line 758
    .local v4, "adView":Lcom/energysource/szj/embeded/AdView;
    const/16 v17, 0x0

    .line 759
    .local v17, "sizeNo":I
    if-eqz v4, :cond_7

    .line 760
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/AdView;->getSizeNo()I

    move-result v23

    if-nez v23, :cond_8

    .line 761
    const/16 v16, 0x1

    .line 762
    .local v16, "sf":Z
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/AdView;->getResWidth()I

    move-result v22

    .line 763
    .local v22, "width":I
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/AdView;->getResHeight()I

    move-result v11

    .line 764
    .local v11, "height":I
    if-nez v22, :cond_1

    .line 765
    sget-object v23, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getWidth()I

    move-result v22

    .line 768
    :cond_1
    if-nez v11, :cond_2

    .line 769
    const/16 v11, 0xc8

    .line 772
    :cond_2
    sget-object v23, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    if-eqz v23, :cond_4

    .line 773
    const-string v23, "newZip"

    const-string v24, "check sdkConfig====="

    invoke-static/range {v23 .. v24}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    move/from16 v18, v22

    .line 777
    .local v18, "t":I
    sget-object v23, Lcom/energysource/szj/embeded/AdManager;->sdkConfigMap:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "it":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 778
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 779
    .local v9, "en":Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 780
    .local v12, "hm":Ljava/lang/String;
    const-string v23, ","

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 781
    .local v21, "values":[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v23, v21, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 782
    .local v20, "twidth":I
    const/16 v23, 0x1

    aget-object v23, v21, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 783
    .local v19, "theight":I
    move/from16 v0, v22

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    const/16 v23, 0xc8

    move/from16 v0, v23

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    sub-int v23, v22, v20

    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 784
    sub-int v18, v22, v20

    .line 785
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto :goto_0

    .line 789
    .end local v9    # "en":Ljava/util/Map$Entry;
    .end local v12    # "hm":Ljava/lang/String;
    .end local v14    # "it":Ljava/util/Iterator;
    .end local v18    # "t":I
    .end local v19    # "theight":I
    .end local v20    # "twidth":I
    .end local v21    # "values":[Ljava/lang/String;
    :cond_4
    sget-object v23, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-direct/range {v23 .. v23}, Lcom/energysource/szj/embeded/AdManager;->getSizeNo()V

    .line 792
    :cond_5
    const-string v23, "wljie"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "sizeNo========"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/energysource/szj/embeded/AdView;->setSizeNo(I)V

    .line 797
    .end local v11    # "height":I
    .end local v16    # "sf":Z
    .end local v22    # "width":I
    :goto_1
    if-eqz v17, :cond_7

    if-eqz v6, :cond_7

    .line 798
    invoke-virtual {v13}, Lcom/energysource/szj/embeded/SZJServiceInstance;->isDestoryFlag()Z

    move-result v23

    if-nez v23, :cond_7

    .line 799
    const/16 v23, 0x4

    if-nez v23, :cond_6

    const/16 v23, 0x8

    if-eqz v23, :cond_7

    .line 800
    :cond_6
    const/16 v23, 0x8

    move-object v0, v6

    move/from16 v1, v17

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/energysource/szj/android/SZJModule;->requestAd(II)Lcom/energysource/szj/android/AdvObject;

    move-result-object v5

    .line 801
    .local v5, "advObject":Lcom/energysource/szj/android/AdvObject;
    if-eqz v5, :cond_9

    .line 802
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/energysource/szj/embeded/AdManager;->adViewLoadAdvObject(ILcom/energysource/szj/embeded/AdView;Lcom/energysource/szj/android/AdvObject;)V

    .line 829
    .end local v4    # "adView":Lcom/energysource/szj/embeded/AdView;
    .end local v5    # "advObject":Lcom/energysource/szj/android/AdvObject;
    .end local v6    # "bootable":Lcom/energysource/szj/android/SZJModule;
    .end local v7    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v13    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .end local v17    # "sizeNo":I
    :cond_7
    :goto_2
    return-void

    .line 795
    .restart local v4    # "adView":Lcom/energysource/szj/embeded/AdView;
    .restart local v6    # "bootable":Lcom/energysource/szj/android/SZJModule;
    .restart local v7    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local v13    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .restart local v17    # "sizeNo":I
    :cond_8
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/AdView;->getSizeNo()I

    move-result v17

    goto :goto_1

    .line 804
    .restart local v5    # "advObject":Lcom/energysource/szj/android/AdvObject;
    :cond_9
    sget-object v23, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->adListener:Lcom/energysource/szj/embeded/AdListener;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 805
    sget-object v23, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/energysource/szj/embeded/AdManager;->adListener:Lcom/energysource/szj/embeded/AdListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-interface {v0, v1}, Lcom/energysource/szj/embeded/AdListener;->failedReceiveAd(Lcom/energysource/szj/embeded/AdView;)V

    .line 807
    :cond_a
    const-string v23, "==AdView=="

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "return AdWebView is null.try late!===1===="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 809
    .local v10, "h":Landroid/os/Handler;
    move-object v0, v10

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v15

    .line 810
    .local v15, "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object v1, v15

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 811
    const-wide/16 v23, 0x1388

    move-object v0, v10

    move-object v1, v15

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 826
    .end local v4    # "adView":Lcom/energysource/szj/embeded/AdView;
    .end local v5    # "advObject":Lcom/energysource/szj/android/AdvObject;
    .end local v6    # "bootable":Lcom/energysource/szj/android/SZJModule;
    .end local v7    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v10    # "h":Landroid/os/Handler;
    .end local v13    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .end local v15    # "msg":Landroid/os/Message;
    .end local v17    # "sizeNo":I
    :catch_0
    move-exception v23

    move-object/from16 v8, v23

    .line 827
    .local v8, "e":Ljava/lang/Exception;
    const-string v23, "ADMANAGER"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 818
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local v13    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    :cond_b
    :try_start_1
    invoke-virtual {v13}, Lcom/energysource/szj/embeded/SZJServiceInstance;->isDestoryFlag()Z

    move-result v23

    if-nez v23, :cond_7

    .line 820
    const-string v23, "==AdView=="

    const-string v24, "wait load class.5"

    invoke-static/range {v23 .. v24}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v23

    move-object v0, v10

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 822
    .restart local v10    # "h":Landroid/os/Handler;
    move-object v0, v10

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v15

    .line 823
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object v1, v15

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 824
    const-wide/16 v23, 0x7d0

    move-object v0, v10

    move-object v1, v15

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method protected setDebug(Z)V
    .locals 1
    .param p1, "isDebug"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/energysource/szj/embeded/AdManager;->isDebug:Z

    .line 101
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v0

    .line 102
    .local v0, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v0, p1}, Lcom/energysource/szj/embeded/SZJServiceInstance;->setDebug(Z)V

    .line 103
    return-void
.end method
