.class public Lcom/adview/adapters/YoumiAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "YoumiAdapter.java"


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 7
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 22
    new-instance v0, Ljava/lang/String;

    iget-object v3, p2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    iget-object v3, p2, Lcom/adview/obj/Ration;->key2:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 24
    .local v1, "key2":Ljava/lang/String;
    iget-object v6, p1, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 25
    .local v6, "extra":Lcom/adview/obj/Extra;
    iget v2, v6, Lcom/adview/obj/Extra;->cycleTime:I

    .line 26
    .local v2, "internal":I
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v3

    const-wide v4, 0x400199999999999aL    # 2.2

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/AdManager;->init(Ljava/lang/String;Ljava/lang/String;IZD)V

    .line 27
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 9

    .prologue
    .line 30
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 31
    const-string v6, "AdView SDK"

    const-string v7, "Into Youmi"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    iget-object v6, p0, Lcom/adview/adapters/YoumiAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adview/AdViewLayout;

    .line 33
    .local v2, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v2, :cond_2

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    iget-object v4, v2, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 37
    .local v4, "extra":Lcom/adview/obj/Extra;
    iget v6, v4, Lcom/adview/obj/Extra;->bgRed:I

    iget v7, v4, Lcom/adview/obj/Extra;->bgGreen:I

    iget v8, v4, Lcom/adview/obj/Extra;->bgBlue:I

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 38
    .local v3, "bgColor":I
    iget v6, v4, Lcom/adview/obj/Extra;->fgRed:I

    iget v7, v4, Lcom/adview/obj/Extra;->fgGreen:I

    iget v8, v4, Lcom/adview/obj/Extra;->fgBlue:I

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    .line 39
    .local v5, "fgColor":I
    iget-object v6, v2, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 40
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 43
    new-instance v1, Lnet/youmi/android/AdView;

    const/16 v6, 0xff

    invoke-direct {v1, v0, v3, v5, v6}, Lnet/youmi/android/AdView;-><init>(Landroid/app/Activity;III)V

    .line 46
    .local v1, "adView":Lnet/youmi/android/AdView;
    iget-object v6, v2, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v6}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 47
    iget-object v6, v2, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v7, v2, v1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    invoke-virtual {v2}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onConnectFailed(Lnet/youmi/android/AdView;)V
    .locals 0
    .param p1, "adView"    # Lnet/youmi/android/AdView;

    .prologue
    .line 54
    return-void
.end method

.method public onReceiveAd(Lnet/youmi/android/AdView;)V
    .locals 0
    .param p1, "adView"    # Lnet/youmi/android/AdView;

    .prologue
    .line 60
    return-void
.end method
