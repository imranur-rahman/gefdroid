.class public Lcom/millennialmedia/android/MMAdViewOverlayActivity;
.super Landroid/app/Activity;
.source "MMAdViewOverlayActivity.java"

# interfaces
.implements Lcom/millennialmedia/android/AccelerometerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MillennialMediaSDK"

.field private static context:Landroid/app/Activity;


# instance fields
.field private mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

.field protected shouldAccelerate:Ljava/lang/Boolean;

.field private videoPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->context:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public didAccelerate(FFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const-string v3, ","

    .line 117
    const-string v0, "MillennialMediaSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accelerometer x:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " z:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:didAccelerate("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->injectJS(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public didShake(F)V
    .locals 3
    .param p1, "force"    # F

    .prologue
    .line 109
    const-string v0, "MillennialMediaSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Phone shaken: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:didShake("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->injectJS(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-wide/16 v3, 0x258

    .line 30
    .local v3, "time":J
    const/4 v5, 0x0

    .line 31
    .local v5, "transition":Ljava/lang/String;
    const/4 v2, 0x0

    .line 32
    .local v2, "padding":I
    const/4 v6, 0x0

    .line 33
    .local v6, "titlebar":Z
    const/4 v7, 0x0

    .line 34
    .local v7, "title":Ljava/lang/String;
    const/4 v8, 0x1

    .line 36
    .local v8, "navbar":Z
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 37
    .local v9, "extras":Landroid/os/Bundle;
    if-eqz v9, :cond_0

    .line 39
    const-string v0, "transitionTime"

    const-wide/16 v11, 0x258

    invoke-virtual {v9, v0, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 40
    const-string v0, "overlayTransition"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    const-string v0, "shouldResizeOverlay"

    invoke-virtual {v9, v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 42
    const-string v0, "shouldShowTitlebar"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 43
    const-string v0, "overlayTitle"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 44
    const-string v0, "shouldShowNavbar"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 48
    .local v10, "fileName":Ljava/lang/String;
    const-string v0, "MillennialMediaSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "Path: "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/millennialmedia/android/MMAdViewWebOverlay;-><init>(Landroid/app/Activity;IJLjava/lang/String;ZLjava/lang/String;Z)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    .line 51
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->setContentView(Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->loadWebContent(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "canAccelerate"

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->shouldAccelerate:Ljava/lang/Boolean;

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->setRequestedOrientation(I)V

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->videoPlayer:Landroid/media/MediaPlayer;

    .line 75
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 84
    :cond_0
    invoke-static {}, Lcom/millennialmedia/android/AccelerometerManager;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Accelerometer stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/millennialmedia/android/AccelerometerManager;->stopListening()V

    .line 89
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->setResult(I)V

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 59
    const-string v0, "MillennialMediaSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accelerometer passed?: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->shouldAccelerate:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    invoke-static {}, Lcom/millennialmedia/android/AccelerometerManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->shouldAccelerate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0}, Lcom/millennialmedia/android/AccelerometerManager;->startListening(Lcom/millennialmedia/android/AccelerometerListener;)V

    .line 65
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 96
    return-void
.end method
