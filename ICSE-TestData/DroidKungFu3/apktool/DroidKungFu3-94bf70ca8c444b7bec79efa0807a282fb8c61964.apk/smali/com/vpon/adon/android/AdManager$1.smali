.class Lcom/vpon/adon/android/AdManager$1;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/adon/android/AdManager;->performAdRequester(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpon/adon/android/AdManager;

.field private final synthetic val$adView:Lcom/vpon/adon/android/AdView;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/vpon/adon/android/AdManager;Lcom/vpon/adon/android/AdView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vpon/adon/android/AdManager$1;->this$0:Lcom/vpon/adon/android/AdManager;

    iput-object p2, p0, Lcom/vpon/adon/android/AdManager$1;->val$adView:Lcom/vpon/adon/android/AdView;

    iput-object p3, p0, Lcom/vpon/adon/android/AdManager$1;->val$handler:Landroid/os/Handler;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    # getter for: Lcom/vpon/adon/android/AdManager;->instance:Lcom/vpon/adon/android/AdManager;
    invoke-static {}, Lcom/vpon/adon/android/AdManager;->access$0()Lcom/vpon/adon/android/AdManager;

    move-result-object v0

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/vpon/adon/android/AdManager$1;->this$0:Lcom/vpon/adon/android/AdManager;

    iget-object v2, p0, Lcom/vpon/adon/android/AdManager$1;->val$adView:Lcom/vpon/adon/android/AdView;

    iget-object v3, p0, Lcom/vpon/adon/android/AdManager$1;->val$handler:Landroid/os/Handler;

    # invokes: Lcom/vpon/adon/android/AdManager;->adRequester(Lcom/vpon/adon/android/AdView;Landroid/os/Handler;)V
    invoke-static {v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->access$1(Lcom/vpon/adon/android/AdManager;Lcom/vpon/adon/android/AdView;Landroid/os/Handler;)V

    .line 65
    monitor-exit v0

    .line 68
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method