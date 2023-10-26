.class public final enum Lcom/waps/ads/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/waps/ads/g;

.field public static final enum b:Lcom/waps/ads/g;

.field public static final enum c:Lcom/waps/ads/g;

.field private static final synthetic d:[Lcom/waps/ads/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/waps/ads/g;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/waps/ads/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waps/ads/g;->a:Lcom/waps/ads/g;

    new-instance v0, Lcom/waps/ads/g;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3}, Lcom/waps/ads/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waps/ads/g;->b:Lcom/waps/ads/g;

    new-instance v0, Lcom/waps/ads/g;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4}, Lcom/waps/ads/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/waps/ads/g;->c:Lcom/waps/ads/g;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/waps/ads/g;

    sget-object v1, Lcom/waps/ads/g;->a:Lcom/waps/ads/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/waps/ads/g;->b:Lcom/waps/ads/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/waps/ads/g;->c:Lcom/waps/ads/g;

    aput-object v1, v0, v4

    sput-object v0, Lcom/waps/ads/g;->d:[Lcom/waps/ads/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/waps/ads/g;
    .locals 1

    sget-object v0, Lcom/waps/ads/g;->d:[Lcom/waps/ads/g;

    invoke-virtual {v0}, [Lcom/waps/ads/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/waps/ads/g;

    return-object v0
.end method
