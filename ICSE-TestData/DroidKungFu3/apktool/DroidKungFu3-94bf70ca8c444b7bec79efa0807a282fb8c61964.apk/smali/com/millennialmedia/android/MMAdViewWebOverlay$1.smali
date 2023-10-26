.class Lcom/millennialmedia/android/MMAdViewWebOverlay$1;
.super Landroid/os/Handler;
.source "MMAdViewWebOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    .line 465
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 467
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 473
    :goto_0
    return-void

    .line 470
    :pswitch_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    const/4 v1, 0x1

    # invokes: Lcom/millennialmedia/android/MMAdViewWebOverlay;->dismiss(Z)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$0(Lcom/millennialmedia/android/MMAdViewWebOverlay;Z)V

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
