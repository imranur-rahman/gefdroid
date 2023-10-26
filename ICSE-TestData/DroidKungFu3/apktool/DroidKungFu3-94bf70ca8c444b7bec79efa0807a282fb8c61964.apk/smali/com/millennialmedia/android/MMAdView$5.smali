.class Lcom/millennialmedia/android/MMAdView$5;
.super Ljava/lang/Object;
.source "MMAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
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
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-string v6, "Exception raised in your MMAdListener: "

    const-string v5, "MillennialMediaAdSDK"

    .line 726
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    # getter for: Lcom/millennialmedia/android/MMAdView;->shouldLaunchToOverlay:Z
    invoke-static {v3}, Lcom/millennialmedia/android/MMAdView;->access$14(Lcom/millennialmedia/android/MMAdView;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 729
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v3, :cond_0

    .line 733
    :try_start_0
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v4}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    # getter for: Lcom/millennialmedia/android/MMAdView;->nextUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/millennialmedia/android/MMAdView;->access$5(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 742
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    # getter for: Lcom/millennialmedia/android/MMAdView;->nextUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/millennialmedia/android/MMAdView;->access$5(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/MMAdView;->touchUpInside(Ljava/lang/String;)V

    .line 781
    :cond_1
    :goto_1
    return-void

    .line 735
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 737
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MillennialMediaAdSDK"

    const-string v3, "Exception raised in your MMAdListener: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 746
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v3, "MillennialMediaAdSDK"

    const-string v3, "No ad returned, no overlay launched"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 751
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    # getter for: Lcom/millennialmedia/android/MMAdView;->nextUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/millennialmedia/android/MMAdView;->access$5(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 754
    const-string v3, "MillennialMediaAdSDK"

    const-string v3, "Ad clicked, launching new browser"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    # getter for: Lcom/millennialmedia/android/MMAdView;->activityWeakReference:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/millennialmedia/android/MMAdView;->access$15(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 757
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 761
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    # getter for: Lcom/millennialmedia/android/MMAdView;->nextUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/millennialmedia/android/MMAdView;->access$5(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 762
    .local v2, "myIntent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 764
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v3, :cond_1

    .line 768
    :try_start_1
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView$5;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v4}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdClickedToNewBrowser(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 770
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 772
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "MillennialMediaAdSDK"

    const-string v3, "Exception raised in your MMAdListener: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 778
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "myIntent":Landroid/content/Intent;
    :cond_4
    const-string v3, "MillennialMediaAdSDK"

    const-string v3, "No ad returned, no new browser launched"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
