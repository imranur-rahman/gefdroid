.class public final Lcom/geinimi/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:[Lcom/geinimi/ads/a;

.field private c:Lcom/geinimi/b/c;

.field private d:Lcom/geinimi/b/c;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Object;Lcom/geinimi/b/c;Lcom/geinimi/b/c;[Lcom/geinimi/ads/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/geinimi/b/d;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/geinimi/b/d;->b:[Lcom/geinimi/ads/a;

    iput-object v0, p0, Lcom/geinimi/b/d;->c:Lcom/geinimi/b/c;

    iput-object v0, p0, Lcom/geinimi/b/d;->d:Lcom/geinimi/b/c;

    iput-object p1, p0, Lcom/geinimi/b/d;->a:Ljava/lang/Object;

    iput-object p4, p0, Lcom/geinimi/b/d;->b:[Lcom/geinimi/ads/a;

    iput-object v0, p0, Lcom/geinimi/b/d;->c:Lcom/geinimi/b/c;

    iput-object v0, p0, Lcom/geinimi/b/d;->d:Lcom/geinimi/b/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/b/d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/geinimi/b/a;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/geinimi/b/d;->b:[Lcom/geinimi/ads/a;

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/geinimi/b/d;->b:[Lcom/geinimi/ads/a;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/geinimi/b/d;->b:[Lcom/geinimi/ads/a;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/geinimi/ads/a;->b()Lcom/geinimi/b/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/geinimi/b/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/geinimi/b/d;->b:[Lcom/geinimi/ads/a;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/geinimi/ads/a;->a()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/geinimi/b/d;->d:Lcom/geinimi/b/c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geinimi/b/d;->d:Lcom/geinimi/b/c;

    iget-object v1, v1, Lcom/geinimi/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/geinimi/b/d;->d:Lcom/geinimi/b/c;

    invoke-virtual {v0}, Lcom/geinimi/b/c;->a()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/geinimi/b/d;->c:Lcom/geinimi/b/c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geinimi/b/d;->c:Lcom/geinimi/b/c;

    iget-object v1, v1, Lcom/geinimi/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/geinimi/b/d;->c:Lcom/geinimi/b/c;

    invoke-virtual {v0}, Lcom/geinimi/b/c;->a()V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/b/d;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/geinimi/b/d;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
