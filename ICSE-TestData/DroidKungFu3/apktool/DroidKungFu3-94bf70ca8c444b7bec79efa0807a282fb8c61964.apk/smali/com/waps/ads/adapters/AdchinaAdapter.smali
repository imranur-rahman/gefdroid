.class public Lcom/waps/ads/adapters/AdchinaAdapter;
.super Lcom/waps/ads/a/a;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/waps/ads/a/a;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V

    return-void
.end method


# virtual methods
.method public handle()V
    .locals 4

    iget-object v0, p0, Lcom/waps/ads/adapters/AdchinaAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adchina/android/ads/AdManager;->setResolution(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/waps/ads/adapters/AdchinaAdapter;->d:Lcom/waps/ads/b/c;

    iget-object v1, v1, Lcom/waps/ads/b/c;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/adchina/android/ads/AdManager;->setAdspaceId(Ljava/lang/String;)V

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v1

    invoke-static {v1}, Lcom/adchina/android/ads/AdManager;->setDebugMode(Z)V

    new-instance v1, Lcom/adchina/android/ads/AdView;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/adchina/android/ads/AdView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/adchina/android/ads/AdView;->start()V

    iget-object v2, v0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v2}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    iget-object v2, v0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    new-instance v3, Lcom/waps/ads/f;

    invoke-direct {v3, v0, v1}, Lcom/waps/ads/f;-><init>(Lcom/waps/ads/AdGroupLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
