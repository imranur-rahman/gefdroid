.class public Lcom/kosenkov/protector/core/AppProtectorService;
.super Landroid/app/Service;


# instance fields
.field private a:Ljava/lang/Process;

.field private b:Ljava/io/BufferedReader;

.field private c:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/kosenkov/protector/core/AppProtectorService;->a:Ljava/lang/Process;

    iput-object v0, p0, Lcom/kosenkov/protector/core/AppProtectorService;->b:Ljava/io/BufferedReader;

    return-void
.end method

.method static synthetic a(Lcom/kosenkov/protector/core/AppProtectorService;)Ljava/io/BufferedReader;
    .locals 1

    iget-object v0, p0, Lcom/kosenkov/protector/core/AppProtectorService;->b:Ljava/io/BufferedReader;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/kosenkov/protector/core/AppProtectorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kosenkov/protector/l;->a(Landroid/content/Context;)Lcom/kosenkov/protector/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kosenkov/protector/l;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/kosenkov/protector/core/AppProtectorService;->stopSelf()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "unlock"

    invoke-virtual {p0, v1, v2}, Lcom/kosenkov/protector/core/AppProtectorService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "locked"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Lcom/kosenkov/protector/core/Receiver;

    invoke-direct {v1}, Lcom/kosenkov/protector/core/Receiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/kosenkov/protector/core/AppProtectorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "logcat"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "-v"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "raw"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "ActivityManager:I *:S"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/kosenkov/protector/core/AppProtectorService;->a:Ljava/lang/Process;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/kosenkov/protector/core/AppProtectorService;->a:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/kosenkov/protector/core/AppProtectorService;->b:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/kosenkov/protector/core/c;

    const-string v2, "AppProtector"

    invoke-direct {v1, p0, v2, v0}, Lcom/kosenkov/protector/core/c;-><init>(Lcom/kosenkov/protector/core/AppProtectorService;Ljava/lang/String;Lcom/kosenkov/protector/l;)V

    iput-object v1, p0, Lcom/kosenkov/protector/core/AppProtectorService;->c:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/kosenkov/protector/core/AppProtectorService;->c:Ljava/lang/Thread;

    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/kosenkov/protector/core/AppProtectorService;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Cannot start Protection"

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/kosenkov/protector/core/AppProtectorService;->stopSelf()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kosenkov/protector/core/AppProtectorService;->b:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/kosenkov/protector/core/AppProtectorService;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/kosenkov/protector/core/AppProtectorService;->b:Ljava/io/BufferedReader;

    iget-object v0, p0, Lcom/kosenkov/protector/core/AppProtectorService;->a:Ljava/lang/Process;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kosenkov/protector/core/AppProtectorService;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_1
    iput-object v1, p0, Lcom/kosenkov/protector/core/AppProtectorService;->a:Ljava/lang/Process;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
