.class public Lnet/youmi/android/AdActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Lnet/youmi/android/ax;

.field b:Lnet/youmi/android/cp;

.field c:Landroid/os/Handler;

.field d:Lnet/youmi/android/ak;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/AdActivity;->c:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/az;

    invoke-direct {v1, p0}, Lnet/youmi/android/az;-><init>(Lnet/youmi/android/AdActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "A79004B391FE457D956486F565DFC3B9"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method static a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    const-string v0, "A79004B391FE457D956486F565DFC3B9"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "A7D1721B9508405D8271AB82AC6D9B3C"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {p0}, Lnet/youmi/android/l;->a(Landroid/app/Activity;)Lnet/youmi/android/ak;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/AdActivity;->d:Lnet/youmi/android/ak;

    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "A79004B391FE457D956486F565DFC3B9"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "A7D1721B9508405D8271AB82AC6D9B3C"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    if-nez v1, :cond_0

    :try_start_2
    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->finish()V

    :cond_0
    if-ne v1, v5, :cond_4

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->finish()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->finish()V

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lnet/youmi/android/AdActivity;->requestWindowFeature(I)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/youmi/android/AdActivity;->setProgressBarIndeterminate(Z)V

    new-instance v1, Lnet/youmi/android/bw;

    iget-object v2, p0, Lnet/youmi/android/AdActivity;->d:Lnet/youmi/android/ak;

    invoke-direct {v1, p0, v2}, Lnet/youmi/android/bw;-><init>(Lnet/youmi/android/AdActivity;Lnet/youmi/android/ak;)V

    iput-object v1, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/cp;

    invoke-virtual {p0, v1}, Lnet/youmi/android/AdActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Lnet/youmi/android/bw;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_4
    if-ne v1, v4, :cond_3

    invoke-static {}, Lnet/youmi/android/aj;->a()Lnet/youmi/android/ax;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    iget-object v0, p0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->finish()V

    :cond_5
    iget-object v0, p0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    invoke-virtual {v0}, Lnet/youmi/android/ax;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->finish()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    invoke-virtual {v0}, Lnet/youmi/android/ax;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->finish()V

    :cond_6
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdActivity;->setProgressBarIndeterminate(Z)V

    new-instance v0, Lnet/youmi/android/bw;

    iget-object v1, p0, Lnet/youmi/android/AdActivity;->d:Lnet/youmi/android/ak;

    invoke-direct {v0, p0, v1}, Lnet/youmi/android/bw;-><init>(Lnet/youmi/android/AdActivity;Lnet/youmi/android/ak;)V

    iput-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/cp;

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdActivity;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    invoke-virtual {v1}, Lnet/youmi/android/ax;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    invoke-virtual {v2}, Lnet/youmi/android/ax;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/youmi/android/bw;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/youmi/android/AdActivity;->a()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    invoke-virtual {v0}, Lnet/youmi/android/ax;->h()Lnet/youmi/android/z;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->finish()V

    :cond_7
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdActivity;->setProgressBarIndeterminate(Z)V

    new-instance v0, Lnet/youmi/android/bw;

    iget-object v1, p0, Lnet/youmi/android/AdActivity;->d:Lnet/youmi/android/ak;

    invoke-direct {v0, p0, v1}, Lnet/youmi/android/bw;-><init>(Lnet/youmi/android/AdActivity;Lnet/youmi/android/ak;)V

    iput-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/cp;

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdActivity;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    invoke-virtual {v1}, Lnet/youmi/android/ax;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    invoke-virtual {v2}, Lnet/youmi/android/ax;->h()Lnet/youmi/android/z;

    move-result-object v2

    invoke-static {v2}, Lnet/youmi/android/bc;->a(Lnet/youmi/android/z;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/youmi/android/bw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    invoke-virtual {v0}, Lnet/youmi/android/ax;->m()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->finish()V

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lnet/youmi/android/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Lnet/youmi/android/ba;

    iget-object v1, p0, Lnet/youmi/android/AdActivity;->d:Lnet/youmi/android/ak;

    iget-object v2, p0, Lnet/youmi/android/AdActivity;->a:Lnet/youmi/android/ax;

    invoke-virtual {v2}, Lnet/youmi/android/ax;->m()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lnet/youmi/android/ba;-><init>(Landroid/app/Activity;Lnet/youmi/android/ak;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/cp;

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lnet/youmi/android/AdActivity;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/AdActivity;->b:Lnet/youmi/android/cp;

    invoke-interface {v0}, Lnet/youmi/android/cp;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
