.class public Lcom/openintents/distribution/EulaActivity;
.super Landroid/app/Activity;
.source "EulaActivity.java"


# instance fields
.field mAppName:Ljava/lang/String;

.field mImage:Landroid/widget/ImageView;

.field mLaunchClass:Ljava/lang/String;

.field mLaunchIntent:Landroid/content/Intent;

.field mLaunchPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method accept()V
    .locals 0

    .prologue
    .line 84
    invoke-static {p0}, Lcom/openintents/distribution/EulaOrNewVersion;->storeEulaAccepted(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p0}, Lcom/openintents/distribution/EulaActivity;->startOriginalActivity()V

    .line 87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v3, 0x7f030006

    invoke-virtual {p0, v3}, Lcom/openintents/distribution/EulaActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/openintents/distribution/EulaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 62
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "com.openintents.extra.launch_activity_package"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/openintents/distribution/EulaActivity;->mLaunchPackage:Ljava/lang/String;

    .line 64
    const-string v3, "com.openintents.extra.launch_activity_class"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/openintents/distribution/EulaActivity;->mLaunchClass:Ljava/lang/String;

    .line 66
    const-string v3, "com.openintents.extra.launch_activity_intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/openintents/distribution/EulaActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Lcom/openintents/distribution/EulaActivity;->accept()V

    .line 70
    const v3, 0x7f09000f

    invoke-virtual {p0, v3}, Lcom/openintents/distribution/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/openintents/distribution/EulaActivity;->mImage:Landroid/widget/ImageView;

    .line 72
    invoke-static {p0}, Lcom/openintents/util/VersionUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/openintents/distribution/EulaActivity;->mAppName:Ljava/lang/String;

    .line 73
    invoke-static {p0}, Lcom/openintents/util/VersionUtils;->getApplicationIcon(Landroid/content/Context;)I

    move-result v2

    .line 75
    .local v2, "iconRes":I
    iget-object v3, p0, Lcom/openintents/distribution/EulaActivity;->mAppName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/openintents/distribution/EulaActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v3, p0, Lcom/openintents/distribution/EulaActivity;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    return-void
.end method

.method readTextFromRawResource(IZ)Ljava/lang/String;
    .locals 8
    .param p1, "resourceid"    # I
    .param p2, "preserveLineBreaks"    # Z

    .prologue
    .line 127
    const-string v2, ""

    .line 128
    .local v2, "license":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/openintents/distribution/EulaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 132
    .local v4, "resources":Landroid/content/res/Resources;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 133
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 132
    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 150
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .end local v3    # "line":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 138
    .restart local v3    # "line":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 153
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    if-eqz p2, :cond_2

    .line 144
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 146
    :cond_2
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method refuse()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/openintents/distribution/EulaActivity;->finish()V

    .line 116
    return-void
.end method

.method startOriginalActivity()V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/openintents/distribution/EulaActivity;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/openintents/distribution/EulaActivity;->mLaunchIntent:Landroid/content/Intent;

    .line 101
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 106
    :goto_0
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Lcom/openintents/distribution/EulaActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/openintents/distribution/EulaActivity;->finish()V

    .line 109
    return-void

    .line 103
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .restart local v0    # "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/openintents/distribution/EulaActivity;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/openintents/distribution/EulaActivity;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
