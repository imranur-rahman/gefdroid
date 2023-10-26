.class public Lcom/waps/ads/adapters/AdmobAdapter;
.super Lcom/waps/ads/a/a;

# interfaces
.implements Lcom/google/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/waps/ads/a/a;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V

    return-void
.end method


# virtual methods
.method protected birthdayForAdGroupTargeting()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getBirthDate()Ljava/util/GregorianCalendar;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getBirthDate()Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected genderForAdGroupTargeting()Lcom/google/ads/AdRequest$Gender;
    .locals 2

    sget-object v0, Lcom/waps/ads/adapters/a;->a:[I

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getGender()Lcom/waps/ads/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waps/ads/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handle()V
    .locals 5

    iget-object v0, p0, Lcom/waps/ads/adapters/AdmobAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    iget-object v4, p0, Lcom/waps/ads/adapters/AdmobAdapter;->d:Lcom/waps/ads/b/c;

    iget-object v4, v4, Lcom/waps/ads/b/c;->e:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    invoke-virtual {p0, v0}, Lcom/waps/ads/adapters/AdmobAdapter;->requestForAdGroupLayout(Lcom/waps/ads/AdGroupLayout;)Lcom/google/ads/AdRequest;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AdGroup_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleAdapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failure ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/waps/ads/adapters/AdmobAdapter;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/ads/Ad;->setAdListener(Lcom/google/ads/AdListener;)V

    iget-object v0, p0, Lcom/waps/ads/adapters/AdmobAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/waps/ads/AdGroupLayout;

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->rollover()V

    goto :goto_0
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 3

    const-string v0, "success"

    invoke-virtual {p0, v0}, Lcom/waps/ads/adapters/AdmobAdapter;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/waps/ads/adapters/AdmobAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v1, p1, Lcom/google/ads/AdView;

    if-nez v1, :cond_1

    const-string v0, "invalid AdView"

    invoke-virtual {p0, v0}, Lcom/waps/ads/adapters/AdmobAdapter;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/ads/AdView;

    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v1}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    new-instance v2, Lcom/waps/ads/f;

    invoke-direct {v2, v0, p1}, Lcom/waps/ads/f;-><init>(Lcom/waps/ads/AdGroupLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method protected requestForAdGroupLayout(Lcom/waps/ads/AdGroupLayout;)Lcom/google/ads/AdRequest;
    .locals 3

    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getTestMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setTesting(Z)V

    invoke-virtual {p0}, Lcom/waps/ads/adapters/AdmobAdapter;->genderForAdGroupTargeting()Lcom/google/ads/AdRequest$Gender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setGender(Lcom/google/ads/AdRequest$Gender;)V

    invoke-virtual {p0}, Lcom/waps/ads/adapters/AdmobAdapter;->birthdayForAdGroupTargeting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setBirthday(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v1, v1, Lcom/waps/ads/b/b;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    iget-object v1, v1, Lcom/waps/ads/AdGroupManager;->e:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setLocation(Landroid/location/Location;)V

    :cond_0
    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->getKeywordSet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setKeywords(Ljava/util/Set;)V

    return-object v0
.end method
