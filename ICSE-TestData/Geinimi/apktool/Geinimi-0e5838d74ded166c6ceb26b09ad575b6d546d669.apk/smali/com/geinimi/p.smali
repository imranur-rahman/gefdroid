.class final enum Lcom/geinimi/p;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/geinimi/p;

.field public static final enum b:Lcom/geinimi/p;

.field public static final enum c:Lcom/geinimi/p;

.field public static final enum d:Lcom/geinimi/p;

.field public static final enum e:Lcom/geinimi/p;

.field public static final enum f:Lcom/geinimi/p;

.field public static final enum g:Lcom/geinimi/p;

.field public static final enum h:Lcom/geinimi/p;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/geinimi/p;

    const-string v1, "ACTION_START_OK"

    invoke-direct {v0, v1, v3}, Lcom/geinimi/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geinimi/p;->a:Lcom/geinimi/p;

    new-instance v0, Lcom/geinimi/p;

    const-string v1, "ACTION_IDLE_TO_DOWNLOAD"

    invoke-direct {v0, v1, v4}, Lcom/geinimi/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geinimi/p;->b:Lcom/geinimi/p;

    new-instance v0, Lcom/geinimi/p;

    const-string v1, "ACTION_DOWNLOAD_OK"

    invoke-direct {v0, v1, v5}, Lcom/geinimi/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geinimi/p;->c:Lcom/geinimi/p;

    new-instance v0, Lcom/geinimi/p;

    const-string v1, "ACTION_DOWNLOAD_FAILUE"

    invoke-direct {v0, v1, v6}, Lcom/geinimi/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geinimi/p;->d:Lcom/geinimi/p;

    new-instance v0, Lcom/geinimi/p;

    const-string v1, "ACTION_PARSE_OK"

    invoke-direct {v0, v1, v7}, Lcom/geinimi/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geinimi/p;->e:Lcom/geinimi/p;

    new-instance v0, Lcom/geinimi/p;

    const-string v1, "ACTION_PARSE_FAILUE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/geinimi/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geinimi/p;->f:Lcom/geinimi/p;

    new-instance v0, Lcom/geinimi/p;

    const-string v1, "ACTION_TRANSACT_OK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/geinimi/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geinimi/p;->g:Lcom/geinimi/p;

    new-instance v0, Lcom/geinimi/p;

    const-string v1, "ACTION_TRANSACT_FAILUE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/geinimi/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geinimi/p;->h:Lcom/geinimi/p;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/geinimi/p;

    sget-object v1, Lcom/geinimi/p;->a:Lcom/geinimi/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/geinimi/p;->b:Lcom/geinimi/p;

    aput-object v1, v0, v4

    sget-object v1, Lcom/geinimi/p;->c:Lcom/geinimi/p;

    aput-object v1, v0, v5

    sget-object v1, Lcom/geinimi/p;->d:Lcom/geinimi/p;

    aput-object v1, v0, v6

    sget-object v1, Lcom/geinimi/p;->e:Lcom/geinimi/p;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/geinimi/p;->f:Lcom/geinimi/p;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/geinimi/p;->g:Lcom/geinimi/p;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/geinimi/p;->h:Lcom/geinimi/p;

    aput-object v2, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
