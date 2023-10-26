.class Lcom/casee/adsdk/CaseeAdView$ShowADHelper;
.super Ljava/lang/Thread;
.source "CaseeAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/casee/adsdk/CaseeAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShowADHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/casee/adsdk/CaseeAdView;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "CASEE-AD"

    .line 641
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    invoke-virtual {v1}, Lcom/casee/adsdk/CaseeAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    invoke-static {v1, v2}, Lcom/casee/adsdk/AdFetcher;->fetchAd(Landroid/content/Context;Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/Ad;

    move-result-object v1

    # setter for: Lcom/casee/adsdk/CaseeAdView;->ad:Lcom/casee/adsdk/Ad;
    invoke-static {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->access$502(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/Ad;)Lcom/casee/adsdk/Ad;

    .line 642
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->ad:Lcom/casee/adsdk/Ad;
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$500(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/Ad;

    move-result-object v0

    if-nez v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # setter for: Lcom/casee/adsdk/CaseeAdView;->isShowingAd:Z
    invoke-static {v0, v3}, Lcom/casee/adsdk/CaseeAdView;->access$602(Lcom/casee/adsdk/CaseeAdView;Z)Z

    .line 644
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->listener:Lcom/casee/adsdk/CaseeAdView$AdListener;
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$700(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->adStatus:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$800(Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v3}, Ljava/lang/Boolean;-><init>(Z)V

    # setter for: Lcom/casee/adsdk/CaseeAdView;->adStatus:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->access$802(Lcom/casee/adsdk/CaseeAdView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 647
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->listener:Lcom/casee/adsdk/CaseeAdView$AdListener;
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$700(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    invoke-interface {v0, v1}, Lcom/casee/adsdk/CaseeAdView$AdListener;->onFailedToReceiveAd(Lcom/casee/adsdk/CaseeAdView;)V

    .line 654
    :cond_0
    :goto_0
    const-string v0, "CASEE-AD"

    const-string v0, "cannot fetch ad."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_1
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->adStatus:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$800(Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v3}, Ljava/lang/Boolean;-><init>(Z)V

    # setter for: Lcom/casee/adsdk/CaseeAdView;->adStatus:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->access$802(Lcom/casee/adsdk/CaseeAdView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 651
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->listener:Lcom/casee/adsdk/CaseeAdView$AdListener;
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$700(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    invoke-interface {v0, v1}, Lcom/casee/adsdk/CaseeAdView$AdListener;->onFailedToReceiveRefreshAd(Lcom/casee/adsdk/CaseeAdView;)V

    goto :goto_0

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->listener:Lcom/casee/adsdk/CaseeAdView$AdListener;
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$700(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 659
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->adStatus:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$800(Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_4

    .line 660
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    # setter for: Lcom/casee/adsdk/CaseeAdView;->adStatus:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->access$802(Lcom/casee/adsdk/CaseeAdView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 661
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->listener:Lcom/casee/adsdk/CaseeAdView$AdListener;
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$700(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    invoke-interface {v0, v1}, Lcom/casee/adsdk/CaseeAdView$AdListener;->onReceiveAd(Lcom/casee/adsdk/CaseeAdView;)V

    .line 668
    :cond_3
    :goto_2
    const-string v0, "CASEE-AD"

    const-string v0, "fetch an ad successfully."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->ad:Lcom/casee/adsdk/Ad;
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$500(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/casee/adsdk/Ad;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 672
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->uiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$200(Lcom/casee/adsdk/CaseeAdView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/casee/adsdk/CaseeAdView$ShowADHelper$1;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/CaseeAdView$ShowADHelper$1;-><init>(Lcom/casee/adsdk/CaseeAdView$ShowADHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 663
    :cond_4
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->adStatus:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$800(Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 664
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    # setter for: Lcom/casee/adsdk/CaseeAdView;->adStatus:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->access$802(Lcom/casee/adsdk/CaseeAdView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 665
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->listener:Lcom/casee/adsdk/CaseeAdView$AdListener;
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$700(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/CaseeAdView$AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    invoke-interface {v0, v1}, Lcom/casee/adsdk/CaseeAdView$AdListener;->onReceiveRefreshAd(Lcom/casee/adsdk/CaseeAdView;)V

    goto :goto_2
.end method
