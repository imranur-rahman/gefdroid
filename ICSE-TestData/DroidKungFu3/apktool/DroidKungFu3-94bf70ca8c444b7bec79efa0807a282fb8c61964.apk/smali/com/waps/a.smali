.class Lcom/waps/a;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/waps/AdView;


# direct methods
.method constructor <init>(Lcom/waps/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/a;->a:Lcom/waps/AdView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/waps/a;->a:Lcom/waps/AdView;

    iget-object v0, v0, Lcom/waps/AdView;->d:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    sget v0, Lcom/waps/AdView;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/waps/a;->sleep(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/waps/AdView;->e:J

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, p0, Lcom/waps/a;->a:Lcom/waps/AdView;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/waps/AdView;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/a;->a:Lcom/waps/AdView;

    iget-object v0, v0, Lcom/waps/AdView;->d:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/waps/a;->a:Lcom/waps/AdView;

    iget-object v3, v3, Lcom/waps/AdView;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/waps/AdView;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v3, 0x3e8

    sub-int/2addr v0, v3

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/waps/a;->a:Lcom/waps/AdView;

    invoke-virtual {v0}, Lcom/waps/AdView;->showADS()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/waps/AdView;->e:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
