.class final enum Lcom/geinimi/q;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/geinimi/q;

.field public static final enum b:Lcom/geinimi/q;

.field public static final enum c:Lcom/geinimi/q;

.field public static final enum d:Lcom/geinimi/q;

.field public static final enum e:Lcom/geinimi/q;

.field private static final synthetic f:[Lcom/geinimi/q;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/geinimi/q;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/geinimi/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geinimi/q;->a:Lcom/geinimi/q;

    new-instance v0, Lcom/geinimi/q;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/geinimi/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geinimi/q;->b:Lcom/geinimi/q;

    new-instance v0, Lcom/geinimi/q;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v4}, Lcom/geinimi/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geinimi/q;->c:Lcom/geinimi/q;

    new-instance v0, Lcom/geinimi/q;

    const-string v1, "PARSE"

    invoke-direct {v0, v1, v5}, Lcom/geinimi/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geinimi/q;->d:Lcom/geinimi/q;

    new-instance v0, Lcom/geinimi/q;

    const-string v1, "TRANSACT"

    invoke-direct {v0, v1, v6}, Lcom/geinimi/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geinimi/q;->e:Lcom/geinimi/q;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/geinimi/q;

    sget-object v1, Lcom/geinimi/q;->a:Lcom/geinimi/q;

    aput-object v1, v0, v2

    sget-object v1, Lcom/geinimi/q;->b:Lcom/geinimi/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/geinimi/q;->c:Lcom/geinimi/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/geinimi/q;->d:Lcom/geinimi/q;

    aput-object v1, v0, v5

    sget-object v1, Lcom/geinimi/q;->e:Lcom/geinimi/q;

    aput-object v1, v0, v6

    sput-object v0, Lcom/geinimi/q;->f:[Lcom/geinimi/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/geinimi/q;
    .locals 1

    sget-object v0, Lcom/geinimi/q;->f:[Lcom/geinimi/q;

    invoke-virtual {v0}, [Lcom/geinimi/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geinimi/q;

    return-object v0
.end method
