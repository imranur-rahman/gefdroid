.class public Lcom/millennialmedia/android/MMAdView$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$ScreenReceiver;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v2, "MillennialMediaAdSDK"

    .line 1277
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    const-string v0, "MillennialMediaAdSDK"

    const-string v0, "Screen is locked"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$ScreenReceiver;->this$0:Lcom/millennialmedia/android/MMAdView;

    # getter for: Lcom/millennialmedia/android/MMAdView;->refreshTimerOn:Z
    invoke-static {v0}, Lcom/millennialmedia/android/MMAdView;->access$1(Lcom/millennialmedia/android/MMAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$ScreenReceiver;->this$0:Lcom/millennialmedia/android/MMAdView;

    const/4 v1, 0x0

    # invokes: Lcom/millennialmedia/android/MMAdView;->administerRefreshTimer(Z)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdView;->access$13(Lcom/millennialmedia/android/MMAdView;Z)V

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    const-string v0, "MillennialMediaAdSDK"

    const-string v0, "Screen is unlocked"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$ScreenReceiver;->this$0:Lcom/millennialmedia/android/MMAdView;

    # getter for: Lcom/millennialmedia/android/MMAdView;->refreshTimerOn:Z
    invoke-static {v0}, Lcom/millennialmedia/android/MMAdView;->access$1(Lcom/millennialmedia/android/MMAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$ScreenReceiver;->this$0:Lcom/millennialmedia/android/MMAdView;

    const/4 v1, 0x1

    # invokes: Lcom/millennialmedia/android/MMAdView;->administerRefreshTimer(Z)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdView;->access$13(Lcom/millennialmedia/android/MMAdView;Z)V

    goto :goto_0
.end method
