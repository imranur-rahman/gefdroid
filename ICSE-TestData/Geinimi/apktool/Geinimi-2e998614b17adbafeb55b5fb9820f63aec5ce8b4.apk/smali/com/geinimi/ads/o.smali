.class public final Lcom/geinimi/ads/o;
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

    const-string v2, "dialogue_title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dialogue_content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sms_content"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/geinimi/ads/o;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    invoke-static {}, Lcom/geinimi/c/k;->i()V

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 5

    const/16 v4, 0x3b

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/geinimi/ads/o;->a:Ljava/lang/String;

    sget-object v1, Lcom/geinimi/r;->t:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dialogue_title"

    invoke-virtual {p0, v1, v2}, Lcom/geinimi/ads/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dialogue_content"

    invoke-virtual {p0, v1, v3}, Lcom/geinimi/ads/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sms_content"

    invoke-virtual {p0, v1, v0}, Lcom/geinimi/ads/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    const v0, 0x108007d

    return v0
.end method

.method public final f()Landroid/content/Intent;
    .locals 4

    const-string v3, "sms_content"

    const-string v2, "dialogue_content"

    invoke-virtual {p0}, Lcom/geinimi/ads/o;->a()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "dialogue_content"

    invoke-virtual {p0, v2}, Lcom/geinimi/ads/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "sms_content"

    invoke-virtual {p0, v3}, Lcom/geinimi/ads/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ACTIVITY_PARAM_SUGGEST_CONTENT_KEY"

    const-string v1, "dialogue_content"

    invoke-virtual {p0, v2}, Lcom/geinimi/ads/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/geinimi/ads/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ACTIVITY_PARAM_SUGGEST_SMS_KEY"

    const-string v1, "sms_content"

    invoke-virtual {p0, v3}, Lcom/geinimi/ads/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/geinimi/ads/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final h()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/ads/o;->b:[Ljava/lang/String;

    return-object v0
.end method
