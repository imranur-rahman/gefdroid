.class Lcom/vpon/adon/android/AdManager$4;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/adon/android/AdManager;->performClickRequester(Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpon/adon/android/AdManager;

.field private final synthetic val$adView:Lcom/vpon/adon/android/AdView;

.field private final synthetic val$currentAd:Lcom/vpon/adon/android/entity/Ad;


# direct methods
.method constructor <init>(Lcom/vpon/adon/android/AdManager;Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vpon/adon/android/AdManager$4;->this$0:Lcom/vpon/adon/android/AdManager;

    iput-object p2, p0, Lcom/vpon/adon/android/AdManager$4;->val$adView:Lcom/vpon/adon/android/AdView;

    iput-object p3, p0, Lcom/vpon/adon/android/AdManager$4;->val$currentAd:Lcom/vpon/adon/android/entity/Ad;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 300
    # getter for: Lcom/vpon/adon/android/AdManager;->instance:Lcom/vpon/adon/android/AdManager;
    invoke-static {}, Lcom/vpon/adon/android/AdManager;->access$0()Lcom/vpon/adon/android/AdManager;

    move-result-object v0

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/vpon/adon/android/AdManager$4;->this$0:Lcom/vpon/adon/android/AdManager;

    iget-object v2, p0, Lcom/vpon/adon/android/AdManager$4;->val$adView:Lcom/vpon/adon/android/AdView;

    iget-object v3, p0, Lcom/vpon/adon/android/AdManager$4;->val$currentAd:Lcom/vpon/adon/android/entity/Ad;

    # invokes: Lcom/vpon/adon/android/AdManager;->clickRequester(Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;)V
    invoke-static {v1, v2, v3}, Lcom/vpon/adon/android/AdManager;->access$3(Lcom/vpon/adon/android/AdManager;Lcom/vpon/adon/android/AdView;Lcom/vpon/adon/android/entity/Ad;)V

    .line 300
    monitor-exit v0

    .line 303
    return-void

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
