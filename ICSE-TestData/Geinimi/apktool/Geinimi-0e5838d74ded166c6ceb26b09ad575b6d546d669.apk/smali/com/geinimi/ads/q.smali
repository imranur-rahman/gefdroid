.class public final Lcom/geinimi/ads/q;
.super Lcom/geinimi/ads/Advertisable;


# static fields
.field static b:Landroid/widget/Toast;

.field public static c:Lcom/geinimi/ads/r;

.field static d:Ljava/lang/String;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/geinimi/ads/q;->b:Landroid/widget/Toast;

    new-instance v0, Lcom/geinimi/ads/r;

    invoke-direct {v0}, Lcom/geinimi/ads/r;-><init>()V

    sput-object v0, Lcom/geinimi/ads/q;->c:Lcom/geinimi/ads/r;

    sput-object v1, Lcom/geinimi/ads/q;->d:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/geinimi/ads/Advertisable;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geinimi/ads/q;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/geinimi/ads/q;->a:Ljava/lang/String;

    sget-object v1, Lcom/geinimi/r;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geinimi/ads/q;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/geinimi/ads/q;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geinimi/ads/q;->e:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/ads/q;->d:Ljava/lang/String;

    invoke-static {}, Lcom/geinimi/c/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TOAST"

    sget-object v2, Lcom/geinimi/ads/q;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/geinimi/c/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "strToastString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geinimi/ads/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
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

    const/4 v0, 0x0

    return-object v0
.end method
