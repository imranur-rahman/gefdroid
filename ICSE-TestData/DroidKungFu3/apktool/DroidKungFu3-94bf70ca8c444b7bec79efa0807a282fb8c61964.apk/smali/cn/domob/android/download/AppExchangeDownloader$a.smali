.class Lcn/domob/android/download/AppExchangeDownloader$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/download/AppExchangeDownloader;
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/download/AppExchangeDownloader;


# direct methods
.method constructor <init>(Lcn/domob/android/download/AppExchangeDownloader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 299
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-virtual {v0}, Lcn/domob/android/download/AppExchangeDownloader;->stopDownload()V

    .line 301
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->d(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {}, Lcn/domob/android/download/AppExchangeDownloader;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)I

    move-result v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 304
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->d(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->f(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 305
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->d(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 306
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)I

    move-result v1

    iget-object v2, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->d(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 307
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->j(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 294
    return-void
.end method
