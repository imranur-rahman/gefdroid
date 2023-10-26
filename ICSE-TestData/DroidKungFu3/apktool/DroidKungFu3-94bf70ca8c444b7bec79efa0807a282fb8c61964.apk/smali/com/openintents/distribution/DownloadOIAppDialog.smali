.class public Lcom/openintents/distribution/DownloadOIAppDialog;
.super Lcom/openintents/distribution/DownloadAppDialog;
.source "DownloadOIAppDialog.java"


# static fields
.field public static final OI_FILEMANAGER:I = 0x1

.field public static final OI_SAFE:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/openintents/distribution/DownloadAppDialog;-><init>(Landroid/content/Context;)V

    .line 13
    packed-switch p2, :pswitch_data_0

    .line 27
    :goto_0
    return-void

    .line 15
    :pswitch_0
    const v0, 0x7f06001f

    .line 16
    const v1, 0x7f06001e

    .line 17
    const v2, 0x7f060007

    .line 18
    const v3, 0x7f060008

    .line 15
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/openintents/distribution/DownloadOIAppDialog;->set(IIII)V

    goto :goto_0

    .line 21
    :pswitch_1
    const v0, 0x7f060021

    .line 22
    const v1, 0x7f060020

    .line 23
    const v2, 0x7f060009

    .line 24
    const v3, 0x7f06000a

    .line 21
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/openintents/distribution/DownloadOIAppDialog;->set(IIII)V

    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
