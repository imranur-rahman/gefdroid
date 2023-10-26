.class Lcom/energysource/szj/embeded/EsScreen;
.super Ljava/lang/Object;
.source "AdvWebView.java"


# instance fields
.field height:I

.field width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/energysource/szj/embeded/EsScreen;->height:I

    return v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    const-string v0, "es"

    const-string v1, "========getScreen...."

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/energysource/szj/embeded/EsScreen;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/energysource/szj/embeded/EsScreen;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/energysource/szj/embeded/EsScreen;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 316
    iput p1, p0, Lcom/energysource/szj/embeded/EsScreen;->height:I

    .line 317
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/energysource/szj/embeded/EsScreen;->width:I

    .line 309
    return-void
.end method
