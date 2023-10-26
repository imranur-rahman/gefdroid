.class final Lcn/domob/android/ads/DomobInApp$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobInApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/DomobInApp;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobInApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/ads/DomobInApp$1;->a:Lcn/domob/android/ads/DomobInApp;

    .line 356
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp$1;->a:Lcn/domob/android/ads/DomobInApp;

    invoke-static {v0}, Lcn/domob/android/ads/DomobInApp;->e(Lcn/domob/android/ads/DomobInApp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 362
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp$1;->a:Lcn/domob/android/ads/DomobInApp;

    invoke-static {v0}, Lcn/domob/android/ads/DomobInApp;->e(Lcn/domob/android/ads/DomobInApp;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 366
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 367
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp$1;->a:Lcn/domob/android/ads/DomobInApp;

    invoke-static {v0}, Lcn/domob/android/ads/DomobInApp;->e(Lcn/domob/android/ads/DomobInApp;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp$1;->a:Lcn/domob/android/ads/DomobInApp;

    invoke-static {v0}, Lcn/domob/android/ads/DomobInApp;->e(Lcn/domob/android/ads/DomobInApp;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp$1;->a:Lcn/domob/android/ads/DomobInApp;

    invoke-static {v1}, Lcn/domob/android/ads/DomobInApp;->f(Lcn/domob/android/ads/DomobInApp;)Landroid/view/animation/RotateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 369
    return-void
.end method
