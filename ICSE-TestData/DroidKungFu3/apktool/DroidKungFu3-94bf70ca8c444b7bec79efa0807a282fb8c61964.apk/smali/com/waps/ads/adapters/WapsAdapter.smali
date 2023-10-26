.class public Lcom/waps/ads/adapters/WapsAdapter;
.super Lcom/waps/ads/a/a;

# interfaces
.implements Lcom/waps/DisplayAdNotifier;


# static fields
.field static b:Lcom/waps/ads/AdGroupLayout;


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/waps/ads/a/a;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waps/ads/adapters/WapsAdapter;->a:Z

    return-void
.end method

.method private updateResultsInUi()V
    .locals 1

    iget-boolean v0, p0, Lcom/waps/ads/adapters/WapsAdapter;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/waps/ads/adapters/WapsAdapter;->b:Lcom/waps/ads/AdGroupLayout;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->removeAllViews()V

    sget-object v0, Lcom/waps/ads/adapters/WapsAdapter;->b:Lcom/waps/ads/AdGroupLayout;

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waps/ads/adapters/WapsAdapter;->a:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getDisplayAdResponse(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/waps/ads/adapters/WapsAdapter;->b:Lcom/waps/ads/AdGroupLayout;

    iget-object v0, v0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    new-instance v1, Lcom/waps/ads/f;

    sget-object v2, Lcom/waps/ads/adapters/WapsAdapter;->b:Lcom/waps/ads/AdGroupLayout;

    invoke-direct {v1, v2, p1}, Lcom/waps/ads/f;-><init>(Lcom/waps/ads/AdGroupLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getDisplayAdResponseFailed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handle()V
    .locals 1

    iget-object v0, p0, Lcom/waps/ads/adapters/WapsAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    sput-object v0, Lcom/waps/ads/adapters/WapsAdapter;->b:Lcom/waps/ads/AdGroupLayout;

    sget-object v0, Lcom/waps/ads/adapters/WapsAdapter;->b:Lcom/waps/ads/AdGroupLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/waps/ads/adapters/WapsAdapter;->b:Lcom/waps/ads/AdGroupLayout;

    iget-object v0, v0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    sget-object v0, Lcom/waps/ads/adapters/WapsAdapter;->b:Lcom/waps/ads/AdGroupLayout;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waps/AppConnect;->getDisplayAd(Lcom/waps/DisplayAdNotifier;)V

    sget-object v0, Lcom/waps/ads/adapters/WapsAdapter;->b:Lcom/waps/ads/AdGroupLayout;

    iget-object v0, v0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    sget-object v0, Lcom/waps/ads/adapters/WapsAdapter;->b:Lcom/waps/ads/AdGroupLayout;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method
