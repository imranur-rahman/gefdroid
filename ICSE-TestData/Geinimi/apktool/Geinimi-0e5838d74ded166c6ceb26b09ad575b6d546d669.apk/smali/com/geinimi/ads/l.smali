.class public final Lcom/geinimi/ads/l;
.super Lcom/geinimi/ads/Advertisable;


# instance fields
.field private b:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/geinimi/ads/Advertisable;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sms_to_phone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "smc_content"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/geinimi/ads/l;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    const-string v0, "sms_to_phone"

    invoke-virtual {p0, v0}, Lcom/geinimi/ads/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "smc_content"

    invoke-virtual {p0, v1}, Lcom/geinimi/ads/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geinimi/c/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 4

    const-string v0, ";"

    :try_start_0
    iget-object v0, p0, Lcom/geinimi/ads/l;->a:Ljava/lang/String;

    sget-object v1, Lcom/geinimi/r;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sms_to_phone"

    const/4 v2, 0x0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/geinimi/ads/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "smc_content"

    invoke-virtual {p0, v1, v0}, Lcom/geinimi/ads/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    const v0, 0x108008f

    return v0
.end method

.method public final f()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final h()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/ads/l;->b:[Ljava/lang/String;

    return-object v0
.end method
