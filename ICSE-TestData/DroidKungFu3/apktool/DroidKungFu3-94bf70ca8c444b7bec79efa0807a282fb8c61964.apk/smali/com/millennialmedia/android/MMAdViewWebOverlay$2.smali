.class Lcom/millennialmedia/android/MMAdViewWebOverlay$2;
.super Ljava/lang/Object;
.source "MMAdViewWebOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay;-><init>(Landroid/app/Activity;IJLjava/lang/String;ZLjava/lang/String;Z)V
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
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$2;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const-string v4, "MillennialMediaSDK"

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 134
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 145
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 136
    :pswitch_0
    const-string v1, "MillennialMediaSDK"

    const-string v1, "Close button down"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 137
    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$2;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    # getter for: Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$1(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Landroid/widget/TextView;

    move-result-object v1

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 140
    const-string v1, "MillennialMediaSDK"

    const-string v1, "Close button up"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$2;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    # invokes: Lcom/millennialmedia/android/MMAdViewWebOverlay;->dismiss(Z)V
    invoke-static {v1, v3}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$0(Lcom/millennialmedia/android/MMAdViewWebOverlay;Z)V

    move v1, v3

    .line 143
    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
