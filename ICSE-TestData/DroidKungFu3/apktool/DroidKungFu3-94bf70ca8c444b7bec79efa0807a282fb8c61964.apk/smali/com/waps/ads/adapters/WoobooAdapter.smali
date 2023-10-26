.class public Lcom/waps/ads/adapters/WoobooAdapter;
.super Lcom/waps/ads/a/a;

# interfaces
.implements Lcom/wooboo/adlib_android/AdListener;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/waps/ads/a/a;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V

    return-void
.end method


# virtual methods
.method public handle()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdView SDK"

    const-string v2, "Into Wooboo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/waps/ads/adapters/WoobooAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    move-object v2, v0

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, v2, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v3, v1, Lcom/waps/ads/b/b;->e:I

    iget v4, v1, Lcom/waps/ads/b/b;->f:I

    iget v5, v1, Lcom/waps/ads/b/b;->g:I

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    iget v3, v1, Lcom/waps/ads/b/b;->a:I

    iget v5, v1, Lcom/waps/ads/b/b;->b:I

    iget v1, v1, Lcom/waps/ads/b/b;->c:I

    invoke-static {v3, v5, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    new-instance v1, Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-virtual {v2}, Lcom/waps/ads/AdGroupLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/waps/ads/adapters/WoobooAdapter;->d:Lcom/waps/ads/b/c;

    iget-object v3, v3, Lcom/waps/ads/b/c;->e:Ljava/lang/String;

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v6

    const/16 v7, 0x258

    invoke-direct/range {v1 .. v7}, Lcom/wooboo/adlib_android/WoobooAdView;-><init>(Landroid/content/Context;Ljava/lang/String;IIZI)V

    invoke-virtual {v1, v8}, Lcom/wooboo/adlib_android/WoobooAdView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v1, v8}, Lcom/wooboo/adlib_android/WoobooAdView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v1, p0}, Lcom/wooboo/adlib_android/WoobooAdView;->setAdListener(Lcom/wooboo/adlib_android/AdListener;)V

    goto :goto_0
.end method

.method public onFailedToReceiveAd(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdView SDK"

    const-string v1, "Woboo failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/wooboo/adlib_android/WoobooAdView;->setAdListener(Lcom/wooboo/adlib_android/AdListener;)V

    iget-object v0, p0, Lcom/waps/ads/adapters/WoobooAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/waps/ads/AdGroupLayout;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    new-instance v1, Lcom/waps/ads/f;

    invoke-direct {v1, p0, p1}, Lcom/waps/ads/f;-><init>(Lcom/waps/ads/AdGroupLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onReceiveAd(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/wooboo/adlib_android/WoobooAdView;

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdView SDK"

    const-string v1, "Wooboo success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/waps/ads/adapters/WoobooAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/waps/ads/AdGroupLayout;

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    new-instance v1, Lcom/waps/ads/f;

    invoke-direct {v1, p0, p1}, Lcom/waps/ads/f;-><init>(Lcom/waps/ads/AdGroupLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
