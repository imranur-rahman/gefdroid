.class final Lcom/geinimi/f;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/geinimi/r;

.field private synthetic b:Lcom/geinimi/AdActivity;


# direct methods
.method constructor <init>(Lcom/geinimi/AdActivity;Lcom/geinimi/r;)V
    .locals 0

    iput-object p1, p0, Lcom/geinimi/f;->b:Lcom/geinimi/AdActivity;

    iput-object p2, p0, Lcom/geinimi/f;->a:Lcom/geinimi/r;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oh no! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    if-nez p2, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/geinimi/r;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/geinimi/f;->b:Lcom/geinimi/AdActivity;

    iget-object v0, v0, Lcom/geinimi/AdActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "0"

    :cond_2
    iget-object v1, p0, Lcom/geinimi/f;->a:Lcom/geinimi/r;

    invoke-virtual {v1}, Lcom/geinimi/AdPushable;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x3c

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/geinimi/c/k;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2b

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/geinimi/c/k;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/geinimi/AdPushable;->e()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2d

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/geinimi/c/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2e

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/geinimi/c/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2f

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/geinimi/c/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x43

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/geinimi/c/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x44

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/geinimi/c/k;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x45

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/geinimi/c/k;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x3d

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/geinimi/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p2}, Lcom/geinimi/ads/a;->a(Ljava/lang/String;)Lcom/geinimi/ads/Advertisable;

    move-result-object v0

    instance-of v1, v0, Lcom/geinimi/ads/g;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/geinimi/AdActivity;->a()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/geinimi/AdActivity;->a(Z)Z

    iget-object v1, p0, Lcom/geinimi/f;->b:Lcom/geinimi/AdActivity;

    invoke-static {v1, v0}, Lcom/geinimi/AdActivity;->a(Lcom/geinimi/AdActivity;Lcom/geinimi/ads/Advertisable;)V

    :cond_3
    :goto_1
    move v0, v5

    goto/16 :goto_0

    :cond_4
    instance-of v1, v0, Lcom/geinimi/ads/s;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/geinimi/AdActivity;->b()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/geinimi/AdActivity;->b(Z)Z

    iget-object v1, p0, Lcom/geinimi/f;->b:Lcom/geinimi/AdActivity;

    invoke-static {v1, v0}, Lcom/geinimi/AdActivity;->a(Lcom/geinimi/AdActivity;Lcom/geinimi/ads/Advertisable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v5

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/geinimi/ads/Advertisable;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/geinimi/f;->b:Lcom/geinimi/AdActivity;

    invoke-virtual {v0}, Lcom/geinimi/ads/Advertisable;->f()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/geinimi/AdActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
