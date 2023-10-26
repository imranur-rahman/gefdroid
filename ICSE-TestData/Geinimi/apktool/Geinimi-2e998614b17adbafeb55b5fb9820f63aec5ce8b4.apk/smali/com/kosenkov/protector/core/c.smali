.class final Lcom/kosenkov/protector/core/c;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/kosenkov/protector/l;

.field private synthetic b:Lcom/kosenkov/protector/core/AppProtectorService;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/core/AppProtectorService;Ljava/lang/String;Lcom/kosenkov/protector/l;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/core/c;->b:Lcom/kosenkov/protector/core/AppProtectorService;

    iput-object p3, p0, Lcom/kosenkov/protector/core/c;->a:Lcom/kosenkov/protector/l;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-instance v2, Lcom/kosenkov/protector/core/b;

    iget-object v3, p0, Lcom/kosenkov/protector/core/c;->a:Lcom/kosenkov/protector/l;

    invoke-direct {v2, v3}, Lcom/kosenkov/protector/core/b;-><init>(Lcom/kosenkov/protector/core/a;)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/kosenkov/protector/core/c;->b:Lcom/kosenkov/protector/core/AppProtectorService;

    invoke-static {v3}, Lcom/kosenkov/protector/core/AppProtectorService;->a(Lcom/kosenkov/protector/core/AppProtectorService;)Ljava/io/BufferedReader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_1
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/kosenkov/protector/core/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    iget-object v0, p0, Lcom/kosenkov/protector/core/c;->b:Lcom/kosenkov/protector/core/AppProtectorService;

    invoke-virtual {v0}, Lcom/kosenkov/protector/core/AppProtectorService;->stopSelf()V

    return-void
.end method
