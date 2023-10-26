.class public Lcom/openintents/distribution/MarketUtils;
.super Ljava/lang/Object;
.source "MarketUtils.java"


# static fields
.field public static final MARKET_PACKAGE_DETAILS_PREFIX:Ljava/lang/String; = "market://details?id="


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarketDownloadIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 28
    .local v0, "marketUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method public static isMarketAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p1}, Lcom/openintents/distribution/MarketUtils;->getMarketDownloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/openintents/util/IntentUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
