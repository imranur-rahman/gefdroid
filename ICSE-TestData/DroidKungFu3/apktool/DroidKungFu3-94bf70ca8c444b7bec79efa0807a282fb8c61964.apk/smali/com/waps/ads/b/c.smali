.class public Lcom/waps/ads/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:D

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const-string v2, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v2, p0, Lcom/waps/ads/b/c;->a:Ljava/lang/String;

    iput v3, p0, Lcom/waps/ads/b/c;->b:I

    const-string v0, ""

    iput-object v2, p0, Lcom/waps/ads/b/c;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/waps/ads/b/c;->d:D

    const-string v0, ""

    iput-object v2, p0, Lcom/waps/ads/b/c;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v2, p0, Lcom/waps/ads/b/c;->f:Ljava/lang/String;

    iput v3, p0, Lcom/waps/ads/b/c;->g:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/waps/ads/b/c;->h:I

    const-string v0, ""

    iput-object v2, p0, Lcom/waps/ads/b/c;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/waps/ads/b/c;)I
    .locals 2

    iget v0, p1, Lcom/waps/ads/b/c;->g:I

    iget v1, p0, Lcom/waps/ads/b/c;->g:I

    if-ge v1, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/waps/ads/b/c;->g:I

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/waps/ads/b/c;

    invoke-virtual {p0, p1}, Lcom/waps/ads/b/c;->a(Lcom/waps/ads/b/c;)I

    move-result v0

    return v0
.end method
