.class Lcom/millennialmedia/android/MMAdViewWebOverlay$9;
.super Ljava/lang/Thread;
.source "MMAdViewWebOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay;->loadWebContent(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$9;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    .line 414
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$9;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$9;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    # getter for: Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$2(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 420
    return-void
.end method
