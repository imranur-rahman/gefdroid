.class public Lcom/openintents/distribution/AboutDialog;
.super Lcom/openintents/distribution/DownloadAppDialog;
.source "AboutDialog.java"


# static fields
.field private static final DEBUG_NO_OI_ABOUT:Z = false

.field private static final TAG:Ljava/lang/String; = "About"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    .line 40
    const v2, 0x7f06001b

    .line 41
    const v3, 0x7f06001d

    .line 42
    const v4, 0x7f060005

    .line 43
    const v5, 0x7f060006

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/openintents/distribution/DownloadAppDialog;-><init>(Landroid/content/Context;IIII)V

    .line 45
    iget-object v0, p0, Lcom/openintents/distribution/AboutDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/openintents/util/VersionUtils;->getVersionNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 46
    .local v9, "version":Ljava/lang/String;
    iget-object v0, p0, Lcom/openintents/distribution/AboutDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/openintents/util/VersionUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, "appname":Ljava/lang/String;
    iget-object v0, p0, Lcom/openintents/distribution/AboutDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f060010

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "appnameversion":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "\n\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v0, p0, Lcom/openintents/distribution/AboutDialog;->mMessageText:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openintents/distribution/AboutDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public static showDialogOrStartActivity(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dialogId"    # I

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.openintents.action.SHOW_ABOUT_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.openintents.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-static {p0, v0}, Lcom/openintents/util/IntentUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
