.class public Lcom/waps/ads/adapters/WiyunAdapter;
.super Lcom/waps/ads/a/a;

# interfaces
.implements Lcom/wiyun/ad/AdView$AdListener;


# instance fields
.field private a:Lcom/wiyun/ad/AdView;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/waps/ads/a/a;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waps/ads/adapters/WiyunAdapter;->a:Lcom/wiyun/ad/AdView;

    return-void
.end method


# virtual methods
.method public handle()V
    .locals 5

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdView SDK"

    const-string v1, "Into Wiyun"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/waps/ads/adapters/WiyunAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v2, v1, Lcom/waps/ads/b/b;->e:I

    iget v3, v1, Lcom/waps/ads/b/b;->f:I

    iget v4, v1, Lcom/waps/ads/b/b;->g:I

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iget v3, v1, Lcom/waps/ads/b/b;->a:I

    iget v4, v1, Lcom/waps/ads/b/b;->b:I

    iget v1, v1, Lcom/waps/ads/b/b;->c:I

    invoke-static {v3, v4, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    new-instance v3, Lcom/wiyun/ad/AdView;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wiyun/ad/AdView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/waps/ads/adapters/WiyunAdapter;->a:Lcom/wiyun/ad/AdView;

    iget-object v3, p0, Lcom/waps/ads/adapters/WiyunAdapter;->a:Lcom/wiyun/ad/AdView;

    invoke-virtual {v3, p0}, Lcom/wiyun/ad/AdView;->setListener(Lcom/wiyun/ad/AdView$AdListener;)V

    iget-object v3, p0, Lcom/waps/ads/adapters/WiyunAdapter;->a:Lcom/wiyun/ad/AdView;

    invoke-virtual {v3, v2}, Lcom/wiyun/ad/AdView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/waps/ads/adapters/WiyunAdapter;->a:Lcom/wiyun/ad/AdView;

    invoke-virtual {v2, v1}, Lcom/wiyun/ad/AdView;->setTextColor(I)V

    iget-object v1, p0, Lcom/waps/ads/adapters/WiyunAdapter;->a:Lcom/wiyun/ad/AdView;

    iget-object v2, p0, Lcom/waps/ads/adapters/WiyunAdapter;->d:Lcom/waps/ads/b/c;

    iget-object v2, v2, Lcom/waps/ads/b/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wiyun/ad/AdView;->setResId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/waps/ads/adapters/WiyunAdapter;->a:Lcom/wiyun/ad/AdView;

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wiyun/ad/AdView;->setTestMode(Z)V

    iget-object v1, p0, Lcom/waps/ads/adapters/WiyunAdapter;->a:Lcom/wiyun/ad/AdView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/wiyun/ad/AdView;->setTransitionType(I)V

    iget-object v1, p0, Lcom/waps/ads/adapters/WiyunAdapter;->a:Lcom/wiyun/ad/AdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wiyun/ad/AdView;->setRefreshInterval(I)V

    iget-object v1, p0, Lcom/waps/ads/adapters/WiyunAdapter;->a:Lcom/wiyun/ad/AdView;

    invoke-virtual {v1}, Lcom/wiyun/ad/AdView;->requestAd()V

    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v1}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    new-instance v2, Lcom/waps/ads/f;

    iget-object v3, p0, Lcom/waps/ads/adapters/WiyunAdapter;->a:Lcom/wiyun/ad/AdView;

    invoke-direct {v2, v0, v3}, Lcom/waps/ads/f;-><init>(Lcom/waps/ads/AdGroupLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onAdClicked()V
    .locals 0

    return-void
.end method

.method public onAdLoadFailed()V
    .locals 2

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdView SDK"

    const-string v1, "Wiyun failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/waps/ads/adapters/WiyunAdapter;->a:Lcom/wiyun/ad/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wiyun/ad/AdView;->setListener(Lcom/wiyun/ad/AdView$AdListener;)V

    iget-object v0, p0, Lcom/waps/ads/adapters/WiyunAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/waps/ads/AdGroupLayout;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->rollover()V

    goto :goto_0
.end method

.method public onAdLoaded()V
    .locals 0

    return-void
.end method

.method public onExitButtonClicked()V
    .locals 0

    return-void
.end method
