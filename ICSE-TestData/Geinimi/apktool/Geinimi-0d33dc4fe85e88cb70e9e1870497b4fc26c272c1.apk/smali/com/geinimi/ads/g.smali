.class public final Lcom/geinimi/ads/g;
.super Lcom/geinimi/ads/Advertisable;


# instance fields
.field private b:[Ljava/lang/String;

.field private c:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/geinimi/ads/Advertisable;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "apk_url"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "local_apk_url"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/geinimi/ads/g;->b:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/geinimi/ads/g;->c:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 8

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "local_apk_url"

    const-string v6, "apk_url"

    const-string v0, "apk_url"

    invoke-virtual {p0, v6}, Lcom/geinimi/ads/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/geinimi/c/k;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/geinimi/c/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "local_apk_url"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/geinimi/ads/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean v4, p0, Lcom/geinimi/ads/g;->c:Z

    :goto_0
    return v4

    :cond_1
    move v0, v3

    :goto_1
    if-ge v0, v5, :cond_2

    const-string v1, "apk_url"

    invoke-virtual {p0, v6}, Lcom/geinimi/ads/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/geinimi/c/k;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/geinimi/c/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "local_apk_url"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lcom/geinimi/ads/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-lt v0, v5, :cond_0

    iput-boolean v3, p0, Lcom/geinimi/ads/g;->c:Z

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final c()V
    .locals 3

    const-string v0, "apk_url"

    iget-object v1, p0, Lcom/geinimi/ads/g;->a:Ljava/lang/String;

    sget-object v2, Lcom/geinimi/r;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/geinimi/ads/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    const v0, 0x1080082

    return v0
.end method

.method public final f()Landroid/content/Intent;
    .locals 4

    const-string v3, "local_apk_url"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "strLocalApkUrl===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "local_apk_url"

    invoke-virtual {p0, v3}, Lcom/geinimi/ads/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string v1, "local_apk_url"

    invoke-virtual {p0, v3}, Lcom/geinimi/ads/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/geinimi/ads/g;->b()Z

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "local_apk_url"

    invoke-virtual {p0, v3}, Lcom/geinimi/ads/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/geinimi/ads/g;->c:Z

    return v0
.end method

.method protected final h()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/ads/g;->b:[Ljava/lang/String;

    return-object v0
.end method
