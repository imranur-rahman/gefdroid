.class public Lcom/adview/adapters/MillennialAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "MillennialAdapter.java"

# interfaces
.implements Lcom/millennialmedia/android/MMAdView$MMAdListener;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 25
    return-void
.end method


# virtual methods
.method public MMAdClickedToNewBrowser(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 73
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "AdView SDK"

    const-string v1, "Millennial Ad clicked, new browser launched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method

.method public MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 78
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "AdView SDK"

    const-string v1, "Millennial Ad Clicked to overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    return-void
.end method

.method public MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 60
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "AdView SDK"

    const-string v2, "Millennial failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 63
    iget-object v1, p0, Lcom/adview/adapters/MillennialAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 64
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 69
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rollover_pri()V

    goto :goto_0
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    .locals 2
    .param p1, "adview"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 83
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "AdView SDK"

    const-string v1, "Millennial Ad Overlay Launched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method

.method public MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 45
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string v1, "AdView SDK"

    const-string v2, "Millennial success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 49
    iget-object v1, p0, Lcom/adview/adapters/MillennialAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 50
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 55
    iget-object v1, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v2, v0, p1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public handle()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 29
    iget-object v1, p0, Lcom/adview/adapters/MillennialAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/adview/AdViewLayout;

    .line 30
    .local v7, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v7, :cond_0

    .line 42
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 34
    .local v6, "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "vendor"

    const-string v2, "adview"

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v8, v7, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 37
    .local v8, "extra":Lcom/adview/obj/Extra;
    new-instance v0, Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v7}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/adview/adapters/MillennialAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v2, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    const-string v3, "MMBannerAdTop"

    iget v4, v8, Lcom/adview/obj/Extra;->cycleTime:I

    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Hashtable;)V

    .line 38
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 39
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->callForAd()V

    .line 40
    invoke-virtual {v0, v9}, Lcom/millennialmedia/android/MMAdView;->setHorizontalScrollBarEnabled(Z)V

    .line 41
    invoke-virtual {v0, v9}, Lcom/millennialmedia/android/MMAdView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method
