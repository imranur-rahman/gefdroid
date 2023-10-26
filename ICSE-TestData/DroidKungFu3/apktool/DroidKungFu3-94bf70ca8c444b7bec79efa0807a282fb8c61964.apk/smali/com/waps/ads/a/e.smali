.class public Lcom/waps/ads/a/e;
.super Lcom/waps/ads/a/a;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/waps/ads/a/a;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V

    return-void
.end method


# virtual methods
.method public handle()V
    .locals 4

    const-string v3, "AdGroup_SDK"

    const-string v0, "AdGroup_SDK"

    const-string v0, "Event notification request initiated"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/waps/ads/a/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->i:Lcom/waps/ads/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/waps/ads/a/e;->d:Lcom/waps/ads/b/c;

    iget-object v1, v1, Lcom/waps/ads/b/c;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "AdGroup_SDK"

    const-string v1, "Event key is null"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->rollover()V

    goto :goto_0

    :cond_1
    const-string v2, "|;|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    const-string v1, "AdGroup_SDK"

    const-string v1, "Event key separator not found"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->rollover()V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/waps/ads/AdGroupLayout;->i:Lcom/waps/ads/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 p0, 0x0

    :try_start_0
    check-cast p0, [Ljava/lang/Class;

    invoke-virtual {v2, v1, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, v0, Lcom/waps/ads/AdGroupLayout;->i:Lcom/waps/ads/a;

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AdGroup_SDK"

    const-string v2, "Caught exception in handle()"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->rollover()V

    goto :goto_0

    :cond_3
    const-string v1, "AdGroup_SDK"

    const-string v1, "Event notification would be sent, but no interface is listening"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->rollover()V

    goto :goto_0
.end method
