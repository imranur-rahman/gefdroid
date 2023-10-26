.class public Lcom/adview/adapters/AdMobAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "AdMobAdapter.java"

# interfaces
.implements Lcom/google/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 29
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 5

    .prologue
    .line 33
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    const-string v3, "AdView SDK"

    const-string v4, "Into AdMob"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget-object v3, p0, Lcom/adview/adapters/AdMobAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adview/AdViewLayout;

    .line 36
    .local v2, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v2, :cond_2

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 40
    :cond_2
    iget-object v3, v2, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 41
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 44
    new-instance v1, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    iget-object v4, p0, Lcom/adview/adapters/AdMobAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 45
    .local v1, "adView":Lcom/google/ads/AdView;
    invoke-virtual {v1, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/adview/adapters/AdMobAdapter;->requestForAdWhirlLayout(Lcom/adview/AdViewLayout;)Lcom/google/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    goto :goto_0
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 63
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 3
    .param p1, "arg0"    # Lcom/google/ads/Ad;
    .param p2, "arg1"    # Lcom/google/ads/AdRequest$ErrorCode;

    .prologue
    .line 68
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "AdView SDK"

    const-string v2, "AdMob fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/google/ads/Ad;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 72
    iget-object v1, p0, Lcom/adview/adapters/AdMobAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 74
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 79
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rollover_pri()V

    goto :goto_0
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 87
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 93
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 5
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 98
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const-string v3, "AdView SDK"

    const-string v4, "AdMob success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v3, p0, Lcom/adview/adapters/AdMobAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adview/AdViewLayout;

    .line 104
    .local v2, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v2, :cond_2

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    instance-of v3, p1, Lcom/google/ads/AdView;

    if-eqz v3, :cond_1

    .line 113
    move-object v0, p1

    check-cast v0, Lcom/google/ads/AdView;

    move-object v1, v0

    .line 115
    .local v1, "adView":Lcom/google/ads/AdView;
    iget-object v3, v2, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v3}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 116
    iget-object v3, v2, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v4, v2, v1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    invoke-virtual {v2}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method protected requestForAdWhirlLayout(Lcom/adview/AdViewLayout;)Lcom/google/ads/AdRequest;
    .locals 2
    .param p1, "layout"    # Lcom/adview/AdViewLayout;

    .prologue
    .line 52
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 54
    .local v0, "result":Lcom/google/ads/AdRequest;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setTesting(Z)V

    .line 57
    return-object v0
.end method
