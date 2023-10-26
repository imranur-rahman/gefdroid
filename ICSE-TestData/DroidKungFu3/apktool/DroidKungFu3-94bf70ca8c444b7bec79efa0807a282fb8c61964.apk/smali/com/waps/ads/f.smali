.class public Lcom/waps/ads/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/view/View;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/waps/ads/f;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/waps/ads/f;->c:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/waps/ads/f;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/waps/ads/f;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v2, Lcom/waps/AnimationType;

    # getter for: Lcom/waps/ads/AdGroupLayout;->s:I
    invoke-static {}, Lcom/waps/ads/AdGroupLayout;->access$200()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/waps/AnimationType;-><init>(I)V

    iget-object v0, p0, Lcom/waps/ads/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    if-eqz v0, :cond_0

    # getter for: Lcom/waps/ads/AdGroupLayout;->r:Landroid/app/Activity;
    invoke-static {}, Lcom/waps/ads/AdGroupLayout;->access$500()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waps/ads/f;->d:Ljava/lang/String;

    # getter for: Lcom/waps/ads/AdGroupLayout;->r:Landroid/app/Activity;
    invoke-static {}, Lcom/waps/ads/AdGroupLayout;->access$500()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/waps/ads/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waps/ads/f;->c:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/waps/ads/f;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/waps/ads/AdGroupLayout;->updateResultsInUi(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Lcom/waps/AnimationType;->startAnimation(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/waps/ads/f;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/waps/ads/AdGroupLayout;->pushSubView(Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v0}, Lcom/waps/AnimationType;->startAnimation(Landroid/view/View;)V

    goto :goto_0
.end method
