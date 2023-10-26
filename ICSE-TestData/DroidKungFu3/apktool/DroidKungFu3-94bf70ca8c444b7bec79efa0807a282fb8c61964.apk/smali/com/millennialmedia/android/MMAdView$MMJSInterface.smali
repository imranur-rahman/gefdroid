.class public Lcom/millennialmedia/android/MMAdView$MMJSInterface;
.super Ljava/lang/Object;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MMJSInterface"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MillennialMediaAdSDK"


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/millennialmedia/android/MMAdView$MMJSInterface;)Lcom/millennialmedia/android/MMAdView;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    return-object v0
.end method


# virtual methods
.method public countimages(Ljava/lang/String;)V
    .locals 7
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    const-string v6, "Exception raised in your MMAdListener: "

    const-string v5, "MillennialMediaAdSDK"

    .line 1105
    const-string v2, "MillennialMediaAdSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    if-eqz p1, :cond_1

    .line 1109
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1117
    .local v1, "num":I
    :goto_0
    const-string v2, "MillennialMediaAdSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "num: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    if-lez v1, :cond_2

    .line 1122
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v2, :cond_0

    .line 1126
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V

    .line 1127
    const-string v2, "MillennialMediaAdSDK"

    const-string v3, "Millennial ad return success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const-string v2, "MillennialMediaAdSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "View height: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v4}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :cond_0
    :goto_1
    return-void

    .line 1113
    .end local v1    # "num":I
    :cond_1
    const/4 v1, 0x0

    .line 1114
    .restart local v1    # "num":I
    const-string v2, "MillennialMediaAdSDK"

    const-string v2, "Image count is null"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1130
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1132
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MillennialMediaAdSDK"

    const-string v2, "Exception raised in your MMAdListener: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1139
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v2, :cond_0

    .line 1143
    :try_start_1
    const-string v2, "MillennialMediaAdSDK"

    const-string v3, "Millennial ad return failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1146
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1148
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "MillennialMediaAdSDK"

    const-string v2, "Exception raised in your MMAdListener: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-static {v0, p1}, Lcom/millennialmedia/android/MMAdView;->access$4(Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    .line 1161
    const-string v0, "MillennialMediaAdSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nextUrl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    # getter for: Lcom/millennialmedia/android/MMAdView;->nextUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/millennialmedia/android/MMAdView;->access$5(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    return-void
.end method

.method public overlayTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/android/MMAdView;->access$7(Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    .line 1215
    return-void
.end method

.method public overlayTransition(Ljava/lang/String;J)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/android/MMAdView;->access$8(Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/millennialmedia/android/MMAdView;->access$9(Lcom/millennialmedia/android/MMAdView;J)V

    .line 1228
    return-void
.end method

.method public shouldAccelerate(Z)V
    .locals 2
    .param p1, "shouldAccelerate"    # Z

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-boolean v0, v0, Lcom/millennialmedia/android/MMAdView;->accelerate:Z

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    iput-boolean p1, v0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    .line 1245
    :goto_0
    return-void

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/MMAdView;->canAccelerate:Z

    goto :goto_0
.end method

.method public shouldOpen(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1174
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/millennialmedia/android/MMAdView$MMJSInterface$1;

    invoke-direct {v2, p0, p1}, Lcom/millennialmedia/android/MMAdView$MMJSInterface$1;-><init>(Lcom/millennialmedia/android/MMAdView$MMJSInterface;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1180
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1183
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v1, :cond_0

    .line 1187
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1189
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1191
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MillennialMediaAdSDK"

    const-string v2, "Exception raised in your MMAdListener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public shouldOverlay(Z)V
    .locals 1
    .param p1, "shouldLaunchToOverlay"    # Z

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/android/MMAdView;->access$6(Lcom/millennialmedia/android/MMAdView;Z)V

    .line 1204
    return-void
.end method

.method public shouldResizeOverlay(I)V
    .locals 1
    .param p1, "padding"    # I

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/android/MMAdView;->access$10(Lcom/millennialmedia/android/MMAdView;I)V

    .line 1255
    return-void
.end method

.method public shouldShowNavbar(Z)V
    .locals 1
    .param p1, "showNavbar"    # Z

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/android/MMAdView;->access$12(Lcom/millennialmedia/android/MMAdView;Z)V

    .line 1265
    return-void
.end method

.method public shouldShowTitlebar(Z)V
    .locals 1
    .param p1, "showTitlebar"    # Z

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getWebView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/android/MMAdView;->access$11(Lcom/millennialmedia/android/MMAdView;Z)V

    .line 1260
    return-void
.end method
