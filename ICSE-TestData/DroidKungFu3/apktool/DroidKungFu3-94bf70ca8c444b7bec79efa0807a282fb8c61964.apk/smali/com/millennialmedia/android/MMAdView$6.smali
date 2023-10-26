.class Lcom/millennialmedia/android/MMAdView$6;
.super Ljava/lang/Object;
.source "MMAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdView;->startConversionTrackerWithGoalId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$6;->this$0:Lcom/millennialmedia/android/MMAdView;

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1073
    new-instance v1, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v1}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 1076
    .local v1, "tc":Lcom/millennialmedia/android/HttpGetRequest;
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$6;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v2

    # getter for: Lcom/millennialmedia/android/MMAdView;->goalId:Ljava/lang/String;
    invoke-static {v2}, Lcom/millennialmedia/android/MMAdView;->access$16(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$6;->this$0:Lcom/millennialmedia/android/MMAdView;

    # getter for: Lcom/millennialmedia/android/MMAdView;->auid:Ljava/lang/String;
    invoke-static {v3}, Lcom/millennialmedia/android/MMAdView;->access$17(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/android/HttpGetRequest;->trackConversion(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :goto_0
    return-void

    .line 1078
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1080
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
