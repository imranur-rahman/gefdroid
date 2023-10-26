.class public Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;
.super Ljava/lang/Object;
.source "MMAdViewWebOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverlayJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldCloseOverlay()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->hClose:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 484
    return-void
.end method

.method public shouldVibrate(Ljava/lang/String;)V
    .locals 0
    .param p1, "milliseconds"    # Ljava/lang/String;

    .prologue
    .line 490
    return-void
.end method
