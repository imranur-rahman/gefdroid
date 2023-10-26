.class public Lcom/adview/adapters/CaseeAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "CaseeAdapter.java"

# interfaces
.implements Lcom/casee/adsdk/CaseeAdView$AdListener;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 21
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 11

    .prologue
    .line 26
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const-string v1, "AdView SDK"

    const-string v2, "Into CASEE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/CaseeAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/adview/AdViewLayout;

    .line 29
    .local v9, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v9, :cond_1

    .line 41
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v10, v9, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 34
    .local v10, "extra":Lcom/adview/obj/Extra;
    iget v1, v10, Lcom/adview/obj/Extra;->bgRed:I

    iget v2, v10, Lcom/adview/obj/Extra;->bgGreen:I

    iget v3, v10, Lcom/adview/obj/Extra;->bgBlue:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    .line 35
    .local v7, "bgColor":I
    iget v1, v10, Lcom/adview/obj/Extra;->fgRed:I

    iget v2, v10, Lcom/adview/obj/Extra;->fgGreen:I

    iget v3, v10, Lcom/adview/obj/Extra;->fgBlue:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 36
    .local v8, "fgColor":I
    new-instance v0, Lcom/casee/adsdk/CaseeAdView;

    invoke-virtual {v9}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adview/adapters/CaseeAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v5

    iget v6, v10, Lcom/adview/obj/Extra;->cycleTime:I

    mul-int/lit16 v6, v6, 0x3e8

    invoke-direct/range {v0 .. v8}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIII)V

    .line 37
    .local v0, "adView":Lcom/casee/adsdk/CaseeAdView;
    iget-object v1, v9, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 38
    iget-object v1, v9, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v2, v9, v0}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    invoke-virtual {v9}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onFailedToReceiveAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 47
    return-void
.end method

.method public onFailedToReceiveRefreshAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 53
    return-void
.end method

.method public onReceiveAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 59
    return-void
.end method

.method public onReceiveRefreshAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 65
    return-void
.end method
