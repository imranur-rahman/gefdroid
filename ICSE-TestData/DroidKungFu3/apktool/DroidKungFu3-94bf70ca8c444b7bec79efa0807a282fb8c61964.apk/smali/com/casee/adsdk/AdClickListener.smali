.class Lcom/casee/adsdk/AdClickListener;
.super Ljava/lang/Object;
.source "AdViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field ad:Lcom/casee/adsdk/Ad;

.field context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/casee/adsdk/Ad;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ad"    # Lcom/casee/adsdk/Ad;

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/casee/adsdk/AdClickListener;->context:Landroid/content/Context;

    .line 420
    iput-object p2, p0, Lcom/casee/adsdk/AdClickListener;->ad:Lcom/casee/adsdk/Ad;

    .line 421
    return-void
.end method

.method static synthetic access$000(Lcom/casee/adsdk/AdClickListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/casee/adsdk/AdClickListener;

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/casee/adsdk/AdClickListener;->startIntent()Z

    move-result v0

    return v0
.end method

.method private startIntent()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v4, "android.intent.action.VIEW"

    const-string v4, "android.intent.action.SENDTO"

    const-string v4, ""

    .line 472
    :try_start_0
    iget-object v4, p0, Lcom/casee/adsdk/AdClickListener;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v4}, Lcom/casee/adsdk/Ad;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 474
    .local v1, "i":Landroid/content/Intent;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v4, v7

    .line 515
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return v4

    .line 477
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_1
    const-string v4, "tel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 478
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 479
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "i":Landroid/content/Intent;
    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 507
    .end local v2    # "uri":Landroid/net/Uri;
    .restart local v1    # "i":Landroid/content/Intent;
    :goto_1
    if-nez v1, :cond_7

    move v4, v7

    .line 508
    goto :goto_0

    .line 482
    :cond_2
    const-string v4, "smsto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 483
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 484
    .restart local v2    # "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "i":Landroid/content/Intent;
    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 485
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v4, "sms_body"

    iget-object v5, p0, Lcom/casee/adsdk/AdClickListener;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v5}, Lcom/casee/adsdk/Ad;->getExtData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 512
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CASEE-AD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open new activity error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/casee/adsdk/AdClickListener;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v6}, Lcom/casee/adsdk/Ad;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v7

    .line 515
    goto :goto_0

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v4, "mailto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 489
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 490
    .restart local v2    # "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "i":Landroid/content/Intent;
    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 491
    .restart local v1    # "i":Landroid/content/Intent;
    goto :goto_1

    .line 493
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_4
    const-string v4, "geo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 494
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 495
    .restart local v2    # "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "i":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 496
    .restart local v1    # "i":Landroid/content/Intent;
    goto :goto_1

    .line 499
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_5
    if-eqz v3, :cond_6

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 500
    const-string v4, "$(ssq)"

    iget-object v5, p0, Lcom/casee/adsdk/AdClickListener;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v5}, Lcom/casee/adsdk/Ad;->getSsq()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 501
    const-string v4, "$(sid)"

    iget-object v5, p0, Lcom/casee/adsdk/AdClickListener;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v5}, Lcom/casee/adsdk/Ad;->getSid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 502
    const-string v4, "$(asq)"

    iget-object v5, p0, Lcom/casee/adsdk/AdClickListener;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v5}, Lcom/casee/adsdk/Ad;->getAsq()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 503
    const-string v4, "$(aid)"

    iget-object v5, p0, Lcom/casee/adsdk/AdClickListener;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v5}, Lcom/casee/adsdk/Ad;->getAid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 505
    :cond_6
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "i":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "i":Landroid/content/Intent;
    goto/16 :goto_1

    .line 509
    :cond_7
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 510
    iget-object v4, p0, Lcom/casee/adsdk/AdClickListener;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 511
    const/4 v4, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 424
    const-string v0, "CASEE-AD"

    const-string v1, "click ad."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v0, Lcom/casee/adsdk/AdClickListener$1;

    invoke-direct {v0, p0}, Lcom/casee/adsdk/AdClickListener$1;-><init>(Lcom/casee/adsdk/AdClickListener;)V

    invoke-virtual {v0}, Lcom/casee/adsdk/AdClickListener$1;->start()V

    .line 468
    return-void
.end method
