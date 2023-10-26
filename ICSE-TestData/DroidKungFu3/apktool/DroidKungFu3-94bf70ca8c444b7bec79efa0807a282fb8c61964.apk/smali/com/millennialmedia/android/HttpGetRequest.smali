.class public Lcom/millennialmedia/android/HttpGetRequest;
.super Ljava/lang/Object;
.source "HttpGetRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MillennialMediaSDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public trackConversion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "goalId"    # Ljava/lang/String;
    .param p2, "auid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v5, "MillennialMediaSDK"

    .line 18
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://cvt.mydas.mobi/handleConversion?goalId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&auid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19
    .local v4, "url":Ljava/lang/String;
    const-string v5, "MillennialMediaSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sending conversion tracker report :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 22
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 23
    .local v2, "getRequest":Lorg/apache/http/client/methods/HttpGet;
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 24
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 25
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 26
    const-string v5, "MillennialMediaSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Conversion tracker reponse code: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 29
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_0
    const-string v5, "MillennialMediaSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Conversion tracker unable to complete report: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "getRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 34
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
