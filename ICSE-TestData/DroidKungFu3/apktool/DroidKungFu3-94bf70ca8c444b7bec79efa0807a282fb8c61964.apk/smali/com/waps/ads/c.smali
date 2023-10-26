.class Lcom/waps/ads/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/waps/ads/c;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/waps/ads/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/waps/ads/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    if-nez v2, :cond_2

    new-instance v2, Lcom/waps/ads/AdGroupManager;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/waps/ads/c;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/waps/ads/AdGroupManager;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    :cond_2
    # getter for: Lcom/waps/ads/AdGroupLayout;->n:Z
    invoke-static {v0}, Lcom/waps/ads/AdGroupLayout;->access$000(Lcom/waps/ads/AdGroupLayout;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    # setter for: Lcom/waps/ads/AdGroupLayout;->o:Z
    invoke-static {v0, v1}, Lcom/waps/ads/AdGroupLayout;->access$102(Lcom/waps/ads/AdGroupLayout;Z)Z

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v1}, Lcom/waps/ads/AdGroupManager;->fetchConfig()V

    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v1}, Lcom/waps/ads/AdGroupManager;->getExtra()Lcom/waps/ads/b/b;

    move-result-object v1

    iput-object v1, v0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, v0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v0, v0, Lcom/waps/ads/b/b;->k:I

    # setter for: Lcom/waps/ads/AdGroupLayout;->s:I
    invoke-static {v0}, Lcom/waps/ads/AdGroupLayout;->access$202(I)I

    goto :goto_0

    :cond_4
    # invokes: Lcom/waps/ads/AdGroupLayout;->rotateAd()V
    invoke-static {v0}, Lcom/waps/ads/AdGroupLayout;->access$300(Lcom/waps/ads/AdGroupLayout;)V

    iget-object v0, v0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v0, v0, Lcom/waps/ads/b/b;->k:I

    # setter for: Lcom/waps/ads/AdGroupLayout;->s:I
    invoke-static {v0}, Lcom/waps/ads/AdGroupLayout;->access$202(I)I

    goto :goto_0
.end method
