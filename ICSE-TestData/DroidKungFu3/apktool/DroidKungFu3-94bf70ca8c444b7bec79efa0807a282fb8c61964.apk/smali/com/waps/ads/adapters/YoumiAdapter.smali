.class public Lcom/waps/ads/adapters/YoumiAdapter;
.super Lcom/waps/ads/a/a;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Lcom/waps/ads/a/a;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/waps/ads/b/c;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p2, Lcom/waps/ads/b/c;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v2, v2, Lcom/waps/ads/b/b;->i:I

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v3

    const-wide v4, 0x400199999999999aL    # 2.2

    invoke-static/range {v0 .. v5}, Lnet/youmi/android/AdManager;->init(Ljava/lang/String;Ljava/lang/String;IZD)V

    return-void
.end method


# virtual methods
.method public handle()V
    .locals 5

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdView SDK"

    const-string v1, "Into Youmi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/waps/ads/adapters/YoumiAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/waps/ads/AdGroupLayout;

    if-nez p0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v1, v0, Lcom/waps/ads/b/b;->e:I

    iget v2, v0, Lcom/waps/ads/b/b;->f:I

    iget v3, v0, Lcom/waps/ads/b/b;->g:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iget v2, v0, Lcom/waps/ads/b/b;->a:I

    iget v3, v0, Lcom/waps/ads/b/b;->b:I

    iget v0, v0, Lcom/waps/ads/b/b;->c:I

    invoke-static {v2, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v3, Lnet/youmi/android/AdView;

    const/16 v4, 0xff

    invoke-direct {v3, v0, v1, v2, v4}, Lnet/youmi/android/AdView;-><init>(Landroid/app/Activity;III)V

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    new-instance v1, Lcom/waps/ads/f;

    invoke-direct {v1, p0, v3}, Lcom/waps/ads/f;-><init>(Lcom/waps/ads/AdGroupLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onConnectFailed(Lnet/youmi/android/AdView;)V
    .locals 0

    return-void
.end method

.method public onReceiveAd(Lnet/youmi/android/AdView;)V
    .locals 0

    return-void
.end method
