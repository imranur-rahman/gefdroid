.class public Lcom/adview/adapters/AirAdAdapter;
.super Lcom/adview/adapters/AdViewAdapter;
.source "AirAdAdapter.java"


# instance fields
.field private area:I


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 3
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/adview/adapters/AdViewAdapter;-><init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V

    .line 23
    iget-object v0, p2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    invoke-static {v0, v1, v2}, Lcom/mt/airad/AirAD;->setGlobalParameter(Ljava/lang/String;D)V

    .line 24
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 5

    .prologue
    .line 33
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "AdView SDK"

    const-string v3, "Into AirAD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/adview/adapters/AirAdAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adview/AdViewLayout;

    .line 36
    .local v1, "adViewLayout":Lcom/adview/AdViewLayout;
    if-nez v1, :cond_2

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 40
    :cond_2
    iget-object v2, v1, Lcom/adview/AdViewLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 41
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lcom/adview/AdViewTargeting;->getAdArea()Lcom/adview/AdViewTargeting$AdArea;

    move-result-object v2

    sget-object v3, Lcom/adview/AdViewTargeting$AdArea;->BOTTOM:Lcom/adview/AdViewTargeting$AdArea;

    if-ne v2, v3, :cond_3

    .line 46
    const/16 v2, 0xb

    iput v2, p0, Lcom/adview/adapters/AirAdAdapter;->area:I

    .line 49
    :goto_1
    new-instance v2, Lcom/mt/airad/AirAD;

    iget v3, p0, Lcom/adview/adapters/AirAdAdapter;->area:I

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Lcom/mt/airad/AirAD;-><init>(Landroid/app/Activity;II)V

    .line 50
    iget-object v2, v1, Lcom/adview/AdViewLayout;->adViewManager:Lcom/adview/AdViewManager;

    invoke-virtual {v2}, Lcom/adview/AdViewManager;->resetRollover()V

    .line 51
    invoke-virtual {v1}, Lcom/adview/AdViewLayout;->rotateThreadedDelayed()V

    goto :goto_0

    .line 48
    :cond_3
    const/16 v2, 0xc

    iput v2, p0, Lcom/adview/adapters/AirAdAdapter;->area:I

    goto :goto_1
.end method
