.class public Lcom/openintents/notepad/util/FileUriUtils;
.super Ljava/lang/Object;
.source "FileUriUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "filepath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .end local v0    # "filepath":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "curdir"    # Ljava/io/File;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/openintents/notepad/util/FileUriUtils;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "curdir"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v1, "/"

    .line 89
    .local v1, "separator":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-string v1, ""

    .line 92
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "clickedFile":Ljava/io/File;
    return-object v0
.end method

.method public static getFilename(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 73
    invoke-static {p0}, Lcom/openintents/notepad/util/FileUriUtils;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 74
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 36
    if-eqz p0, :cond_0

    .line 37
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/openintents/notepad/util/FileUriUtils;->getUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
