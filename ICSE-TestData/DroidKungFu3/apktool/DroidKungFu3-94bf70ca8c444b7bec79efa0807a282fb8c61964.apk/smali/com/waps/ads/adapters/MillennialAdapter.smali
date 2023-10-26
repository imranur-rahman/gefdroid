.class public Lcom/waps/ads/adapters/MillennialAdapter;
.super Lcom/waps/ads/a/a;

# interfaces
.implements Lcom/millennialmedia/android/MMAdView$MMAdListener;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/waps/ads/a/a;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V

    return-void
.end method


# virtual methods
.method public MMAdClickedToNewBrowser(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdView SDK"

    const-string v1, "Millennial Ad clicked, new browser launched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdView SDK"

    const-string v1, "Millennial Ad Clicked to overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdView SDK"

    const-string v1, "Millennial failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    iget-object v0, p0, Lcom/waps/ads/adapters/MillennialAdapter;->c:Ljava/lang/ref/WeakReference;

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

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdView SDK"

    const-string v1, "Millennial Ad Overlay Launched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdView SDK"

    const-string v1, "Millennial success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    iget-object v0, p0, Lcom/waps/ads/adapters/MillennialAdapter;->c:Ljava/lang/ref/WeakReference;

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

.method public handle()V
    .locals 9

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/waps/ads/adapters/MillennialAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    move-object v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "vendor"

    const-string v3, "adview"

    invoke-virtual {v7, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v2, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    new-instance v1, Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v2}, Lcom/waps/ads/AdGroupLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/waps/ads/adapters/MillennialAdapter;->d:Lcom/waps/ads/b/c;

    iget-object v3, v3, Lcom/waps/ads/b/c;->e:Ljava/lang/String;

    const-string v4, "MMBannerAdTop"

    iget v5, v5, Lcom/waps/ads/b/b;->i:I

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v6

    invoke-direct/range {v1 .. v7}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Hashtable;)V

    invoke-virtual {v1, p0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->callForAd()V

    invoke-virtual {v1, v8}, Lcom/millennialmedia/android/MMAdView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v1, v8}, Lcom/millennialmedia/android/MMAdView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method
