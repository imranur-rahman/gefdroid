.class public Lcom/millennialmedia/android/HttpHeadRequest;
.super Ljava/lang/Object;
.source "HttpHeadRequest.java"


# instance fields
.field protected locationString:Ljava/lang/String;

.field protected response:Ljava/lang/String;

.field protected uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    const-string v3, "Location"

    const-string v3, "urlapp"

    .line 55
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "connectURL":Ljava/net/URL;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 57
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 58
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 61
    const-string v3, "urlapp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response Code:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v3, "urlapp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Response Message:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v3, "urlapp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Location Header:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Location"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/HttpHeadRequest;->response:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "connectURL":Ljava/net/URL;
    :goto_0
    iget-object v3, p0, Lcom/millennialmedia/android/HttpHeadRequest;->response:Ljava/lang/String;

    return-object v3

    .line 80
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 82
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
