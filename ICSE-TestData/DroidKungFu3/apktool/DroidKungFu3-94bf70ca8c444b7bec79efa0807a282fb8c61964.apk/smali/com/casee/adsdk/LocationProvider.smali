.class public Lcom/casee/adsdk/LocationProvider;
.super Ljava/lang/Thread;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/casee/adsdk/LocationProvider$LocationUpdateListener;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field loc:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/casee/adsdk/LocationProvider;->context:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method getLocation()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, ""

    .line 60
    iget-object v0, p0, Lcom/casee/adsdk/LocationProvider;->loc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/LocationProvider;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/casee/adsdk/LocationProvider;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    move-object v0, v2

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "location"

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "lm":Landroid/location/LocationManager;
    const/4 v1, 0x0

    .line 21
    .local v1, "provider":Ljava/lang/String;
    iget-object v2, p0, Lcom/casee/adsdk/LocationProvider;->context:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 23
    iget-object v2, p0, Lcom/casee/adsdk/LocationProvider;->context:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "lm":Landroid/location/LocationManager;
    check-cast v0, Landroid/location/LocationManager;

    .line 25
    .restart local v0    # "lm":Landroid/location/LocationManager;
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 26
    .local v7, "cri":Landroid/location/Criteria;
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 27
    invoke-virtual {v7, v5}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 28
    invoke-virtual {v7, v5}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 29
    invoke-virtual {v7, v4}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 31
    invoke-virtual {v0, v7, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 34
    .end local v7    # "cri":Landroid/location/Criteria;
    :cond_0
    if-nez v1, :cond_1

    .line 35
    iget-object v2, p0, Lcom/casee/adsdk/LocationProvider;->context:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 37
    iget-object v2, p0, Lcom/casee/adsdk/LocationProvider;->context:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "lm":Landroid/location/LocationManager;
    check-cast v0, Landroid/location/LocationManager;

    .line 39
    .restart local v0    # "lm":Landroid/location/LocationManager;
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 40
    .restart local v7    # "cri":Landroid/location/Criteria;
    invoke-virtual {v7, v4}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 41
    invoke-virtual {v7, v5}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 42
    invoke-virtual {v7, v5}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 43
    invoke-virtual {v7, v4}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 45
    invoke-virtual {v0, v7, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 49
    .end local v7    # "cri":Landroid/location/Criteria;
    :cond_1
    if-nez v1, :cond_2

    .line 50
    const-string v2, "CASEE-AD"

    const-string v3, "cannot get location provider."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_2
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    iput-object v2, p0, Lcom/casee/adsdk/LocationProvider;->loc:Landroid/location/Location;

    .line 55
    const-wide/32 v2, 0xdbba0

    const/high16 v4, 0x442f0000    # 700.0f

    new-instance v5, Lcom/casee/adsdk/LocationProvider$LocationUpdateListener;

    invoke-direct {v5, p0}, Lcom/casee/adsdk/LocationProvider$LocationUpdateListener;-><init>(Lcom/casee/adsdk/LocationProvider;)V

    iget-object v6, p0, Lcom/casee/adsdk/LocationProvider;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method
