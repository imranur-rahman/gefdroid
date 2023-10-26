.class Lcom/waps/ads/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/waps/ads/a/b;


# direct methods
.method public constructor <init>(Lcom/waps/ads/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/waps/ads/a/d;->a:Lcom/waps/ads/a/b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/waps/ads/a/d;->a:Lcom/waps/ads/a/b;

    iget-object v0, v0, Lcom/waps/ads/a/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    iget-object v2, p0, Lcom/waps/ads/a/d;->a:Lcom/waps/ads/a/b;

    iget-object v2, v2, Lcom/waps/ads/a/b;->d:Lcom/waps/ads/b/c;

    iget-object v2, v2, Lcom/waps/ads/b/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/waps/ads/AdGroupManager;->getCustom(Ljava/lang/String;)Lcom/waps/ads/b/a;

    move-result-object v1

    iput-object v1, v0, Lcom/waps/ads/AdGroupLayout;->e:Lcom/waps/ads/b/a;

    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->e:Lcom/waps/ads/b/a;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedNow()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    new-instance v1, Lcom/waps/ads/a/c;

    iget-object v2, p0, Lcom/waps/ads/a/d;->a:Lcom/waps/ads/a/b;

    invoke-direct {v1, v2}, Lcom/waps/ads/a/c;-><init>(Lcom/waps/ads/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
