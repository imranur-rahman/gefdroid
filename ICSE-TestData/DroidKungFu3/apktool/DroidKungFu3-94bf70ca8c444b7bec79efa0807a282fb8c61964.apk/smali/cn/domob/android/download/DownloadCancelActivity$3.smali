.class final Lcn/domob/android/download/DownloadCancelActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/download/DownloadCancelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/download/DownloadCancelActivity;


# direct methods
.method constructor <init>(Lcn/domob/android/download/DownloadCancelActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/download/DownloadCancelActivity$3;->a:Lcn/domob/android/download/DownloadCancelActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/download/DownloadCancelActivity$3;->a:Lcn/domob/android/download/DownloadCancelActivity;

    invoke-static {v1}, Lcn/domob/android/download/DownloadCancelActivity;->a(Lcn/domob/android/download/DownloadCancelActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/download/AppExchangeDownloader;

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcn/domob/android/download/AppExchangeDownloader;->stopDownload()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcn/domob/android/download/DownloadCancelActivity$3;->a:Lcn/domob/android/download/DownloadCancelActivity;

    invoke-virtual {v0}, Lcn/domob/android/download/DownloadCancelActivity;->finish()V

    .line 89
    return-void
.end method
