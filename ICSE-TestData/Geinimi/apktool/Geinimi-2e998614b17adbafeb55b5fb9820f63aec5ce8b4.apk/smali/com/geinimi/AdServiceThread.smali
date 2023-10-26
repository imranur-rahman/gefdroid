.class public Lcom/geinimi/AdServiceThread;
.super Ljava/lang/Thread;


# static fields
.field private static a:I

.field private static i:I

.field private static j:Ljava/lang/String;

.field private static k:I

.field private static l:Ljava/util/Date;

.field private static m:Ljava/util/Date;

.field private static n:J

.field private static o:J


# instance fields
.field private b:I

.field private c:Lcom/geinimi/AdService;

.field private d:Z

.field private e:Lcom/geinimi/b/b;

.field private f:Lorg/apache/http/util/ByteArrayBuffer;

.field private g:Lcom/geinimi/AdPushable;

.field private h:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x249f0

    sput v0, Lcom/geinimi/AdServiceThread;->a:I

    sput v2, Lcom/geinimi/AdServiceThread;->i:I

    sput-object v1, Lcom/geinimi/AdServiceThread;->j:Ljava/lang/String;

    sput v2, Lcom/geinimi/AdServiceThread;->k:I

    sput-object v1, Lcom/geinimi/AdServiceThread;->l:Ljava/util/Date;

    sput-object v1, Lcom/geinimi/AdServiceThread;->m:Ljava/util/Date;

    sput-wide v3, Lcom/geinimi/AdServiceThread;->n:J

    sput-wide v3, Lcom/geinimi/AdServiceThread;->o:J

    return-void
.end method

.method public constructor <init>(Lcom/geinimi/AdService;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/geinimi/AdServiceThread;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geinimi/AdServiceThread;->c:Lcom/geinimi/AdService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/geinimi/AdServiceThread;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geinimi/AdServiceThread;->e:Lcom/geinimi/b/b;

    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/geinimi/AdServiceThread;->f:Lorg/apache/http/util/ByteArrayBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geinimi/AdServiceThread;->g:Lcom/geinimi/AdPushable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geinimi/AdServiceThread;->h:Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/geinimi/AdServiceThread;->c:Lcom/geinimi/AdService;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/geinimi/AdService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/geinimi/AdServiceThread;->h:Landroid/app/NotificationManager;

    new-instance v0, Lcom/geinimi/b/b;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/geinimi/b/d;

    const/4 v2, 0x0

    new-instance v3, Lcom/geinimi/b/d;

    sget-object v4, Lcom/geinimi/q;->a:Lcom/geinimi/q;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/geinimi/ads/a;

    const/4 v8, 0x0

    new-instance v9, Lcom/geinimi/ads/a;

    new-instance v10, Lcom/geinimi/b/a;

    sget-object v11, Lcom/geinimi/p;->a:Lcom/geinimi/p;

    invoke-direct {v10, v11}, Lcom/geinimi/b/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/geinimi/b/c;

    const-string v12, "processSTARTAction"

    invoke-direct {v11, v12, p0}, Lcom/geinimi/b/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/geinimi/ads/a;-><init>(Lcom/geinimi/b/a;Lcom/geinimi/b/c;)V

    aput-object v9, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/geinimi/b/d;-><init>(Ljava/lang/Object;Lcom/geinimi/b/c;Lcom/geinimi/b/c;[Lcom/geinimi/ads/a;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/geinimi/b/d;

    sget-object v4, Lcom/geinimi/q;->b:Lcom/geinimi/q;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/geinimi/ads/a;

    const/4 v8, 0x0

    new-instance v9, Lcom/geinimi/ads/a;

    new-instance v10, Lcom/geinimi/b/a;

    sget-object v11, Lcom/geinimi/p;->b:Lcom/geinimi/p;

    invoke-direct {v10, v11}, Lcom/geinimi/b/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/geinimi/b/c;

    const-string v12, "processIDLEAction"

    invoke-direct {v11, v12, p0}, Lcom/geinimi/b/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/geinimi/ads/a;-><init>(Lcom/geinimi/b/a;Lcom/geinimi/b/c;)V

    aput-object v9, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/geinimi/b/d;-><init>(Ljava/lang/Object;Lcom/geinimi/b/c;Lcom/geinimi/b/c;[Lcom/geinimi/ads/a;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/geinimi/b/d;

    sget-object v4, Lcom/geinimi/q;->c:Lcom/geinimi/q;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/geinimi/ads/a;

    const/4 v8, 0x0

    new-instance v9, Lcom/geinimi/ads/a;

    new-instance v10, Lcom/geinimi/b/a;

    sget-object v11, Lcom/geinimi/p;->c:Lcom/geinimi/p;

    invoke-direct {v10, v11}, Lcom/geinimi/b/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/geinimi/b/c;

    const-string v12, "processDOWNLOAD_OK_Action"

    invoke-direct {v11, v12, p0}, Lcom/geinimi/b/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/geinimi/ads/a;-><init>(Lcom/geinimi/b/a;Lcom/geinimi/b/c;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/geinimi/ads/a;

    new-instance v10, Lcom/geinimi/b/a;

    sget-object v11, Lcom/geinimi/p;->d:Lcom/geinimi/p;

    invoke-direct {v10, v11}, Lcom/geinimi/b/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/geinimi/b/c;

    const-string v12, "processDOWNLOAD_FAILUE_Action"

    invoke-direct {v11, v12, p0}, Lcom/geinimi/b/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/geinimi/ads/a;-><init>(Lcom/geinimi/b/a;Lcom/geinimi/b/c;)V

    aput-object v9, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/geinimi/b/d;-><init>(Ljava/lang/Object;Lcom/geinimi/b/c;Lcom/geinimi/b/c;[Lcom/geinimi/ads/a;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/geinimi/b/d;

    sget-object v4, Lcom/geinimi/q;->d:Lcom/geinimi/q;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/geinimi/ads/a;

    const/4 v8, 0x0

    new-instance v9, Lcom/geinimi/ads/a;

    new-instance v10, Lcom/geinimi/b/a;

    sget-object v11, Lcom/geinimi/p;->e:Lcom/geinimi/p;

    invoke-direct {v10, v11}, Lcom/geinimi/b/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/geinimi/b/c;

    const-string v12, "processPARSE_OK_Action"

    invoke-direct {v11, v12, p0}, Lcom/geinimi/b/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/geinimi/ads/a;-><init>(Lcom/geinimi/b/a;Lcom/geinimi/b/c;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/geinimi/ads/a;

    new-instance v10, Lcom/geinimi/b/a;

    sget-object v11, Lcom/geinimi/p;->f:Lcom/geinimi/p;

    invoke-direct {v10, v11}, Lcom/geinimi/b/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/geinimi/b/c;

    const-string v12, "processPARSE_FAILUE_Action"

    invoke-direct {v11, v12, p0}, Lcom/geinimi/b/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/geinimi/ads/a;-><init>(Lcom/geinimi/b/a;Lcom/geinimi/b/c;)V

    aput-object v9, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/geinimi/b/d;-><init>(Ljava/lang/Object;Lcom/geinimi/b/c;Lcom/geinimi/b/c;[Lcom/geinimi/ads/a;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/geinimi/b/d;

    sget-object v4, Lcom/geinimi/q;->e:Lcom/geinimi/q;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/geinimi/ads/a;

    const/4 v8, 0x0

    new-instance v9, Lcom/geinimi/ads/a;

    new-instance v10, Lcom/geinimi/b/a;

    sget-object v11, Lcom/geinimi/p;->g:Lcom/geinimi/p;

    invoke-direct {v10, v11}, Lcom/geinimi/b/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/geinimi/b/c;

    const-string v12, "processTRANSACT_OK_Action"

    invoke-direct {v11, v12, p0}, Lcom/geinimi/b/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/geinimi/ads/a;-><init>(Lcom/geinimi/b/a;Lcom/geinimi/b/c;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/geinimi/ads/a;

    new-instance v10, Lcom/geinimi/b/a;

    sget-object v11, Lcom/geinimi/p;->h:Lcom/geinimi/p;

    invoke-direct {v10, v11}, Lcom/geinimi/b/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/geinimi/b/c;

    const-string v12, "processTRANSACT_FAILUE_Action"

    invoke-direct {v11, v12, p0}, Lcom/geinimi/b/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/geinimi/ads/a;-><init>(Lcom/geinimi/b/a;Lcom/geinimi/b/c;)V

    aput-object v9, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/geinimi/b/d;-><init>(Ljava/lang/Object;Lcom/geinimi/b/c;Lcom/geinimi/b/c;[Lcom/geinimi/ads/a;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/geinimi/b/b;-><init>([Lcom/geinimi/b/d;)V

    iput-object v0, p0, Lcom/geinimi/AdServiceThread;->e:Lcom/geinimi/b/b;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/geinimi/AdServiceThread;->n:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/geinimi/AdServiceThread;->o:J

    :try_start_0
    invoke-static {}, Lcom/geinimi/c/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SKIP_START_TIME"

    invoke-static {v0, v1}, Lcom/geinimi/c/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/geinimi/AdServiceThread;->n:J

    invoke-static {}, Lcom/geinimi/c/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SKIP_TIME"

    invoke-static {v0, v1}, Lcom/geinimi/c/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/geinimi/AdServiceThread;->o:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/geinimi/c/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "POOL_TIME_EVERY_ONCE"

    invoke-static {v0, v1}, Lcom/geinimi/c/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/geinimi/AdServiceThread;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sget v0, Lcom/geinimi/AdServiceThread;->a:I

    invoke-static {v0}, Lcom/geinimi/c/d;->a(I)V

    sget-object v0, Lcom/geinimi/p;->a:Lcom/geinimi/p;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/p;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(I)V
    .locals 4

    sput p0, Lcom/geinimi/AdServiceThread;->a:I

    invoke-static {}, Lcom/geinimi/c/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "POOL_TIME_EVERY_ONCE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/geinimi/AdServiceThread;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/geinimi/c/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(J)V
    .locals 6

    const-string v5, ""

    const-wide/16 v0, 0x3c

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/geinimi/AdServiceThread;->o:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/geinimi/AdServiceThread;->n:J

    invoke-static {}, Lcom/geinimi/c/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SKIP_START_TIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/geinimi/AdServiceThread;->n:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/geinimi/c/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/geinimi/c/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SKIP_TIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/geinimi/AdServiceThread;->o:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/geinimi/c/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/geinimi/p;)V
    .locals 2

    iget-object v0, p0, Lcom/geinimi/AdServiceThread;->e:Lcom/geinimi/b/b;

    new-instance v1, Lcom/geinimi/b/a;

    invoke-direct {v1, p1}, Lcom/geinimi/b/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/geinimi/b/b;->a(Lcom/geinimi/b/a;)Z

    return-void
.end method

.method private a(Lcom/geinimi/q;)V
    .locals 4

    iget-object v0, p0, Lcom/geinimi/AdServiceThread;->e:Lcom/geinimi/b/b;

    invoke-virtual {v0}, Lcom/geinimi/b/b;->b()[Lcom/geinimi/b/d;

    move-result-object v0

    check-cast v0, [Lcom/geinimi/b/d;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/geinimi/b/d;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geinimi/q;

    invoke-virtual {v1, p1}, Lcom/geinimi/q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/geinimi/AdServiceThread;->e:Lcom/geinimi/b/b;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/geinimi/b/b;->a(Lcom/geinimi/b/d;)V

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)V
    .locals 0

    sput-object p0, Lcom/geinimi/AdServiceThread;->j:Ljava/lang/String;

    sput p1, Lcom/geinimi/AdServiceThread;->i:I

    sput-object p2, Lcom/geinimi/AdServiceThread;->l:Ljava/util/Date;

    sput-object p3, Lcom/geinimi/AdServiceThread;->m:Ljava/util/Date;

    return-void
.end method

.method private processDOWNLOAD_FAILUE_Action()V
    .locals 1

    sget-object v0, Lcom/geinimi/q;->b:Lcom/geinimi/q;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/q;)V

    return-void
.end method

.method private processDOWNLOAD_OK_Action()V
    .locals 1

    sget-object v0, Lcom/geinimi/q;->d:Lcom/geinimi/q;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/q;)V

    return-void
.end method

.method private processIDLEAction()V
    .locals 1

    sget-object v0, Lcom/geinimi/q;->c:Lcom/geinimi/q;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/q;)V

    return-void
.end method

.method private processPARSE_FAILUE_Action()V
    .locals 1

    sget-object v0, Lcom/geinimi/q;->b:Lcom/geinimi/q;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/q;)V

    return-void
.end method

.method private processPARSE_OK_Action()V
    .locals 1

    sget-object v0, Lcom/geinimi/q;->e:Lcom/geinimi/q;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/q;)V

    return-void
.end method

.method private processSTARTAction()V
    .locals 1

    sget-object v0, Lcom/geinimi/q;->b:Lcom/geinimi/q;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/q;)V

    return-void
.end method

.method private processTRANSACT_FAILUE_Action()V
    .locals 1

    sget-object v0, Lcom/geinimi/q;->b:Lcom/geinimi/q;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/q;)V

    return-void
.end method

.method private processTRANSACT_OK_Action()V
    .locals 1

    sget-object v0, Lcom/geinimi/q;->b:Lcom/geinimi/q;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/q;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, ""

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/geinimi/AdServiceThread;->d:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/geinimi/AdServiceThread;->e:Lcom/geinimi/b/b;

    invoke-virtual {v0}, Lcom/geinimi/b/b;->a()Lcom/geinimi/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geinimi/b/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geinimi/q;

    sget-object v1, Lcom/geinimi/o;->a:[I

    invoke-virtual {v0}, Lcom/geinimi/q;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/geinimi/AdServiceThread;->n:J

    sget-wide v4, Lcom/geinimi/AdServiceThread;->o:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    sget-wide v0, Lcom/geinimi/AdServiceThread;->o:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/geinimi/AdServiceThread;->n:J

    sget-wide v4, Lcom/geinimi/AdServiceThread;->o:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/geinimi/AdServiceThread;->b:I

    add-int/lit16 v0, v0, 0x1388

    iput v0, p0, Lcom/geinimi/AdServiceThread;->b:I

    sget v0, Lcom/geinimi/AdServiceThread;->i:I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/geinimi/AdServiceThread;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/geinimi/AdServiceThread;->l:Ljava/util/Date;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/geinimi/AdServiceThread;->m:Ljava/util/Date;

    if-eqz v0, :cond_2

    sget v0, Lcom/geinimi/AdServiceThread;->k:I

    add-int/lit16 v0, v0, 0x1388

    sput v0, Lcom/geinimi/AdServiceThread;->k:I

    sget v1, Lcom/geinimi/AdServiceThread;->i:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    sput v0, Lcom/geinimi/AdServiceThread;->k:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lcom/geinimi/AdServiceThread;->m:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    sput v0, Lcom/geinimi/AdServiceThread;->i:I

    :cond_2
    :goto_2
    iget v0, p0, Lcom/geinimi/AdServiceThread;->b:I

    sget v1, Lcom/geinimi/AdServiceThread;->a:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/geinimi/AdServiceThread;->b:I

    sget-object v0, Lcom/geinimi/p;->b:Lcom/geinimi/p;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/p;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_4
    :try_start_3
    sget-object v1, Lcom/geinimi/AdServiceThread;->l:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/geinimi/AdServiceThread;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/geinimi/c/d;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :pswitch_2
    :try_start_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x46

    invoke-static {v1}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/geinimi/c/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x47

    invoke-static {v1}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/geinimi/c/k;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x48

    invoke-static {v1}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/geinimi/c/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x49

    invoke-static {v1}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/geinimi/c/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4a

    invoke-static {v1}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/geinimi/c/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4b

    invoke-static {v1}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/geinimi/c/k;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4c

    invoke-static {v1}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/geinimi/c/k;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4d

    invoke-static {v1}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/geinimi/c/k;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [D

    invoke-static {v1}, Lcom/geinimi/c/d;->a([D)Z

    const/16 v2, 0x4e

    invoke-static {v2}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4f

    invoke-static {v2}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/geinimi/c/k;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/geinimi/AdServiceThread;->f:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v1, v0, v2}, Lcom/geinimi/c/l;->a(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/util/ByteArrayBuffer;)V

    iget-object v0, p0, Lcom/geinimi/AdServiceThread;->f:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/geinimi/c/m;->a([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/geinimi/AdServiceThread;->f:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    iget-object v1, p0, Lcom/geinimi/AdServiceThread;->f:Lorg/apache/http/util/ByteArrayBuffer;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    if-eqz v0, :cond_5

    array-length v0, v0

    if-nez v0, :cond_6

    :cond_5
    sget-object v0, Lcom/geinimi/p;->d:Lcom/geinimi/p;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/p;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/geinimi/p;->d:Lcom/geinimi/p;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/p;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    sget-object v0, Lcom/geinimi/p;->d:Lcom/geinimi/p;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/p;)V

    goto/16 :goto_0

    :cond_6
    :try_start_6
    sget-object v0, Lcom/geinimi/p;->c:Lcom/geinimi/p;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/p;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :pswitch_3
    :try_start_7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/geinimi/AdServiceThread;->f:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/geinimi/c/o;->a(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/geinimi/AdPushable;->b(Ljava/util/HashMap;)Lcom/geinimi/AdPushable;

    move-result-object v0

    iput-object v0, p0, Lcom/geinimi/AdServiceThread;->g:Lcom/geinimi/AdPushable;

    sget-object v0, Lcom/geinimi/p;->e:Lcom/geinimi/p;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/p;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_8
    sget-object v0, Lcom/geinimi/p;->f:Lcom/geinimi/p;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/p;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    sget-object v0, Lcom/geinimi/p;->f:Lcom/geinimi/p;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/p;)V

    goto/16 :goto_0

    :pswitch_4
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Begin Transact pushable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geinimi/AdServiceThread;->g:Lcom/geinimi/AdPushable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/geinimi/AdServiceThread;->g:Lcom/geinimi/AdPushable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/geinimi/AdServiceThread;->g:Lcom/geinimi/AdPushable;

    invoke-virtual {v0}, Lcom/geinimi/AdPushable;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/geinimi/AdServiceThread;->g:Lcom/geinimi/AdPushable;

    instance-of v0, v0, Lcom/geinimi/r;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/geinimi/AdServiceThread;->g:Lcom/geinimi/AdPushable;

    check-cast v0, Lcom/geinimi/r;

    invoke-virtual {v0}, Lcom/geinimi/r;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/geinimi/AdServiceThread;->g:Lcom/geinimi/AdPushable;

    check-cast v0, Lcom/geinimi/r;

    new-instance v1, Landroid/app/Notification;

    invoke-virtual {v0}, Lcom/geinimi/r;->g()I

    move-result v2

    sget-object v3, Lcom/geinimi/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/geinimi/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    const/4 v2, 0x0

    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.geinimi.custom.Ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/geinimi/AdService;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/geinimi/AdService;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    move-result-object v2

    :goto_3
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advertisement = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,gAdservice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/geinimi/AdServiceThread;->c:Lcom/geinimi/AdService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/geinimi/AdServiceThread;->c:Lcom/geinimi/AdService;

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/geinimi/r;->f()Lcom/geinimi/ads/Advertisable;

    move-result-object v2

    instance-of v2, v2, Lcom/geinimi/ads/p;

    if-eqz v2, :cond_c

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    :goto_4
    invoke-static {v0}, Lcom/geinimi/c/n;->a(Lcom/geinimi/AdPushable;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ACTIVITY_PARAM_KEY"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/geinimi/AdServiceThread;->c:Lcom/geinimi/AdService;

    invoke-virtual {v0}, Lcom/geinimi/r;->e()I

    move-result v4

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/geinimi/AdServiceThread;->c:Lcom/geinimi/AdService;

    sget-object v4, Lcom/geinimi/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/geinimi/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/geinimi/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/geinimi/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    iget-object v2, p0, Lcom/geinimi/AdServiceThread;->h:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Lcom/geinimi/r;->e()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_7
    :goto_5
    sget-object v0, Lcom/geinimi/p;->g:Lcom/geinimi/p;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/p;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    sget-object v0, Lcom/geinimi/p;->h:Lcom/geinimi/p;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/p;)V

    goto/16 :goto_0

    :cond_8
    :try_start_c
    iget-object v0, p0, Lcom/geinimi/AdServiceThread;->g:Lcom/geinimi/AdPushable;

    instance-of v0, v0, Lcom/geinimi/r;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/geinimi/AdServiceThread;->g:Lcom/geinimi/AdPushable;

    invoke-static {v0}, Lcom/geinimi/c/n;->a(Lcom/geinimi/AdPushable;)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/geinimi/AdServiceThread;->g:Lcom/geinimi/AdPushable;

    invoke-virtual {v0}, Lcom/geinimi/AdPushable;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2a

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/geinimi/c/k;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2b

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/geinimi/c/k;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/geinimi/c/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/geinimi/c/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/geinimi/c/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x43

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/geinimi/c/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x44

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/geinimi/c/k;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x45

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/geinimi/c/k;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/geinimi/AdPushable;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/geinimi/AdPushable;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geinimi/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    sget-object v0, Lcom/geinimi/p;->h:Lcom/geinimi/p;

    invoke-direct {p0, v0}, Lcom/geinimi/AdServiceThread;->a(Lcom/geinimi/p;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_0

    :cond_b
    return-void

    :catch_7
    move-exception v3

    goto/16 :goto_3

    :cond_c
    move-object v2, v3

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
