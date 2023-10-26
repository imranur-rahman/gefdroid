.class public Lcn/domob/android/download/AppExchangeDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final Act_Type:Ljava/lang/String; = "actType"

.field protected static final App_Download_Path:Ljava/lang/String; = "downloadPath"

.field protected static final App_Id:Ljava/lang/String; = "appId"

.field protected static final App_Name:Ljava/lang/String; = "appName"

.field protected static final App_Notify_Id:Ljava/lang/String; = "notifyId"

.field protected static final Type_Cancel:Ljava/lang/String; = "typeCancel"

.field protected static final Type_Install:Ljava/lang/String; = "typeInstall"

.field static a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/domob/android/download/AppExchangeDownloader;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/content/Context;

.field private static i:I

.field private static j:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/app/Notification;

.field private d:Landroid/app/NotificationManager;

.field private e:I

.field private f:I

.field private g:Lcn/domob/android/download/AppExchangeDownloaderListener;

.field private h:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/os/Handler;

.field private p:Lcn/domob/android/download/DownloadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/content/Context;

    .line 30
    const/4 v0, 0x0

    sput v0, Lcn/domob/android/download/AppExchangeDownloader;->i:I

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/download/AppExchangeDownloader;->a:Ljava/util/Hashtable;

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/download/AppExchangeDownloader;->j:Ljava/util/Hashtable;

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v3, "DomobSDK"

    const-string v1, ""

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->c:Landroid/app/Notification;

    .line 23
    iput-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->d:Landroid/app/NotificationManager;

    .line 24
    iput v2, p0, Lcn/domob/android/download/AppExchangeDownloader;->e:I

    .line 25
    iput v2, p0, Lcn/domob/android/download/AppExchangeDownloader;->f:I

    .line 26
    iput-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->g:Lcn/domob/android/download/AppExchangeDownloaderListener;

    .line 27
    const-string v0, ""

    iput-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->h:Ljava/lang/String;

    .line 36
    iput v2, p0, Lcn/domob/android/download/AppExchangeDownloader;->k:I

    .line 56
    const-string v0, ""

    iput-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->l:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->m:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->n:Ljava/lang/String;

    .line 146
    new-instance v0, Lcn/domob/android/download/a;

    invoke-direct {v0, p0}, Lcn/domob/android/download/a;-><init>(Lcn/domob/android/download/AppExchangeDownloader;)V

    iput-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->o:Landroid/os/Handler;

    .line 97
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/content/Context;

    .line 99
    iput-object p1, p0, Lcn/domob/android/download/AppExchangeDownloader;->l:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcn/domob/android/download/AppExchangeDownloader;->m:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcn/domob/android/download/AppExchangeDownloader;->n:Ljava/lang/String;

    .line 106
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    sget v0, Lcn/domob/android/download/AppExchangeDownloader;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/domob/android/download/AppExchangeDownloader;->i:I

    .line 108
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->j:Ljava/util/Hashtable;

    sget v1, Lcn/domob/android/download/AppExchangeDownloader;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget v0, Lcn/domob/android/download/AppExchangeDownloader;->i:I

    iput v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->e:I

    .line 113
    :goto_0
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " notification_id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    return-void

    .line 111
    :cond_1
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->e:I

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/download/AppExchangeDownloader;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->k:I

    return v0
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/content/Context;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/download/AppExchangeDownloader;I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcn/domob/android/download/AppExchangeDownloader;->k:I

    return-void
.end method

.method static synthetic a(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcn/domob/android/download/AppExchangeDownloader;->h:Ljava/lang/String;

    return-void
.end method

.method public static appIsDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v4, "DomobSDK"

    .line 322
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    new-instance v1, Lcn/domob/android/download/b;

    invoke-direct {v1, p0, v0, p1, v3}, Lcn/domob/android/download/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/download/AppExchangeDownloader$b;)V

    .line 325
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is  exsist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    invoke-virtual {v1}, Lcn/domob/android/download/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 329
    if-nez v0, :cond_1

    move-object v0, v3

    .line 332
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->d:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/download/AppExchangeDownloader;I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcn/domob/android/download/AppExchangeDownloader;->f:I

    return-void
.end method

.method static synthetic b(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 282
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "begin download in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcn/domob/android/download/DownloadTask;

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->l:Ljava/lang/String;

    new-instance v2, Lcn/domob/android/download/AppExchangeDownloader$a;

    invoke-direct {v2, p0}, Lcn/domob/android/download/AppExchangeDownloader$a;-><init>(Lcn/domob/android/download/AppExchangeDownloader;)V

    invoke-direct {v0, v1, p1, v2}, Lcn/domob/android/download/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/download/AppExchangeDownloader$a;)V

    iput-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->p:Lcn/domob/android/download/DownloadTask;

    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->p:Lcn/domob/android/download/DownloadTask;

    invoke-virtual {v0}, Lcn/domob/android/download/DownloadTask;->start()V

    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic c(Lcn/domob/android/download/AppExchangeDownloader;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->e:I

    return v0
.end method

.method static synthetic d(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public static downloadApp(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/download/AppExchangeDownloaderListener;)V
    .locals 7
    .param p0, "downloadUrl"    # Ljava/lang/String;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcn/domob/android/download/AppExchangeDownloaderListener;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x3

    const-string v3, "DomobSDK"

    .line 67
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    sget-object v1, Lcn/domob/android/download/AppExchangeDownloader;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const/4 v0, 0x2

    const-string v1, "\u5f53\u524d\u5e94\u7528\u5df2\u5728\u4e0b\u8f7d"

    invoke-interface {p3, v0, v1}, Lcn/domob/android/download/AppExchangeDownloaderListener;->onDownloadFailed(ILjava/lang/String;)V

    .line 74
    const-string v0, "DomobSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is downloading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local p0    # "downloadUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local p0    # "downloadUrl":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcn/domob/android/download/AppExchangeDownloader;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 80
    const-string v0, "\u6700\u5927\u4e0b\u8f7d\u6570\u4e3a3\u4e2a"

    invoke-interface {p3, v2, v0}, Lcn/domob/android/download/AppExchangeDownloaderListener;->onDownloadFailed(ILjava/lang/String;)V

    .line 81
    const-string v0, "download"

    const-string v1, "max"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "DomobSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "DomobSDK"

    const-string v0, "max download is 3"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_2
    new-instance v1, Lcn/domob/android/download/AppExchangeDownloader;

    invoke-direct {v1, p0, p1, v0, p2}, Lcn/domob/android/download/AppExchangeDownloader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 88
    iput-object p3, v1, Lcn/domob/android/download/AppExchangeDownloader;->g:Lcn/domob/android/download/AppExchangeDownloaderListener;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcn/domob/android/download/AppExchangeDownloader;->m:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/content/Context;

    iget v2, v1, Lcn/domob/android/download/AppExchangeDownloader;->e:I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/content/Context;

    const-class v5, Lcn/domob/android/download/DownloadCancelActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "appName"

    iget-object v5, v1, Lcn/domob/android/download/AppExchangeDownloader;->m:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "appId"

    iget-object v5, v1, Lcn/domob/android/download/AppExchangeDownloader;->n:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "actType"

    const-string v5, "typeCancel"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "downloadUrl":Ljava/lang/String;
    check-cast p0, Landroid/app/NotificationManager;

    iput-object p0, v1, Lcn/domob/android/download/AppExchangeDownloader;->d:Landroid/app/NotificationManager;

    iget-object v0, v1, Lcn/domob/android/download/AppExchangeDownloader;->d:Landroid/app/NotificationManager;

    iget v2, v1, Lcn/domob/android/download/AppExchangeDownloader;->e:I

    invoke-virtual {v0, v2, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v0, Lcn/domob/android/download/b;

    sget-object v2, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/content/Context;

    iget-object v3, v1, Lcn/domob/android/download/AppExchangeDownloader;->n:Ljava/lang/String;

    iget-object v4, v1, Lcn/domob/android/download/AppExchangeDownloader;->l:Ljava/lang/String;

    new-instance v5, Lcn/domob/android/download/AppExchangeDownloader$b;

    invoke-direct {v5, v1}, Lcn/domob/android/download/AppExchangeDownloader$b;-><init>(Lcn/domob/android/download/AppExchangeDownloader;)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/domob/android/download/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/download/AppExchangeDownloader$b;)V

    invoke-virtual {v0}, Lcn/domob/android/download/b;->start()V

    .line 90
    invoke-interface {p3}, Lcn/domob/android/download/AppExchangeDownloaderListener;->onStartDownload()V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcn/domob/android/download/AppExchangeDownloader;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->f:I

    return v0
.end method

.method static synthetic f(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->g:Lcn/domob/android/download/AppExchangeDownloaderListener;

    return-object v0
.end method

.method static synthetic j(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->o:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected stopDownload()V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 337
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stop download  cancel notify "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->p:Lcn/domob/android/download/DownloadTask;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->p:Lcn/domob/android/download/DownloadTask;

    invoke-virtual {v0}, Lcn/domob/android/download/DownloadTask;->a()V

    .line 343
    :cond_1
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->d:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->e:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 344
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    return-void
.end method
