.class public Lcom/adview/AdViewLayout;
.super Landroid/widget/RelativeLayout;
.source "AdViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adview/AdViewLayout$AdViewInterface;,
        Lcom/adview/AdViewLayout$HandleAdRunnable;,
        Lcom/adview/AdViewLayout$InitRunnable;,
        Lcom/adview/AdViewLayout$PingUrlRunnable;,
        Lcom/adview/AdViewLayout$RotateAdRunnable;,
        Lcom/adview/AdViewLayout$ViewAdRunnable;
    }
.end annotation


# instance fields
.field public activeRation:Lcom/adview/obj/Ration;

.field public final activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public adViewInterface:Lcom/adview/AdViewLayout$AdViewInterface;

.field public adViewManager:Lcom/adview/AdViewManager;

.field public extra:Lcom/adview/obj/Extra;

.field public final handler:Landroid/os/Handler;

.field private hasWindow:Z

.field private isScheduled:Z

.field private keyAdView:Ljava/lang/String;

.field private maxHeight:I

.field private maxWidth:I

.field public nextRation:Lcom/adview/obj/Ration;

.field public final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field public superViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "keyAdView"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->superViewReference:Ljava/lang/ref/WeakReference;

    .line 66
    iput-object p2, p0, Lcom/adview/AdViewLayout;->keyAdView:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/adview/AdViewLayout;->hasWindow:Z

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    .line 72
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 73
    iput-boolean v1, p0, Lcom/adview/AdViewLayout;->isScheduled:Z

    .line 74
    iget-object v0, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adview/AdViewLayout$InitRunnable;

    invoke-direct {v1, p0, p2}, Lcom/adview/AdViewLayout$InitRunnable;-><init>(Lcom/adview/AdViewLayout;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 76
    invoke-virtual {p0, v5}, Lcom/adview/AdViewLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 77
    invoke-virtual {p0, v5}, Lcom/adview/AdViewLayout;->setVerticalScrollBarEnabled(Z)V

    .line 79
    iput v5, p0, Lcom/adview/AdViewLayout;->maxWidth:I

    .line 80
    iput v5, p0, Lcom/adview/AdViewLayout;->maxHeight:I

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/adview/AdViewLayout;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/adview/AdViewLayout;->hasWindow:Z

    return v0
.end method

.method static synthetic access$1(Lcom/adview/AdViewLayout;Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/adview/AdViewLayout;->isScheduled:Z

    return-void
.end method

.method static synthetic access$2(Lcom/adview/AdViewLayout;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/adview/AdViewLayout;->rotateAd()V

    return-void
.end method

.method static synthetic access$3(Lcom/adview/AdViewLayout;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/adview/AdViewLayout;->handleAd()V

    return-void
.end method

.method private countClick()V
    .locals 6

    .prologue
    .line 204
    iget-object v1, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    if-eqz v1, :cond_0

    .line 206
    sget-object v1, Lcom/adview/util/AdViewUtil;->urlClick:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    iget-object v4, v4, Lcom/adview/AdViewManager;->keyAdView:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    iget v4, v4, Lcom/adview/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    iget-object v4, v4, Lcom/adview/AdViewManager;->deviceIDHash:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    iget-object v4, v4, Lcom/adview/AdViewManager;->localeString:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/adview/AdViewLayout$PingUrlRunnable;

    invoke-direct {v2, v0}, Lcom/adview/AdViewLayout$PingUrlRunnable;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 210
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private countImpression()V
    .locals 6

    .prologue
    .line 195
    iget-object v1, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    if-eqz v1, :cond_0

    .line 197
    sget-object v1, Lcom/adview/util/AdViewUtil;->urlImpression:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    iget-object v4, v4, Lcom/adview/AdViewManager;->keyAdView:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    iget v4, v4, Lcom/adview/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    iget-object v4, v4, Lcom/adview/AdViewManager;->deviceIDHash:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    iget-object v4, v4, Lcom/adview/AdViewManager;->localeString:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/adview/AdViewLayout$PingUrlRunnable;

    invoke-direct {v2, v0}, Lcom/adview/AdViewLayout$PingUrlRunnable;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 201
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleAd()V
    .locals 7

    .prologue
    const-string v6, "AdView SDK"

    .line 134
    iget-object v2, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    if-nez v2, :cond_1

    .line 135
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const-string v2, "AdView SDK"

    const-string v2, "nextRation is null!"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    .line 154
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string v2, "Showing ad:\nname: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    iget-object v5, v5, Lcom/adview/obj/Ration;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "rationInfo":Ljava/lang/String;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    const-string v2, "AdView SDK"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    invoke-static {p0, v2}, Lcom/adview/adapters/AdViewAdapter;->handle(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 149
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    const-string v2, "AdView SDK"

    const-string v2, "Caught an exception in adapter:"

    invoke-static {v6, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/adview/AdViewLayout;->rollover()V

    goto :goto_0
.end method

.method private rotateAd()V
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/adview/AdViewLayout;->hasWindow:Z

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adview/AdViewLayout;->isScheduled:Z

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "AdView SDK"

    const-string v1, "Rotating Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v0}, Lcom/adview/AdViewManager;->getRation()Lcom/adview/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    .line 128
    iget-object v0, p0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adview/AdViewLayout$HandleAdRunnable;

    invoke-direct {v1, p0}, Lcom/adview/AdViewLayout$HandleAdRunnable;-><init>(Lcom/adview/AdViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 227
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 216
    :pswitch_0
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    const-string v0, "AdView SDK"

    const-string v1, "Intercepted ACTION_DOWN event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/adview/AdViewLayout;->countClick()V

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, -0x80000000

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 86
    .local v1, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 88
    .local v0, "heightSize":I
    iget v2, p0, Lcom/adview/AdViewLayout;->maxWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/adview/AdViewLayout;->maxWidth:I

    if-le v1, v2, :cond_0

    .line 89
    iget v2, p0, Lcom/adview/AdViewLayout;->maxWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 92
    :cond_0
    iget v2, p0, Lcom/adview/AdViewLayout;->maxHeight:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/adview/AdViewLayout;->maxHeight:I

    if-le v0, v2, :cond_1

    .line 93
    iget v2, p0, Lcom/adview/AdViewLayout;->maxHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 96
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 97
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    .line 101
    if-nez p1, :cond_2

    .line 102
    iput-boolean v1, p0, Lcom/adview/AdViewLayout;->hasWindow:Z

    .line 103
    iget-boolean v0, p0, Lcom/adview/AdViewLayout;->isScheduled:Z

    if-nez v0, :cond_0

    .line 104
    iput-boolean v1, p0, Lcom/adview/AdViewLayout;->isScheduled:Z

    .line 106
    iget-object v0, p0, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/adview/AdViewLayout;->rotateThreadedNow()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adview/AdViewLayout$InitRunnable;

    iget-object v2, p0, Lcom/adview/AdViewLayout;->keyAdView:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/adview/AdViewLayout$InitRunnable;-><init>(Lcom/adview/AdViewLayout;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 115
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adview/AdViewLayout;->hasWindow:Z

    goto :goto_0
.end method

.method public pushSubView(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "subView"    # Landroid/view/ViewGroup;

    .prologue
    .line 170
    iget-object v2, p0, Lcom/adview/AdViewLayout;->superViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 171
    .local v1, "superView":Landroid/widget/RelativeLayout;
    if-nez v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 175
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    const-string v2, "AdView SDK"

    const-string v3, "Added subview"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    iput-object v2, p0, Lcom/adview/AdViewLayout;->activeRation:Lcom/adview/obj/Ration;

    .line 182
    invoke-direct {p0}, Lcom/adview/AdViewLayout;->countImpression()V

    goto :goto_0
.end method

.method public rollover()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v0}, Lcom/adview/AdViewManager;->getRollover()Lcom/adview/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    .line 187
    iget-object v0, p0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adview/AdViewLayout$HandleAdRunnable;

    invoke-direct {v1, p0}, Lcom/adview/AdViewLayout$HandleAdRunnable;-><init>(Lcom/adview/AdViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method

.method public rollover_pri()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v0}, Lcom/adview/AdViewManager;->getRollover_pri()Lcom/adview/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewLayout;->nextRation:Lcom/adview/obj/Ration;

    .line 192
    iget-object v0, p0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adview/AdViewLayout$HandleAdRunnable;

    invoke-direct {v1, p0}, Lcom/adview/AdViewLayout$HandleAdRunnable;-><init>(Lcom/adview/AdViewLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method public rotateThreadedDelayed()V
    .locals 5

    .prologue
    .line 163
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "AdView SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Will call rotateAd() in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    iget v2, v2, Lcom/adview/obj/Extra;->cycleTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adview/AdViewLayout$RotateAdRunnable;

    invoke-direct {v1, p0}, Lcom/adview/AdViewLayout$RotateAdRunnable;-><init>(Lcom/adview/AdViewLayout;)V

    iget-object v2, p0, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    iget v2, v2, Lcom/adview/obj/Extra;->cycleTime:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 166
    return-void
.end method

.method public rotateThreadedNow()V
    .locals 5

    .prologue
    .line 158
    iget-object v0, p0, Lcom/adview/AdViewLayout;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adview/AdViewLayout$RotateAdRunnable;

    invoke-direct {v1, p0}, Lcom/adview/AdViewLayout$RotateAdRunnable;-><init>(Lcom/adview/AdViewLayout;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 159
    return-void
.end method

.method public setAdViewInterface(Lcom/adview/AdViewLayout$AdViewInterface;)V
    .locals 0
    .param p1, "i"    # Lcom/adview/AdViewLayout$AdViewInterface;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/adview/AdViewLayout;->adViewInterface:Lcom/adview/AdViewLayout$AdViewInterface;

    .line 236
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/adview/AdViewLayout;->maxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/adview/AdViewLayout;->maxWidth:I

    return-void
.end method
