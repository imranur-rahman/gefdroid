.class public Lcn/domob/android/ads/DomobAdEngine$RecvHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobAdEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecvHandler"
.end annotation


# instance fields
.field private a:Lcn/domob/android/ads/DomobAdView;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/DomobAdView;)V
    .locals 1
    .param p1, "view"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1380
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a:Lcn/domob/android/ads/DomobAdView;

    .line 1386
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a:Lcn/domob/android/ads/DomobAdView;

    .line 1387
    return-void
.end method


# virtual methods
.method public failed()V
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a:Lcn/domob/android/ads/DomobAdView;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->failedToReceive(Lcn/domob/android/ads/DomobAdView;)V

    .line 1393
    :cond_0
    return-void
.end method

.method protected getAdView()Lcn/domob/android/ads/DomobAdView;
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a:Lcn/domob/android/ads/DomobAdView;

    return-object v0
.end method

.method public received(Lcn/domob/android/ads/DomobAdEngine;)V
    .locals 3
    .param p1, "engine"    # Lcn/domob/android/ads/DomobAdEngine;

    .prologue
    const-string v0, "DomobSDK"

    .line 1396
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a:Lcn/domob/android/ads/DomobAdView;

    if-eqz v0, :cond_1

    .line 1397
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a:Lcn/domob/android/ads/DomobAdView;

    monitor-enter v0

    .line 1398
    :try_start_0
    const-string v1, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1399
    const-string v1, "DomobSDK"

    const-string v2, "new ad, construct it."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdEngine;->a()Lcn/domob/android/ads/DomobAdBuilder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcn/domob/android/ads/DomobAdView;->constructView(Lcn/domob/android/ads/DomobAdEngine;Lcn/domob/android/ads/DomobAdBuilder;)V

    .line 1397
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    :cond_1
    return-void

    .line 1397
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
