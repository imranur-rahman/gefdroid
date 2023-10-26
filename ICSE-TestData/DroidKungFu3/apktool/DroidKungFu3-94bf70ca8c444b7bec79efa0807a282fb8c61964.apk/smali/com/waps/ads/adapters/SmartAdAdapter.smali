.class public Lcom/waps/ads/adapters/SmartAdAdapter;
.super Lcom/waps/ads/a/a;

# interfaces
.implements Lcom/madhouse/android/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/waps/ads/a/a;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V

    return-void
.end method


# virtual methods
.method public handle()V
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdView SDK"

    const-string v1, "Into SmartAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/waps/ads/adapters/SmartAdAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, v0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget-object v0, v0, Lcom/waps/ads/AdGroupLayout;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/waps/ads/adapters/SmartAdAdapter;->d:Lcom/waps/ads/b/c;

    iget-object v0, v0, Lcom/waps/ads/b/c;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/madhouse/android/ads/AdManager;->setApplicationId(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/madhouse/android/ads/AdView;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/waps/ads/adapters/SmartAdAdapter;->d:Lcom/waps/ads/b/c;

    iget-object v4, v4, Lcom/waps/ads/b/c;->f:Ljava/lang/String;

    iget v5, v5, Lcom/waps/ads/b/b;->i:I

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v7

    move v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/madhouse/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;IIZ)V

    invoke-virtual {v0, p0}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    goto :goto_0
.end method

.method public onAdEvent(Lcom/madhouse/android/ads/AdView;I)V
    .locals 3

    const/4 v2, 0x0

    const-string v1, "AdView SDK"

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AdView SDK"

    const-string v0, "SmartAd new Ad"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/waps/ads/adapters/SmartAdAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/waps/ads/AdGroupLayout;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    new-instance v1, Lcom/waps/ads/f;

    invoke-direct {v1, p0, p1}, Lcom/waps/ads/f;-><init>(Lcom/waps/ads/AdGroupLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedDelayed()V

    invoke-virtual {p1, v2}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AdView SDK"

    const-string v0, "SmartAd success"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1, v2}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AdView SDK"

    const-string v0, "SmartAd invalid ad"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v2}, Lcom/madhouse/android/ads/AdView;->setListener(Lcom/madhouse/android/ads/AdListener;)V

    iget-object v0, p0, Lcom/waps/ads/adapters/SmartAdAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/waps/ads/AdGroupLayout;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->rollover()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onAdStatus(I)V
    .locals 2

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdView SDK"

    const-string v1, "SmartAd fail ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/waps/ads/adapters/SmartAdAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/waps/ads/AdGroupLayout;

    if-nez p0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->rollover()V

    goto :goto_0
.end method
