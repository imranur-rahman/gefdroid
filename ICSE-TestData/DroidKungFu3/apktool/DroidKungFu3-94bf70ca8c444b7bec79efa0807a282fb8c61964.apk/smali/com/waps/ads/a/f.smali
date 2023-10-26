.class public Lcom/waps/ads/a/f;
.super Lcom/waps/ads/a/a;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/waps/ads/a/a;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V

    return-void
.end method


# virtual methods
.method public handle()V
    .locals 2

    const-string v1, "AdGroup_SDK"

    const-string v0, "AdGroup_SDK"

    const-string v0, "Generic notification request initiated"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/waps/ads/a/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/waps/ads/AdGroupLayout;

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->i:Lcom/waps/ads/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->i:Lcom/waps/ads/a;

    invoke-interface {v0}, Lcom/waps/ads/a;->a()V

    :goto_1
    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedDelayed()V

    goto :goto_0

    :cond_1
    const-string v0, "AdGroup_SDK"

    const-string v0, "Generic notification sent, but no interface is listening"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
