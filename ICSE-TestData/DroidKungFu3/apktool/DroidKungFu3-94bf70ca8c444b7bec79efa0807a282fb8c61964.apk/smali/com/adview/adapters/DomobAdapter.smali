.class public Lcom/adview/adapters/DomobAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "DomobAdapter.java"

# interfaces
.implements Lcn/domob/android/ads/DomobAdListener;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 25
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 9

    .prologue
    .line 31
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 32
    const-string v6, "AdView SDK"

    const-string v7, "Into Domob"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object v6, p0, Lcom/adview/adapters/DomobAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adview/AdViewLayout;

    .line 34
    .local v2, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v2, :cond_2

    .line 57
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    iget-object v4, v2, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 38
    .local v4, "extra":Lcom/adview/obj/Extra;
    iget v6, v4, Lcom/adview/obj/Extra;->bgRed:I

    iget v7, v4, Lcom/adview/obj/Extra;->bgGreen:I

    iget v8, v4, Lcom/adview/obj/Extra;->bgBlue:I

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 39
    .local v3, "bgColor":I
    iget v6, v4, Lcom/adview/obj/Extra;->fgRed:I

    iget v7, v4, Lcom/adview/obj/Extra;->fgGreen:I

    iget v8, v4, Lcom/adview/obj/Extra;->fgBlue:I

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    .line 40
    .local v5, "fgColor":I
    iget-object v6, v2, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 41
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 46
    new-instance v1, Lcn/domob/android/ads/DomobAdView;

    invoke-direct {v1, v0}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/app/Activity;)V

    .line 47
    .local v1, "ad":Lcn/domob/android/ads/DomobAdView;
    iget-object v6, p0, Lcom/adview/adapters/DomobAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v6, v6, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v6}, Lcn/domob/android/ads/DomobAdManager;->setPublisherId(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v6

    invoke-static {v6}, Lcn/domob/android/ads/DomobAdManager;->setIsTestMode(Z)V

    .line 49
    invoke-virtual {v1, p0}, Lcn/domob/android/ads/DomobAdView;->setAdListener(Lcn/domob/android/ads/DomobAdListener;)V

    .line 50
    invoke-virtual {v1, v3}, Lcn/domob/android/ads/DomobAdView;->setBackgroundColor(I)V

    .line 51
    invoke-virtual {v1, v5}, Lcn/domob/android/ads/DomobAdView;->setPrimaryTextColor(I)V

    .line 53
    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->requestFreshAd()V

    goto :goto_0
.end method

.method public onFailedToReceiveFreshAd(Lcn/domob/android/ads/DomobAdView;)V
    .locals 3
    .param p1, "arg0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 63
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const-string v1, "AdView SDK"

    const-string v2, "Domob failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcn/domob/android/ads/DomobAdView;->setAdListener(Lcn/domob/android/ads/DomobAdListener;)V

    .line 68
    iget-object v1, p0, Lcom/adview/adapters/DomobAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 69
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 73
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rollover_pri()V

    goto :goto_0
.end method

.method public onReceivedFreshAd(Lcn/domob/android/ads/DomobAdView;)V
    .locals 3
    .param p1, "arg0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 81
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "AdView SDK"

    const-string v2, "Domob success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/DomobAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 85
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 90
    iget-object v1, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v2, v0, p1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
