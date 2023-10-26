.class final Lcn/domob/android/download/a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/download/AppExchangeDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/download/AppExchangeDownloader;


# direct methods
.method constructor <init>(Lcn/domob/android/download/AppExchangeDownloader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x64

    const-string v4, "DomobSDK"

    .line 149
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->a(Lcn/domob/android/download/AppExchangeDownloader;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcn/domob/android/download/AppExchangeDownloader;->a(Lcn/domob/android/download/AppExchangeDownloader;I)V

    .line 155
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;I)V

    .line 159
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)I

    move-result v1

    iget-object v2, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->d(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 161
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->e(Lcn/domob/android/download/AppExchangeDownloader;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 162
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->f(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " download success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->g(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->g(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".temp"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/download/AppExchangeDownloader;->a(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->i(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->i(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->g(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/android/download/AppExchangeDownloaderListener;->onDownloadSuccess(Ljava/lang/String;)V

    .line 172
    :cond_3
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;I)V

    .line 175
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->d(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->f(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6bd5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 176
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->d(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 177
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->g(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->d(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v1

    invoke-static {}, Lcn/domob/android/download/AppExchangeDownloader;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v3}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)I

    move-result v3

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 179
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)I

    move-result v1

    iget-object v2, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->d(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    invoke-static {}, Lcn/domob/android/download/AppExchangeDownloader;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/domob/android/download/DownloadCancelActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 183
    const-string v1, "actType"

    const-string v2, "typeInstall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "appName"

    iget-object v2, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->f(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "appId"

    iget-object v2, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "notifyId"

    iget-object v2, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v1, "downloadPath"

    iget-object v2, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->g(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    invoke-static {}, Lcn/domob/android/download/AppExchangeDownloader;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
