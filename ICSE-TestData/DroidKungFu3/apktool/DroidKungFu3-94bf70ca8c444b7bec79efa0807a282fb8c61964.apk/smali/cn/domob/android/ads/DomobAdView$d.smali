.class final Lcn/domob/android/ads/DomobAdView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private a:Lcn/domob/android/ads/DomobAdView;

.field private b:Lcn/domob/android/ads/DomobAdBuilder;

.field private c:I

.field private d:Z

.field private synthetic e:Lcn/domob/android/ads/DomobAdView;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;IZ)V
    .locals 0

    .prologue
    .line 972
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView$d;->e:Lcn/domob/android/ads/DomobAdView;

    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    .line 969
    iput-object p2, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    .line 970
    iput p3, p0, Lcn/domob/android/ads/DomobAdView$d;->c:I

    .line 971
    iput-boolean p4, p0, Lcn/domob/android/ads/DomobAdView$d;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-string v3, "DomobSDK"

    .line 976
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_4

    .line 977
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    const-string v0, "DomobSDK"

    const-string v1, "show ad!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WindowVisibility:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView$d;->e:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v2}, Lcn/domob/android/ads/DomobAdView;->c(Lcn/domob/android/ads/DomobAdView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WindowFocus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView$d;->e:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v2}, Lcn/domob/android/ads/DomobAdView;->d(Lcn/domob/android/ads/DomobAdView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->e:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->c(Lcn/domob/android/ads/DomobAdView;)I

    move-result v0

    if-nez v0, :cond_4

    .line 984
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->e:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->d(Lcn/domob/android/ads/DomobAdView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 986
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 987
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdView;->addView(Landroid/view/View;)V

    .line 989
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdBuilder;->b()Lcn/domob/android/ads/DomobAdEngine;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/ads/DomobAdView;->receiveAd(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdEngine;)V

    .line 992
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView$d;->d:Z

    if-eqz v0, :cond_2

    .line 993
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-static {v0, v1}, Lcn/domob/android/ads/DomobAdView;->startAlphaAnimation(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;)V

    .line 1026
    :cond_1
    :goto_0
    return-void

    .line 995
    :cond_2
    iget v0, p0, Lcn/domob/android/ads/DomobAdView$d;->c:I

    if-nez v0, :cond_1

    .line 996
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->a()Ljava/lang/String;

    move-result-object v0

    .line 998
    if-eqz v0, :cond_3

    const-string v1, "fr2l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v2}, Lcn/domob/android/ads/p;->a(Lcn/domob/android/ads/DomobAdView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/DomobAdView;->startAnimation(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled exception in showAdThread.run() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1011
    :cond_4
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_1

    .line 1012
    const-string v0, "DomobSDK"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1013
    const-string v0, "DomobSDK"

    const-string v0, "error or view is invisible, clear resources!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdView;->removeView(Landroid/view/View;)V

    .line 1016
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->c()V

    .line 1017
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    .line 1019
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView$d;->d:Z

    if-eqz v0, :cond_1

    .line 1020
    const-string v0, "DomobSDK"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1021
    const-string v0, "DomobSDK"

    const-string v0, "reset mNoAd"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_6
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->e:Lcn/domob/android/ads/DomobAdView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/domob/android/ads/DomobAdView;->mNoAd:Z

    goto :goto_0
.end method
