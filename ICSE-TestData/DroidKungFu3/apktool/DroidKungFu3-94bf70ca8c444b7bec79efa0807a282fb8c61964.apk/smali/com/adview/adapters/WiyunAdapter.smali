.class public Lcom/adview/adapters/WiyunAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "WiyunAdapter.java"

# interfaces
.implements Lcom/wiyun/ad/AdView$AdListener;


# instance fields
.field private ad:Lcom/wiyun/ad/AdView;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 1
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adview/adapters/WiyunAdapter;->ad:Lcom/wiyun/ad/AdView;

    .line 24
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 7

    .prologue
    .line 29
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    const-string v4, "AdView SDK"

    const-string v5, "Into Wiyun"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    iget-object v4, p0, Lcom/adview/adapters/WiyunAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 32
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 55
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v2, v0, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 36
    .local v2, "extra":Lcom/adview/obj/Extra;
    iget v4, v2, Lcom/adview/obj/Extra;->bgRed:I

    iget v5, v2, Lcom/adview/obj/Extra;->bgGreen:I

    iget v6, v2, Lcom/adview/obj/Extra;->bgBlue:I

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 37
    .local v1, "bgColor":I
    iget v4, v2, Lcom/adview/obj/Extra;->fgRed:I

    iget v5, v2, Lcom/adview/obj/Extra;->fgGreen:I

    iget v6, v2, Lcom/adview/obj/Extra;->fgBlue:I

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 40
    .local v3, "fgColor":I
    new-instance v4, Lcom/wiyun/ad/AdView;

    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/wiyun/ad/AdView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/adview/adapters/WiyunAdapter;->ad:Lcom/wiyun/ad/AdView;

    .line 41
    iget-object v4, p0, Lcom/adview/adapters/WiyunAdapter;->ad:Lcom/wiyun/ad/AdView;

    invoke-virtual {v4, p0}, Lcom/wiyun/ad/AdView;->setListener(Lcom/wiyun/ad/AdView$AdListener;)V

    .line 42
    iget-object v4, p0, Lcom/adview/adapters/WiyunAdapter;->ad:Lcom/wiyun/ad/AdView;

    invoke-virtual {v4, v1}, Lcom/wiyun/ad/AdView;->setBackgroundColor(I)V

    .line 43
    iget-object v4, p0, Lcom/adview/adapters/WiyunAdapter;->ad:Lcom/wiyun/ad/AdView;

    invoke-virtual {v4, v3}, Lcom/wiyun/ad/AdView;->setTextColor(I)V

    .line 44
    iget-object v4, p0, Lcom/adview/adapters/WiyunAdapter;->ad:Lcom/wiyun/ad/AdView;

    iget-object v5, p0, Lcom/adview/adapters/WiyunAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v5, v5, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/wiyun/ad/AdView;->setResId(Ljava/lang/String;)V

    .line 45
    iget-object v4, p0, Lcom/adview/adapters/WiyunAdapter;->ad:Lcom/wiyun/ad/AdView;

    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/wiyun/ad/AdView;->setTestMode(Z)V

    .line 47
    iget-object v4, p0, Lcom/adview/adapters/WiyunAdapter;->ad:Lcom/wiyun/ad/AdView;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/wiyun/ad/AdView;->setTransitionType(I)V

    .line 48
    iget-object v4, p0, Lcom/adview/adapters/WiyunAdapter;->ad:Lcom/wiyun/ad/AdView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/wiyun/ad/AdView;->setRefreshInterval(I)V

    .line 49
    iget-object v4, p0, Lcom/adview/adapters/WiyunAdapter;->ad:Lcom/wiyun/ad/AdView;

    invoke-virtual {v4}, Lcom/wiyun/ad/AdView;->requestAd()V

    .line 51
    iget-object v4, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v4}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 52
    iget-object v4, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/adview/AdViewLayout$ViewAdRunnable;

    iget-object v6, p0, Lcom/adview/adapters/WiyunAdapter;->ad:Lcom/wiyun/ad/AdView;

    invoke-direct {v5, v0, v6}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onAdClicked()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onAdLoadFailed()V
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "AdView SDK"

    const-string v2, "Wiyun failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/WiyunAdapter;->ad:Lcom/wiyun/ad/AdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wiyun/ad/AdView;->setListener(Lcom/wiyun/ad/AdView$AdListener;)V

    .line 73
    iget-object v1, p0, Lcom/adview/adapters/WiyunAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 74
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 78
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rollover_pri()V

    goto :goto_0
.end method

.method public onAdLoaded()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onExitButtonClicked()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
