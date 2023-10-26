.class public Lcom/adview/adapters/AdViewHouseAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "AdViewHouseAdapter.java"

# interfaces
.implements Lcom/adview/ad/KyAdView$onAdListener;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 22
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 25
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const-string v1, "AdView SDK"

    const-string v2, "Into AdViewHouse"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/AdViewHouseAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/adview/AdViewLayout;

    .line 28
    .local v9, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v9, :cond_1

    .line 41
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v10, v9, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 33
    .local v10, "extra":Lcom/adview/obj/Extra;
    iget v1, v10, Lcom/adview/obj/Extra;->bgRed:I

    iget v2, v10, Lcom/adview/obj/Extra;->bgGreen:I

    iget v3, v10, Lcom/adview/obj/Extra;->bgBlue:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    .line 34
    .local v7, "bgColor":I
    iget v1, v10, Lcom/adview/obj/Extra;->fgRed:I

    iget v2, v10, Lcom/adview/obj/Extra;->fgGreen:I

    iget v3, v10, Lcom/adview/obj/Extra;->fgBlue:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 36
    .local v8, "fgColor":I
    new-instance v0, Lcom/adview/ad/KyAdView;

    invoke-virtual {v9}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adview/adapters/AdViewHouseAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v2, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/adview/adapters/AdViewHouseAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v3, v3, Lcom/adview/obj/Ration;->key2:Ljava/lang/String;

    iget-object v4, p0, Lcom/adview/adapters/AdViewHouseAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->logo:Ljava/lang/String;

    iget v5, v10, Lcom/adview/obj/Extra;->cycleTime:I

    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v6

    invoke-direct/range {v0 .. v8}, Lcom/adview/ad/KyAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZII)V

    .line 37
    .local v0, "kyAdView":Lcom/adview/ad/KyAdView;
    invoke-virtual {v0, p0}, Lcom/adview/ad/KyAdView;->setAdListener(Lcom/adview/ad/KyAdView$onAdListener;)V

    .line 38
    invoke-virtual {v0, v11}, Lcom/adview/ad/KyAdView;->setHorizontalScrollBarEnabled(Z)V

    .line 39
    invoke-virtual {v0, v11}, Lcom/adview/ad/KyAdView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method public onConnectFailed(Lcom/adview/ad/KyAdView;)V
    .locals 3
    .param p1, "view"    # Lcom/adview/ad/KyAdView;

    .prologue
    .line 46
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "AdView SDK"

    const-string v2, "AdViewHouse failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/adview/ad/KyAdView;->setAdListener(Lcom/adview/ad/KyAdView$onAdListener;)V

    .line 51
    iget-object v1, p0, Lcom/adview/adapters/AdViewHouseAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 52
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 56
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rollover_pri()V

    goto :goto_0
.end method

.method public onReceivedAd(Lcom/adview/ad/KyAdView;)V
    .locals 3
    .param p1, "view"    # Lcom/adview/ad/KyAdView;

    .prologue
    .line 64
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "AdView SDK"

    const-string v2, "AdViewHouse success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/AdViewHouseAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 68
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 73
    iget-object v1, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v2, v0, p1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
