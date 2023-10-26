.class public final Lcom/geinimi/ads/f;
.super Lcom/geinimi/ads/Advertisable;


# instance fields
.field private b:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/geinimi/ads/Advertisable;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_operation"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_phone_number"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/geinimi/ads/f;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 4

    const-string v3, "contact_operation"

    const-string v2, "contact_name"

    sget-object v0, Lcom/geinimi/c/b;->a:Ljava/lang/String;

    const-string v1, "contact_operation"

    invoke-virtual {p0, v3}, Lcom/geinimi/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "contact_name"

    invoke-virtual {p0, v2}, Lcom/geinimi/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "contact_phone_number"

    invoke-virtual {p0, v1}, Lcom/geinimi/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geinimi/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v0, Lcom/geinimi/c/b;->b:Ljava/lang/String;

    const-string v1, "contact_operation"

    invoke-virtual {p0, v3}, Lcom/geinimi/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "contact_name"

    invoke-virtual {p0, v2}, Lcom/geinimi/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/geinimi/c/b;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    const-string v0, "contact_name"

    const-string v0, ";"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactAd,strContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geinimi/ads/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/geinimi/ads/f;->a:Ljava/lang/String;

    sget-object v1, Lcom/geinimi/r;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contact_operation"

    invoke-virtual {p0, v2, v1}, Lcom/geinimi/ads/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/geinimi/c/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "contact_name"

    const/4 v2, 0x0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/geinimi/ads/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contact_phone_number"

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/geinimi/ads/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/geinimi/c/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-string v1, "contact_name"

    invoke-virtual {p0, v1, v0}, Lcom/geinimi/ads/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string v1, "contact_name"

    const/4 v2, 0x0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/geinimi/ads/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final h()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/ads/f;->b:[Ljava/lang/String;

    return-object v0
.end method
