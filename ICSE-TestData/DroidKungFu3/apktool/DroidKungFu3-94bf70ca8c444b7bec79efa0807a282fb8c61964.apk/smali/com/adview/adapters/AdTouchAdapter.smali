.class public Lcom/adview/adapters/AdTouchAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "AdTouchAdapter.java"

# interfaces
.implements Lcom/energysource/szj/embeded/AdListener;


# instance fields
.field private area:I


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 1
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 21
    const/16 v0, 0x31

    iput v0, p0, Lcom/adview/adapters/AdTouchAdapter;->area:I

    .line 25
    return-void
.end method


# virtual methods
.method public failedReceiveAd(Lcom/energysource/szj/embeded/AdView;)V
    .locals 2
    .param p1, "arg0"    # Lcom/energysource/szj/embeded/AdView;

    .prologue
    .line 63
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "AdView SDK"

    const-string v1, "AdTouch fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return-void
.end method

.method public handle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 31
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    const-string v2, "AdView SDK"

    const-string v3, "Into AdTouch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/adview/adapters/AdTouchAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adview/AdViewLayout;

    .line 34
    .local v1, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v1, :cond_2

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 38
    :cond_2
    iget-object v2, v1, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 39
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    invoke-static {}, Lcom/energysource/szj/embeded/AdManager;->openDebug()V

    .line 44
    :cond_3
    invoke-static {}, Lcom/energysource/szj/embeded/AdManager;->openPermissionJudge()V

    .line 47
    iget-object v2, p0, Lcom/adview/adapters/AdTouchAdapter;->ration:Lcom/adview/obj/Ration;

    iget-object v2, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/energysource/szj/embeded/AdManager;->initAd(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 49
    invoke-static {}, Lcom/adview/AdViewTargeting;->getAdArea()Lcom/adview/AdViewTargeting$AdArea;

    move-result-object v2

    sget-object v3, Lcom/adview/AdViewTargeting$AdArea;->BOTTOM:Lcom/adview/AdViewTargeting$AdArea;

    if-ne v2, v3, :cond_4

    .line 50
    const/16 v2, 0x51

    iput v2, p0, Lcom/adview/adapters/AdTouchAdapter;->area:I

    .line 53
    :goto_1
    const/16 v2, 0x65

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/adview/adapters/AdTouchAdapter;->area:I

    invoke-static {v2, v3, v4, v5, v5}, Lcom/energysource/szj/embeded/AdManager;->addAd(IIIII)V

    .line 54
    iget-object v2, v1, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v2}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 55
    invoke-virtual {v1}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0

    .line 52
    :cond_4
    const/16 v2, 0x31

    iput v2, p0, Lcom/adview/adapters/AdTouchAdapter;->area:I

    goto :goto_1
.end method

.method public receiveAd(Lcom/energysource/szj/embeded/AdView;)V
    .locals 2
    .param p1, "arg0"    # Lcom/energysource/szj/embeded/AdView;

    .prologue
    .line 72
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "AdView SDK"

    const-string v1, "AdTouch success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method
