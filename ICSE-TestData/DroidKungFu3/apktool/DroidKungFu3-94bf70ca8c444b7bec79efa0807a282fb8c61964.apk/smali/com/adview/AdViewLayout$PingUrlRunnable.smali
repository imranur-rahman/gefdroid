.class Lcom/adview/AdViewLayout$PingUrlRunnable;
.super Ljava/lang/Object;
.source "AdViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adview/AdViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PingUrlRunnable"
.end annotation


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p1, p0, Lcom/adview/AdViewLayout$PingUrlRunnable;->url:Ljava/lang/String;

    .line 327
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v4, "AdView SDK"

    .line 331
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 332
    .local v1, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/adview/AdViewLayout$PingUrlRunnable;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 335
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    const-string v3, "AdView SDK"

    const-string v3, "Caught ClientProtocolException in PingUrlRunnable"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 339
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    const-string v3, "AdView SDK"

    const-string v3, "Caught IOException in PingUrlRunnable"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
