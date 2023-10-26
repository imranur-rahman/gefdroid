.class public Lcom/openintents/distribution/NewVersionActivity;
.super Lcom/openintents/distribution/EulaActivity;
.source "NewVersionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/openintents/distribution/EulaActivity;-><init>()V

    return-void
.end method


# virtual methods
.method accept()V
    .locals 0

    .prologue
    .line 71
    invoke-static {p0}, Lcom/openintents/distribution/EulaOrNewVersion;->storeCurrentVersionCode(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0}, Lcom/openintents/distribution/NewVersionActivity;->startOriginalActivity()V

    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/openintents/distribution/EulaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {p0}, Lcom/openintents/util/VersionUtils;->getVersionNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "version":Ljava/lang/String;
    const v4, 0x7f060010

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 57
    iget-object v6, p0, Lcom/openintents/distribution/NewVersionActivity;->mAppName:Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object v3, v5, v8

    .line 56
    invoke-virtual {p0, v4, v5}, Lcom/openintents/distribution/NewVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "title":Ljava/lang/String;
    const v4, 0x7f060011

    new-array v5, v8, [Ljava/lang/Object;

    .line 59
    iget-object v6, p0, Lcom/openintents/distribution/NewVersionActivity;->mAppName:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 58
    invoke-virtual {p0, v4, v5}, Lcom/openintents/distribution/NewVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f060012

    invoke-virtual {p0, v5}, Lcom/openintents/distribution/NewVersionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    const v4, 0x7f090014

    invoke-virtual {p0, v4}, Lcom/openintents/distribution/NewVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 63
    .local v2, "v":Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 64
    return-void
.end method
