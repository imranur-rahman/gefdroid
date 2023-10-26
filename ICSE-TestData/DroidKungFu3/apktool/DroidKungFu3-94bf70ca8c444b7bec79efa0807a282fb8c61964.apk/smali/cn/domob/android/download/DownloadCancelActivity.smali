.class public Lcn/domob/android/download/DownloadCancelActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v1, p0, Lcn/domob/android/download/DownloadCancelActivity;->a:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v1, p0, Lcn/domob/android/download/DownloadCancelActivity;->b:Ljava/lang/String;

    .line 19
    const/16 v0, -0x400

    iput v0, p0, Lcn/domob/android/download/DownloadCancelActivity;->c:I

    .line 20
    iput-object p0, p0, Lcn/domob/android/download/DownloadCancelActivity;->d:Landroid/content/Context;

    .line 16
    return-void
.end method

.method static synthetic a(Lcn/domob/android/download/DownloadCancelActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcn/domob/android/download/DownloadCancelActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/download/DownloadCancelActivity;)V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcn/domob/android/download/DownloadCancelActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcn/domob/android/download/DownloadCancelActivity;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcn/domob/android/download/DownloadCancelActivity;->d:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v2, p0, Lcn/domob/android/download/DownloadCancelActivity;->c:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0, v1}, Lcn/domob/android/download/DownloadCancelActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v4, "DomobSDK"

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/domob/android/download/DownloadCancelActivity;->requestWindowFeature(I)Z

    .line 38
    invoke-virtual {p0}, Lcn/domob/android/download/DownloadCancelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcn/domob/android/download/DownloadCancelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    const-string v1, "appName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    const-string v2, "appId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/domob/android/download/DownloadCancelActivity;->a:Ljava/lang/String;

    .line 44
    const-string v2, "downloadPath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    iput-object v2, p0, Lcn/domob/android/download/DownloadCancelActivity;->b:Ljava/lang/String;

    .line 45
    const-string v2, "notifyId"

    const/16 v3, -0x400

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/domob/android/download/DownloadCancelActivity;->c:I

    .line 47
    const-string v2, "actType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v2, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is showing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    if-eqz v0, :cond_1

    .line 54
    const-string v2, "typeCancel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/domob/android/download/DownloadCancelActivity;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u662f\u5426\u53d6\u6d88?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    const-string v1, "\u53d6\u6d88\u4e0b\u8f7d"

    new-instance v2, Lcn/domob/android/download/DownloadCancelActivity$1;

    invoke-direct {v2, p0}, Lcn/domob/android/download/DownloadCancelActivity$1;-><init>(Lcn/domob/android/download/DownloadCancelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    const-string v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    new-instance v2, Lcn/domob/android/download/DownloadCancelActivity$2;

    invoke-direct {v2, p0}, Lcn/domob/android/download/DownloadCancelActivity$2;-><init>(Lcn/domob/android/download/DownloadCancelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    const-string v2, "typeInstall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/domob/android/download/DownloadCancelActivity;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u5df2\u4e0b\u8f7d\u5b8c\u6bd5\uff0c\u662f\u5426\u8981\u73b0\u5728\u5b89\u88c5?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 80
    const-string v1, "\u7a0d\u540e\u5b89\u88c5"

    new-instance v2, Lcn/domob/android/download/DownloadCancelActivity$3;

    invoke-direct {v2, p0}, Lcn/domob/android/download/DownloadCancelActivity$3;-><init>(Lcn/domob/android/download/DownloadCancelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 91
    const-string v1, "\u5f00\u59cb\u5b89\u88c5"

    new-instance v2, Lcn/domob/android/download/DownloadCancelActivity$4;

    invoke-direct {v2, p0}, Lcn/domob/android/download/DownloadCancelActivity$4;-><init>(Lcn/domob/android/download/DownloadCancelActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
