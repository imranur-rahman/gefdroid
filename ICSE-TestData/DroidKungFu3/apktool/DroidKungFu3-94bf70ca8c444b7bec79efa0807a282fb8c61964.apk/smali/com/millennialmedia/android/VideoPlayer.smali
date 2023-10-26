.class public Lcom/millennialmedia/android/VideoPlayer;
.super Landroid/app/Activity;
.source "VideoPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MillennailMediaSDK"


# instance fields
.field private controlsLayout:Landroid/widget/RelativeLayout;

.field private current:Ljava/lang/String;

.field private mPause:Landroid/widget/Button;

.field private mPlay:Landroid/widget/Button;

.field private mStop:Landroid/widget/Button;

.field private mVideoView:Landroid/widget/VideoView;

.field private relLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/millennialmedia/android/VideoPlayer;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayer;->playVideo()V

    return-void
.end method

.method static synthetic access$1(Lcom/millennialmedia/android/VideoPlayer;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/millennialmedia/android/VideoPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer;->current:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/millennialmedia/android/VideoPlayer;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayer;->dismiss()V

    return-void
.end method

.method private dismiss()V
    .locals 2

    .prologue
    .line 243
    const-string v0, "MillennailMediaSDK"

    const-string v1, "Video Ad overlay closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayer;->finish()V

    .line 252
    return-void
.end method

.method private playVideo()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const-string v8, "Sorry. There was a problem playing the video"

    const-string v6, "MillennailMediaSDK"

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/VideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 196
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "MillennailMediaSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "uri: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "path":Ljava/lang/String;
    const-string v3, "MillennailMediaSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "path: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 201
    :cond_0
    const-string v3, "Sorry. There was a problem playing the video"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 233
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 206
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->current:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v3, :cond_3

    .line 208
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 209
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MillennailMediaSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const-string v3, "Sorry. There was a problem playing the video"

    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 229
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v3, :cond_1

    .line 230
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->stopPlayback()V

    goto :goto_0

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_1
    iput-object v1, p0, Lcom/millennialmedia/android/VideoPlayer;->current:Ljava/lang/String;

    .line 214
    const-string v3, "MillennailMediaSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Current: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->current:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v3, "MillennailMediaSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Path: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    if-eqz v3, :cond_4

    .line 217
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 219
    iget-object v3, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->requestFocus()Z

    goto/16 :goto_0

    .line 223
    :cond_4
    const-string v3, "MillennailMediaSDK"

    const-string v4, "Video Player is Null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 338
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v3, "videoLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    new-instance v4, Landroid/widget/VideoView;

    invoke-direct {v4, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    .line 93
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 95
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v0, "controlsLp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->mPlay:Landroid/widget/Button;

    .line 101
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->mPause:Landroid/widget/Button;

    .line 102
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->mStop:Landroid/widget/Button;

    .line 104
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->mPlay:Landroid/widget/Button;

    const v5, 0x1080024

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 105
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->mPause:Landroid/widget/Button;

    const v5, 0x1080023

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 106
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->mStop:Landroid/widget/Button;

    const v5, 0x1080038

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 133
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v1, "pauseLp":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 136
    .local v2, "stopLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mPause:Landroid/widget/Button;

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mPlay:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 142
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 143
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mStop:Landroid/widget/Button;

    invoke-virtual {v4, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->mPlay:Landroid/widget/Button;

    new-instance v5, Lcom/millennialmedia/android/VideoPlayer$1;

    invoke-direct {v5, p0}, Lcom/millennialmedia/android/VideoPlayer$1;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->mPause:Landroid/widget/Button;

    new-instance v5, Lcom/millennialmedia/android/VideoPlayer$2;

    invoke-direct {v5, p0}, Lcom/millennialmedia/android/VideoPlayer$2;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->mStop:Landroid/widget/Button;

    new-instance v5, Lcom/millennialmedia/android/VideoPlayer$3;

    invoke-direct {v5, p0}, Lcom/millennialmedia/android/VideoPlayer$3;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    new-instance v4, Lcom/millennialmedia/android/VideoPlayer$4;

    invoke-direct {v4, p0}, Lcom/millennialmedia/android/VideoPlayer$4;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/VideoPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->controlsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 184
    iget-object v4, p0, Lcom/millennialmedia/android/VideoPlayer;->relLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4}, Lcom/millennialmedia/android/VideoPlayer;->setContentView(Landroid/view/View;)V

    .line 190
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayer;->playVideo()V

    .line 191
    return-void
.end method
