.class final Lcn/domob/android/ads/DomobReport$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobReport;->reportAction(Lcn/domob/android/ads/DomobReport$ReportInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/DomobReport;

.field private final synthetic b:Lcn/domob/android/ads/DomobReport$ReportInfo;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobReport;Lcn/domob/android/ads/DomobReport$ReportInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/ads/DomobReport$1;->a:Lcn/domob/android/ads/DomobReport;

    iput-object p2, p0, Lcn/domob/android/ads/DomobReport$1;->b:Lcn/domob/android/ads/DomobReport$ReportInfo;

    .line 112
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const-string v6, "send report:"

    const-string v3, "DomobSDK"

    .line 116
    iget-object v0, p0, Lcn/domob/android/ads/DomobReport$1;->a:Lcn/domob/android/ads/DomobReport;

    iget-object v1, p0, Lcn/domob/android/ads/DomobReport$1;->b:Lcn/domob/android/ads/DomobReport$ReportInfo;

    invoke-static {v0, v1}, Lcn/domob/android/ads/DomobReport;->a(Lcn/domob/android/ads/DomobReport;Lcn/domob/android/ads/DomobReport$ReportInfo;)Ljava/util/HashMap;

    move-result-object v0

    .line 117
    const-string v1, ""

    iget-object v2, p0, Lcn/domob/android/ads/DomobReport$1;->a:Lcn/domob/android/ads/DomobReport;

    invoke-static {v2, v0}, Lcn/domob/android/ads/DomobReport;->a(Lcn/domob/android/ads/DomobReport;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/domob/android/ads/DomobAdEngine$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/domob/android/ads/d;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcn/domob/android/ads/DomobReport$1;->a:Lcn/domob/android/ads/DomobReport;

    invoke-static {v1}, Lcn/domob/android/ads/DomobReport;->a(Lcn/domob/android/ads/DomobReport;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d;->a(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v0}, Lcn/domob/android/ads/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "DomobSDK"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send report:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/domob/android/ads/DomobReport$1;->a:Lcn/domob/android/ads/DomobReport;

    iget-object v2, p0, Lcn/domob/android/ads/DomobReport$1;->b:Lcn/domob/android/ads/DomobReport$ReportInfo;

    invoke-static {v1, v4}, Lcn/domob/android/ads/DomobReport;->a(Lcn/domob/android/ads/DomobReport;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v0, "DomobSDK"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send report:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/domob/android/ads/DomobReport$1;->a:Lcn/domob/android/ads/DomobReport;

    iget-object v2, p0, Lcn/domob/android/ads/DomobReport$1;->b:Lcn/domob/android/ads/DomobReport$ReportInfo;

    invoke-static {v1, v4}, Lcn/domob/android/ads/DomobReport;->a(Lcn/domob/android/ads/DomobReport;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
