.class public final Lcom/geinimi/ads/p;
.super Lcom/geinimi/ads/Advertisable;


# instance fields
.field private b:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/geinimi/ads/Advertisable;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/geinimi/ads/p;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    const v0, 0x1080077

    return v0
.end method

.method public final f()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final h()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/ads/p;->b:[Ljava/lang/String;

    return-object v0
.end method
