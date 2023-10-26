.class public Lcom/waps/ads/adapters/CaseeAdapter;
.super Lcom/waps/ads/a/a;

# interfaces
.implements Lcom/casee/adsdk/CaseeAdView$AdListener;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/waps/ads/a/a;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V

    return-void
.end method


# virtual methods
.method public handle()V
    .locals 11

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdView SDK"

    const-string v2, "Into CASEE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/waps/ads/adapters/CaseeAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    move-object v10, v0

    if-nez v10, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v7, v10, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v1, v7, Lcom/waps/ads/b/b;->e:I

    iget v2, v7, Lcom/waps/ads/b/b;->f:I

    iget v3, v7, Lcom/waps/ads/b/b;->g:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    iget v1, v7, Lcom/waps/ads/b/b;->a:I

    iget v2, v7, Lcom/waps/ads/b/b;->b:I

    iget v3, v7, Lcom/waps/ads/b/b;->c:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    new-instance v1, Lcom/casee/adsdk/CaseeAdView;

    invoke-virtual {v10}, Lcom/waps/ads/AdGroupLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/waps/ads/adapters/CaseeAdapter;->d:Lcom/waps/ads/b/c;

    iget-object v5, v5, Lcom/waps/ads/b/c;->e:Ljava/lang/String;

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v6

    iget v7, v7, Lcom/waps/ads/b/b;->i:I

    mul-int/lit16 v7, v7, 0x3e8

    invoke-direct/range {v1 .. v9}, Lcom/casee/adsdk/CaseeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;ZIII)V

    iget-object v2, v10, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v2}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    iget-object v2, v10, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    new-instance v3, Lcom/waps/ads/f;

    invoke-direct {v3, v10, v1}, Lcom/waps/ads/f;-><init>(Lcom/waps/ads/AdGroupLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v10}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onFailedToReceiveAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0

    return-void
.end method

.method public onFailedToReceiveRefreshAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0

    return-void
.end method

.method public onReceiveAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0

    return-void
.end method

.method public onReceiveRefreshAd(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0

    return-void
.end method
