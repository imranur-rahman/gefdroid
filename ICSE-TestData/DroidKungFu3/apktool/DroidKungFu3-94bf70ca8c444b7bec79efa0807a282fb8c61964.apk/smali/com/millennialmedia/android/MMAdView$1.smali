.class Lcom/millennialmedia/android/MMAdView$1;
.super Ljava/lang/Object;
.source "MMAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    # invokes: Lcom/millennialmedia/android/MMAdView;->getAd()V
    invoke-static {v0}, Lcom/millennialmedia/android/MMAdView;->access$0(Lcom/millennialmedia/android/MMAdView;)V

    .line 357
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    # getter for: Lcom/millennialmedia/android/MMAdView;->refreshTimerOn:Z
    invoke-static {v0}, Lcom/millennialmedia/android/MMAdView;->access$1(Lcom/millennialmedia/android/MMAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    # getter for: Lcom/millennialmedia/android/MMAdView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/millennialmedia/android/MMAdView;->access$2(Lcom/millennialmedia/android/MMAdView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$1;->this$0:Lcom/millennialmedia/android/MMAdView;

    # getter for: Lcom/millennialmedia/android/MMAdView;->refreshIntervalInMilliseconds:I
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdView;->access$3(Lcom/millennialmedia/android/MMAdView;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 361
    :cond_0
    return-void
.end method
