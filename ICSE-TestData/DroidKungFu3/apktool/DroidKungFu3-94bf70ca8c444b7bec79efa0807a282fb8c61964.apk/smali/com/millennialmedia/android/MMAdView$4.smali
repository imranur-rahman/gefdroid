.class Lcom/millennialmedia/android/MMAdView$4;
.super Landroid/webkit/WebViewClient;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdView;->getAd()V
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
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$4;->this$0:Lcom/millennialmedia/android/MMAdView;

    .line 663
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$4;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    const-string v1, "javascript:window.interface.countimages(document.images.length)"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->loadUrl(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$4;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    const-string v1, "javascript:window.interface.getUrl(document.links[0].href)"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->loadUrl(Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 682
    const-string v0, "MillennialMediaAdSDK"

    const-string v1, "Scale Changed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 675
    const/4 v0, 0x1

    return v0
.end method
