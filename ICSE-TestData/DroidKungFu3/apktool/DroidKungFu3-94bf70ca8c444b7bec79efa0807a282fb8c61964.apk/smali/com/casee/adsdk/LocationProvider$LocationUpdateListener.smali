.class Lcom/casee/adsdk/LocationProvider$LocationUpdateListener;
.super Ljava/lang/Object;
.source "LocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/casee/adsdk/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocationUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/casee/adsdk/LocationProvider;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/LocationProvider;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/casee/adsdk/LocationProvider$LocationUpdateListener;->this$0:Lcom/casee/adsdk/LocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/casee/adsdk/LocationProvider$LocationUpdateListener;->this$0:Lcom/casee/adsdk/LocationProvider;

    iput-object p1, v0, Lcom/casee/adsdk/LocationProvider;->loc:Landroid/location/Location;

    .line 70
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 73
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 79
    return-void
.end method
