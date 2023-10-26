.class public Lcom/energysource/szj/embeded/AdvWebView;
.super Landroid/webkit/WebView;
.source "AdvWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AdvWebView"


# instance fields
.field private isLast:Z

.field private isTransparent:Z

.field private resHeight:I

.field private resWidth:I

.field private showType:I

.field private tid:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getResHeight()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/energysource/szj/embeded/AdvWebView;->resHeight:I

    return v0
.end method

.method public getResWidth()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/energysource/szj/embeded/AdvWebView;->resWidth:I

    return v0
.end method

.method public getShowType()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/energysource/szj/embeded/AdvWebView;->showType:I

    return v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdvWebView;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/energysource/szj/embeded/AdvWebView;->time:J

    return-wide v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/energysource/szj/embeded/AdvWebView;->isLast:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/energysource/szj/embeded/AdvWebView;->isTransparent:Z

    return v0
.end method

.method public setLast(Z)V
    .locals 0
    .param p1, "isLast"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/energysource/szj/embeded/AdvWebView;->isLast:Z

    .line 45
    return-void
.end method

.method public setResHeight(I)V
    .locals 0
    .param p1, "resHeight"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/energysource/szj/embeded/AdvWebView;->resHeight:I

    .line 77
    return-void
.end method

.method public setResWidth(I)V
    .locals 0
    .param p1, "resWidth"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/energysource/szj/embeded/AdvWebView;->resWidth:I

    .line 69
    return-void
.end method

.method public setShowType(I)V
    .locals 0
    .param p1, "showType"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/energysource/szj/embeded/AdvWebView;->showType:I

    .line 93
    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0
    .param p1, "tid"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/energysource/szj/embeded/AdvWebView;->tid:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/energysource/szj/embeded/AdvWebView;->time:J

    .line 53
    return-void
.end method

.method public setTransparent(Z)V
    .locals 0
    .param p1, "isTransparent"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/energysource/szj/embeded/AdvWebView;->isTransparent:Z

    .line 61
    return-void
.end method
