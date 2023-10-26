.class Lcom/waps/ads/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/waps/ads/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v5, 0x50

    const-string v9, " "

    const-string v8, ""

    const-string v7, "http"

    const-string v6, "AdGroup_SDK"

    const-string v0, "AdGroup_SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pinging URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/ads/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/waps/n;

    invoke-direct {v1}, Lcom/waps/n;-><init>()V

    # getter for: Lcom/waps/ads/AdGroupLayout;->r:Landroid/app/Activity;
    invoke-static {}, Lcom/waps/ads/AdGroupLayout;->access$500()Landroid/app/Activity;

    move-result-object v0

    # getter for: Lcom/waps/ads/AdGroupLayout;->r:Landroid/app/Activity;
    invoke-static {}, Lcom/waps/ads/AdGroupLayout;->access$500()Landroid/app/Activity;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cmwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/waps/n;->a(Z)V

    :cond_0
    invoke-virtual {v1}, Lcom/waps/n;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Lcom/waps/ads/d;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v1, "Caught ClientProtocolException in PingUrlRunnable"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v1, "Caught IOException in PingUrlRunnable"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/waps/ads/d;->a:Ljava/lang/String;

    new-instance v1, Lorg/apache/http/HttpHost;

    const-string v2, "10.0.0.172"

    const-string v3, "http"

    invoke-direct {v1, v2, v5, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "http://app"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lorg/apache/http/HttpHost;

    const-string v3, "ads.waps.cn"

    const-string v4, "http"

    invoke-direct {v2, v3, v5, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, " "

    const-string v3, "%20"

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "http://app.waps.cn"

    const-string v4, ""

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    :goto_1
    iput-object v2, p0, Lcom/waps/ads/d;->a:Ljava/lang/String;

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/waps/ads/d;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :try_start_1
    invoke-interface {v3, v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v1, "Caught ClientProtocolException in PingUrlRunnable"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string v3, "http://ads"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lorg/apache/http/HttpHost;

    const-string v3, "ads.waps.cn"

    const-string v4, "http"

    invoke-direct {v2, v3, v5, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, " "

    const-string v3, "%20"

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "http://ads.waps.cn"

    const-string v4, ""

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v1, "Caught IOException in PingUrlRunnable"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_3
    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_1
.end method
