.class public Lcom/adview/adapters/AdChinaAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "AdChinaAdapter.java"


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 20
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 6

    .prologue
    .line 26
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    const-string v4, "AdView SDK"

    const-string v5, "Into AdChina"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iget-object v4, p0, Lcom/adview/adapters/AdChinaAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 29
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_1

    .line 48
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v4, v0, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 35
    .local v1, "display":Landroid/view/Display;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "resolution":Ljava/lang/String;
    invoke-static {v3}, Lcom/adchina/android/ads/AdManager;->setResolution(Ljava/lang/String;)V

    .line 37
    iget-object v4, p0, Lcom/adview/adapters/AdChinaAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v4}, Lcom/adchina/android/ads/AdManager;->setAdspaceId(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v4

    invoke-static {v4}, Lcom/adchina/android/ads/AdManager;->setDebugMode(Z)V

    .line 40
    new-instance v2, Lcom/adchina/android/ads/AdView;

    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/adchina/android/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 42
    .local v2, "mAdView":Lcom/adchina/android/ads/AdView;
    invoke-virtual {v2}, Lcom/adchina/android/ads/AdView;->start()V

    .line 43
    iget-object v4, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v4}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 44
    iget-object v4, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v5, v0, v2}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
