.class final Lcn/domob/android/ads/DomobInApp$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


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
    iput-object p1, p0, Lcn/domob/android/ads/DomobInApp$4;->a:Lcn/domob/android/ads/DomobInApp;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v3, "DomobSDK"

    .line 459
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 460
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 461
    const-string v0, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp$4;->a:Lcn/domob/android/ads/DomobInApp;

    invoke-static {v0}, Lcn/domob/android/ads/DomobInApp;->c(Lcn/domob/android/ads/DomobInApp;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to intent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
