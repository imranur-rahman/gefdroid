.class public Lcom/google/ads/AdSize;
.super Ljava/lang/Object;


# static fields
.field public static final BANNER:Lcom/google/ads/AdSize;

.field public static final IAB_BANNER:Lcom/google/ads/AdSize;

.field public static final IAB_LEADERBOARD:Lcom/google/ads/AdSize;

.field public static final IAB_MRECT:Lcom/google/ads/AdSize;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string v3, "320x50_mb"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    const-string v3, "300x250_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    const-string v3, "468x60_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    const-string v3, "728x90_as"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdSize;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/AdSize;->a:I

    iput p2, p0, Lcom/google/ads/AdSize;->b:I

    iput-object p3, p0, Lcom/google/ads/AdSize;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/ads/AdSize;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/ads/AdSize;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdSize;->c:Ljava/lang/String;

    return-object v0
.end method
