.class Lcom/adview/ad/KyAdView$2;
.super Ljava/lang/Object;
.source "KyAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adview/ad/KyAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adview/ad/KyAdView;


# direct methods
.method constructor <init>(Lcom/adview/ad/KyAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adview/ad/KyAdView$2;->this$0:Lcom/adview/ad/KyAdView;

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "http://"

    .line 715
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 716
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/adview/ad/KyAdView$2;->this$0:Lcom/adview/ad/KyAdView;

    # getter for: Lcom/adview/ad/KyAdView;->retAdBean:Lcom/adview/ad/RetAdBean;
    invoke-static {v5}, Lcom/adview/ad/KyAdView;->access$0(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/RetAdBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adview/ad/RetAdBean;->getAdLink()Ljava/lang/String;

    move-result-object v4

    .line 717
    .local v4, "url":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 719
    new-instance v5, Ljava/lang/String;

    const-string v6, "http://"

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 720
    .local v1, "len":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v1, :cond_2

    .line 722
    sub-int v5, v1, v7

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, "tmpUrl":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    const-string v6, "http://"

    invoke-direct {v5, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 725
    .local v2, "res":I
    if-nez v2, :cond_0

    .line 727
    :cond_0
    iget-object v5, p0, Lcom/adview/ad/KyAdView$2;->this$0:Lcom/adview/ad/KyAdView;

    # getter for: Lcom/adview/ad/KyAdView;->applyAdBean:Lcom/adview/ad/ApplyAdBean;
    invoke-static {v5}, Lcom/adview/ad/KyAdView;->access$3(Lcom/adview/ad/KyAdView;)Lcom/adview/ad/ApplyAdBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adview/ad/ApplyAdBean;->getTestMode()I

    move-result v5

    if-nez v5, :cond_1

    .line 728
    iget-object v5, p0, Lcom/adview/ad/KyAdView$2;->this$0:Lcom/adview/ad/KyAdView;

    iget-object v6, p0, Lcom/adview/ad/KyAdView$2;->this$0:Lcom/adview/ad/KyAdView;

    # getter for: Lcom/adview/ad/KyAdView;->agent2:Ljava/lang/String;
    invoke-static {v6}, Lcom/adview/ad/KyAdView;->access$4(Lcom/adview/ad/KyAdView;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/adview/ad/KyAdView;->clickServer(IIILjava/lang/String;)V
    invoke-static {v5, v7, v8, v7, v6}, Lcom/adview/ad/KyAdView;->access$5(Lcom/adview/ad/KyAdView;IIILjava/lang/String;)V

    .line 730
    :cond_1
    const-string v5, "AdViewAd"

    const-string v6, "Begin OnClick action....."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v5, p0, Lcom/adview/ad/KyAdView$2;->this$0:Lcom/adview/ad/KyAdView;

    invoke-virtual {v5, v4, v0}, Lcom/adview/ad/KyAdView;->openWebBrowser(Ljava/lang/String;Landroid/content/Context;)V

    .line 735
    .end local v1    # "len":I
    .end local v2    # "res":I
    .end local v3    # "tmpUrl":Ljava/lang/String;
    :cond_2
    return-void
.end method
