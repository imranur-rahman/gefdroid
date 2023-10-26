.class public Lcom/openintents/distribution/DownloadAppDialog;
.super Landroid/app/AlertDialog;
.source "DownloadAppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "StartSaveActivity"


# instance fields
.field mContext:Landroid/content/Context;

.field mDownloadAppName:Ljava/lang/String;

.field mDownloadPackage:I

.field mDownloadPackageName:Ljava/lang/String;

.field mDownloadWebsite:I

.field mMarketAvailable:Z

.field mMessageText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # I
    .param p3, "download_name"    # I
    .param p4, "download_package"    # I
    .param p5, "download_website"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/openintents/distribution/DownloadAppDialog;->set(IIII)V

    .line 57
    return-void
.end method

.method public static onPrepareDialog(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 104
    move-object v0, p1

    check-cast v0, Lcom/openintents/distribution/DownloadAppDialog;

    move-object v1, v0

    .line 106
    .local v1, "d":Lcom/openintents/distribution/DownloadAppDialog;
    iget-object v3, v1, Lcom/openintents/distribution/DownloadAppDialog;->mDownloadPackageName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/openintents/distribution/MarketUtils;->isMarketAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 110
    .local v2, "has_android_market":Z
    const v3, 0x1020019

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 111
    if-eqz v2, :cond_0

    const/4 v4, 0x0

    .line 110
    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-void

    .line 111
    :cond_0
    const/16 v4, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 92
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/openintents/distribution/DownloadAppDialog;->mDownloadPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/openintents/distribution/MarketUtils;->getMarketDownloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/openintents/distribution/DownloadAppDialog;->startSaveActivity(Landroid/content/Intent;)V

    .line 101
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/openintents/distribution/DownloadAppDialog;->mDownloadWebsite:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 98
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Lcom/openintents/distribution/DownloadAppDialog;->startSaveActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected set(IIII)V
    .locals 7
    .param p1, "message"    # I
    .param p2, "download_name"    # I
    .param p3, "download_package"    # I
    .param p4, "download_website"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 61
    iput p3, p0, Lcom/openintents/distribution/DownloadAppDialog;->mDownloadPackage:I

    .line 62
    iput p4, p0, Lcom/openintents/distribution/DownloadAppDialog;->mDownloadWebsite:I

    .line 64
    iget-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mDownloadAppName:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/openintents/distribution/DownloadAppDialog;->mDownloadPackage:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mDownloadPackageName:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/openintents/distribution/DownloadAppDialog;->mDownloadPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/openintents/distribution/MarketUtils;->isMarketAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mMarketAvailable:Z

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-boolean v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mMarketAvailable:Z

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f060023

    new-array v3, v6, [Ljava/lang/Object;

    .line 74
    iget-object v4, p0, Lcom/openintents/distribution/DownloadAppDialog;->mDownloadAppName:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mMessageText:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mMessageText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/openintents/distribution/DownloadAppDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f060027

    new-array v3, v6, [Ljava/lang/Object;

    .line 83
    iget-object v4, p0, Lcom/openintents/distribution/DownloadAppDialog;->mDownloadAppName:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openintents/distribution/DownloadAppDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f060025

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/openintents/distribution/DownloadAppDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, p0}, Lcom/openintents/distribution/DownloadAppDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 87
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f060024

    new-array v3, v6, [Ljava/lang/Object;

    .line 77
    iget-object v4, p0, Lcom/openintents/distribution/DownloadAppDialog;->mDownloadAppName:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public startSaveActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 125
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/openintents/distribution/DownloadAppDialog;->mContext:Landroid/content/Context;

    .line 126
    const v2, 0x7f060018

    .line 127
    const/4 v3, 0x0

    .line 125
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 128
    const-string v1, "StartSaveActivity"

    const-string v2, "Error starting second activity."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
