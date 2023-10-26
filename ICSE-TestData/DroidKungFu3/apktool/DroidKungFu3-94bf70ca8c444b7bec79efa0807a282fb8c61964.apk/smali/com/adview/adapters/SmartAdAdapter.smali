.class public Lcom/adview/adapters/SmartAdAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "SmartAdAdapter.java"

# interfaces
.implements Lcom/madhouse/android/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 0
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 24
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const-string v2, "AdView SDK"

    const-string v4, "Into SmartAd"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/adview/adapters/SmartAdAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/adview/AdViewLayout;

    .line 35
    .local v8, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v8, :cond_2

    .line 50
    :cond_1
    :goto_0
    return-void

    .line 38
    :cond_2
    iget-object v9, v8, Lcom/adview/AdViewLayout;->extra:Lcom/adview/obj/Extra;

    .line 40
    .local v9, "extra":Lcom/adview/obj/Extra;
    iget-object v2, v8, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 41
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_1

    .line 45
    iget-object v2, p0, Lcom/adview/adapters/SmartAdAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v2, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/madhouse/android/ads/AdManager;->setApplicationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/madhouse/android/ads/AdView;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/adview/adapters/SmartAdAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v4, v4, Lcom/adview/obj/Ration;->key2:Ljava/lang/String;

    iget v5, v9, Lcom/adview/obj/Extra;->cycleTime:I

    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v7

    move v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/madhouse/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;IIZ)V

    .line 47
    .local v0, "ad":Lcom/madhouse/android/ads/AdView;
    invoke-virtual {v0, p0}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    goto :goto_0
.end method

.method public onAdEvent(Lcom/madhouse/android/ads/AdView;I)V
    .locals 4
    .param p1, "arg0"    # Lcom/madhouse/android/ads/AdView;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x0

    const-string v2, "AdView SDK"

    .line 56
    packed-switch p2, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string v1, "AdView SDK"

    const-string v1, "SmartAd new Ad"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/adview/adapters/SmartAdAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 66
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 71
    iget-object v1, v0, Lcom/adview/AdViewLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adview/AdViewLayout$ViewAdRunnable;

    invoke-direct {v2, v0, p1}, Lcom/adview/AdViewLayout$ViewAdRunnable;-><init>(Lcom/adview/AdViewLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    .line 73
    invoke-virtual {p1, v3}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    goto :goto_0

    .line 80
    .end local v0    # "adViewLayout":Lcom/adview/AdViewLayout;
    :pswitch_1
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    const-string v1, "AdView SDK"

    const-string v1, "SmartAd success"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2
    invoke-virtual {p1, v3}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    goto :goto_0

    .line 88
    :pswitch_2
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    const-string v1, "AdView SDK"

    const-string v1, "SmartAd invalid ad"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_3
    invoke-virtual {p1, v3}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    .line 92
    iget-object v1, p0, Lcom/adview/adapters/SmartAdAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 93
    .restart local v0    # "adViewLayout":Lcom/adview/AdViewLayout;
    if-eqz v0, :cond_0

    .line 96
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 97
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rollover_pri()V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onAdStatus(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 109
    const/16 v1, 0xc8

    if-eq p1, v1, :cond_1

    .line 110
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "AdView SDK"

    const-string v2, "SmartAd fail ad"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/adview/adapters/SmartAdAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 114
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v0, :cond_2

    .line 121
    .end local v0    # "adViewLayout":Lcom/adview/AdViewLayout;
    :cond_1
    :goto_0
    return-void

    .line 117
    .restart local v0    # "adViewLayout":Lcom/adview/AdViewLayout;
    :cond_2
    iget-object v1, v0, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v1}, Lcom/adview/AdViewManager;->resetRollover_pri()V

    .line 118
    invoke-virtual {v0}, Lcom/adview/AdViewLayout;->rollover_pri()V

    goto :goto_0
.end method
