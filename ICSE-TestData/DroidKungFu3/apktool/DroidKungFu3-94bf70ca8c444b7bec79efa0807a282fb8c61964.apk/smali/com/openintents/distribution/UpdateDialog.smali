.class public Lcom/openintents/distribution/UpdateDialog;
.super Lcom/openintents/distribution/DownloadAppDialog;
.source "UpdateDialog.java"


# static fields
.field private static final DEBUG_NO_MARKET:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdateMenu"

.field public static final UPDATE_CHECKER:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 45
    const-string v2, "com.openintents.updatechecker"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 46
    const-string v2, "com.android.vending"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 47
    const-string v2, "com.a0soft.gphone.aTrackDog"

    aput-object v2, v0, v1

    .line 43
    sput-object v0, Lcom/openintents/distribution/UpdateDialog;->UPDATE_CHECKER:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    .line 52
    const v2, 0x7f060015

    .line 53
    const v3, 0x7f060019

    .line 54
    const v4, 0x7f060003

    .line 55
    const v5, 0x7f060004

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/openintents/distribution/DownloadAppDialog;-><init>(Landroid/content/Context;IIII)V

    .line 56
    iput-object p1, p0, Lcom/openintents/distribution/UpdateDialog;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/openintents/distribution/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/openintents/util/VersionUtils;->getVersionNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, "version":Ljava/lang/String;
    iget-object v0, p0, Lcom/openintents/distribution/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/openintents/util/VersionUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "appname":Ljava/lang/String;
    iget-object v0, p0, Lcom/openintents/distribution/UpdateDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f060010

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "appnameversion":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, "\n\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v0, p0, Lcom/openintents/distribution/UpdateDialog;->mMessageText:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openintents/distribution/UpdateDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/openintents/distribution/UpdateDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/openintents/distribution/UpdateDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 69
    return-void
.end method

.method public static isUpdateMenuNecessary(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 96
    const/4 v1, 0x0

    .line 99
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/openintents/distribution/UpdateDialog;->UPDATE_CHECKER:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 114
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 101
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 102
    sget-object v3, Lcom/openintents/distribution/UpdateDialog;->UPDATE_CHECKER:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    .line 101
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    :goto_2
    if-eqz v1, :cond_1

    move v2, v5

    .line 109
    goto :goto_1

    .line 99
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 78
    const v1, 0x7f060001

    .line 80
    .local v1, "resId":I
    iget-object v2, p0, Lcom/openintents/distribution/UpdateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lcom/openintents/distribution/UpdateDialog;->startSaveActivity(Landroid/content/Intent;)V

    .line 87
    .end local v1    # "resId":I
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/openintents/distribution/DownloadAppDialog;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
