.class Lcom/vpon/adon/android/AdView$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpon/adon/android/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpon/adon/android/AdView;


# direct methods
.method constructor <init>(Lcom/vpon/adon/android/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 116
    iget-object v1, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    # getter for: Lcom/vpon/adon/android/AdView;->isAutoRefreshAd:Z
    invoke-static {v1}, Lcom/vpon/adon/android/AdView;->access$0(Lcom/vpon/adon/android/AdView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    # getter for: Lcom/vpon/adon/android/AdView;->isLive:Z
    invoke-static {v1}, Lcom/vpon/adon/android/AdView;->access$1(Lcom/vpon/adon/android/AdView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    # getter for: Lcom/vpon/adon/android/AdView;->isPause:Z
    invoke-static {v1}, Lcom/vpon/adon/android/AdView;->access$2(Lcom/vpon/adon/android/AdView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    # getter for: Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;
    invoke-static {v1}, Lcom/vpon/adon/android/AdView;->access$3(Lcom/vpon/adon/android/AdView;)Lcom/vpon/adon/android/entity/Ad;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    # getter for: Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;
    invoke-static {v1}, Lcom/vpon/adon/android/AdView;->access$3(Lcom/vpon/adon/android/AdView;)Lcom/vpon/adon/android/entity/Ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vpon/adon/android/entity/Ad;->getRefreshTime()I

    move-result v1

    if-lez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    # getter for: Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;
    invoke-static {v1}, Lcom/vpon/adon/android/AdView;->access$3(Lcom/vpon/adon/android/AdView;)Lcom/vpon/adon/android/entity/Ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vpon/adon/android/entity/Ad;->getRefreshTime()I

    move-result v0

    .line 119
    .local v0, "refresh":I
    add-int/lit8 v0, v0, -0x1

    .line 120
    iget-object v1, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    # getter for: Lcom/vpon/adon/android/AdView;->currentAd:Lcom/vpon/adon/android/entity/Ad;
    invoke-static {v1}, Lcom/vpon/adon/android/AdView;->access$3(Lcom/vpon/adon/android/AdView;)Lcom/vpon/adon/android/entity/Ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vpon/adon/android/entity/Ad;->setRefreshTime(I)V

    .line 122
    if-nez v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    # getter for: Lcom/vpon/adon/android/AdView;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/vpon/adon/android/AdView;->access$4(Lcom/vpon/adon/android/AdView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vpon/adon/android/AdManager;->instance(Landroid/content/Context;)Lcom/vpon/adon/android/AdManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    iget-object v3, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    # getter for: Lcom/vpon/adon/android/AdView;->connectHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/vpon/adon/android/AdView;->access$5(Lcom/vpon/adon/android/AdView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->performAdRequester(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;)V

    .line 131
    .end local v0    # "refresh":I
    :cond_0
    iget-object v1, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    # getter for: Lcom/vpon/adon/android/AdView;->adRefreshHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vpon/adon/android/AdView;->access$6(Lcom/vpon/adon/android/AdView;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    # getter for: Lcom/vpon/adon/android/AdView;->adRefreshHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vpon/adon/android/AdView;->access$6(Lcom/vpon/adon/android/AdView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vpon/adon/android/AdView$1;->this$0:Lcom/vpon/adon/android/AdView;

    # getter for: Lcom/vpon/adon/android/AdView;->adRefreshCount:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/vpon/adon/android/AdView;->access$7(Lcom/vpon/adon/android/AdView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    :cond_1
    return-void
.end method