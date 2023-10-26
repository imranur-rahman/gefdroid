.class public Lcom/adview/adapters/WoobooAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "WoobooAdapter.java"

# interfaces
.implements Lcom/wooboo/adlib_android/AdListener;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 20
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 23
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const-string v1, "AdView SDK"

    const-string v2, "Into Wooboo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/WoobooAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/adview/AdViewLayout;

    .line 26
    .local v7, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v7, :cond_1

    .line 41
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v8, v7, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 30
    .local v8, "extra":Lcom/adview/obj/Extra;
    iget v1, v8, Lcom/adview/obj/Extra;->bgRed:I

    iget v2, v8, Lcom/adview/obj/Extra;->bgGreen:I

    iget v5, v8, Lcom/adview/obj/Extra;->bgBlue:I

    invoke-static {v1, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 31
    .local v3, "bgColor":I
    iget v1, v8, Lcom/adview/obj/Extra;->fgRed:I

    iget v2, v8, Lcom/adview/obj/Extra;->fgGreen:I

    iget v5, v8, Lcom/adview/obj/Extra;->fgBlue:I

    invoke-static {v1, v2, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 32
    .local v4, "fgColor":I
    new-instance v0, Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v7}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adview/adapters/WoobooAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v2, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v5

    const/16 v6, 0x258

    invoke-direct/range {v0 .. v6}, Lcom/wooboo/adlib_android/WoobooAdView;-><init>(Landroid/content/Context;Ljava/lang/String;IIZI)V

    .line 34
    .local v0, "adView":Lcom/wooboo/adlib_android/WoobooAdView;
    invoke-virtual {v0, v9}, Lcom/wooboo/adlib_android/WoobooAdView;->setHorizontalScrollBarEnabled(Z)V

    .line 35
    invoke-virtual {v0, v9}, Lcom/wooboo/adlib_android/WoobooAdView;->setVerticalScrollBarEnabled(Z)V

    .line 36
    invoke-virtual {v0, p0}, Lcom/wooboo/adlib_android/WoobooAdView;->setAdListener(Lcom/wooboo/adlib_android/AdListener;)V

    goto :goto_0
.end method

.method public onFailedToReceiveAd(Ljava/lang/Object;)V
    .locals 5
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 46
    move-object v0, p1

    check-cast v0, Lcom/wooboo/adlib_android/WoobooAdView;

    move-object v1, v0

    .line 47
    .local v1, "adView":Lcom/wooboo/adlib_android/WoobooAdView;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    const-string v3, "AdView SDK"

    const-string v4, "Woboo failure"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/wooboo/adlib_android/WoobooAdView;->setAdListener(Lcom/wooboo/adlib_android/AdListener;)V

    .line 52
    iget-object v3, p0, Lcom/adview/adapters/WoobooAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adview/AdViewLayout;

    .line 53
    .local v2, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v2, :cond_1

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v3, v2, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v3}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 58
    iget-object v3, v2, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v4, v2, v1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    invoke-virtual {v2}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onReceiveAd(Ljava/lang/Object;)V
    .locals 5
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 66
    move-object v0, p1

    check-cast v0, Lcom/wooboo/adlib_android/WoobooAdView;

    move-object v1, v0

    .line 67
    .local v1, "adView":Lcom/wooboo/adlib_android/WoobooAdView;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const-string v3, "AdView SDK"

    const-string v4, "Wooboo success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/adview/adapters/WoobooAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adview/AdViewLayout;

    .line 71
    .local v2, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v2, :cond_1

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v3, v2, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v3}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 76
    iget-object v3, v2, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v4, v2, v1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    invoke-virtual {v2}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
