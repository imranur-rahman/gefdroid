.class final Lcn/domob/android/download/DownloadCancelActivity$2;
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
    iput-object p1, p0, Lcn/domob/android/download/DownloadCancelActivity$2;->a:Lcn/domob/android/download/DownloadCancelActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/domob/android/download/DownloadCancelActivity$2;->a:Lcn/domob/android/download/DownloadCancelActivity;

    invoke-virtual {v0}, Lcn/domob/android/download/DownloadCancelActivity;->finish()V

    .line 73
    return-void
.end method
