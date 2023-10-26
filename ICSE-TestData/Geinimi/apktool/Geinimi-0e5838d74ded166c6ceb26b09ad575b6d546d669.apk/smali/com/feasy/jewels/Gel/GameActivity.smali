.class public Lcom/feasy/jewels/Gel/GameActivity;
.super Landroid/app/Activity;
.source "GameActivity.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String;


# instance fields
.field private gameView:Lcom/feasy/jewels/Gel/GameView;

.field private mBar:Landroid/widget/ProgressBar;

.field public mGameSound:Lcom/feasy/jewels/Gel/GameSound;

.field private mMusicMP:Landroid/media/MediaPlayer;

.field private mSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;

.field private window:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/feasy/jewels/Gel/GMenu;->PREFS_NAME:Ljava/lang/String;

    sput-object v0, Lcom/feasy/jewels/Gel/GameActivity;->PREFS_NAME:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private freeSP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 260
    iput-object v1, p0, Lcom/feasy/jewels/Gel/GameActivity;->mSoundPool:Landroid/media/SoundPool;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mSoundMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mSoundMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 265
    iput-object v1, p0, Lcom/feasy/jewels/Gel/GameActivity;->mSoundMap:Ljava/util/HashMap;

    .line 267
    :cond_1
    return-void
.end method

.method private initSP()V
    .locals 6

    .prologue
    .line 226
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0x1e

    const/4 v4, 0x3

    const/16 v5, 0x64

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/feasy/jewels/Gel/GameActivity;->mSoundPool:Landroid/media/SoundPool;

    .line 229
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/feasy/jewels/Gel/GameActivity;->mSoundMap:Ljava/util/HashMap;

    .line 237
    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    .line 241
    return-void

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameActivity;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    invoke-virtual {v4, v0}, Lcom/feasy/jewels/Gel/GameSound;->getSoundResIdByType(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .line 239
    .local v1, "sId":I
    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameActivity;->mSoundMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private mySleep(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 320
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private pauseMusic()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 287
    :cond_0
    return-void
.end method

.method private resumeMusic()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 292
    :cond_0
    return-void
.end method

.method private stopMusic()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    .line 303
    :cond_1
    return-void
.end method


# virtual methods
.method public doShowMenu(ZII)V
    .locals 4
    .param p1, "gamePause"    # Z
    .param p2, "gameScore"    # I
    .param p3, "gameLevel"    # I

    .prologue
    const-string v3, "Main"

    .line 207
    const-string v1, "Main"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doShowMenu(),gamePause="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v2, "TRUE"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v0, "itMenu":Landroid/content/Intent;
    const-class v1, Lcom/feasy/jewels/Gel/GMenu;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 212
    const-string v1, "gamePause"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    const-string v1, "gameScore"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v1, "gameLevel"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v1, "Main"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doShowMenu(), level="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    const-string v2, ", mScore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0, v0}, Lcom/feasy/jewels/Gel/GameActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void

    .line 207
    .end local v0    # "itMenu":Landroid/content/Intent;
    :cond_0
    const-string v2, "FALSE"

    goto :goto_0
.end method

.method public exitMain()V
    .locals 3

    .prologue
    .line 184
    const-string v0, "Main"

    const-string v1, "exitMain(): GamePause: show Menu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameActivity;->saveResumeData()V

    .line 188
    const/4 v0, 0x1

    .line 189
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    iget v1, v1, Lcom/feasy/jewels/Gel/GameView;->gameScore:I

    .line 190
    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    iget v2, v2, Lcom/feasy/jewels/Gel/GameView;->mBonus:I

    .line 188
    invoke-virtual {p0, v0, v1, v2}, Lcom/feasy/jewels/Gel/GameActivity;->doShowMenu(ZII)V

    .line 193
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameActivity;->stopMusic()V

    .line 194
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameActivity;->freeSP()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    .line 199
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/feasy/jewels/Gel/GameView;->isRunning:Z

    .line 200
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    invoke-virtual {v0, v1}, Lcom/feasy/jewels/Gel/GameView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 202
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameActivity;->finish()V

    .line 204
    return-void
.end method

.method public loadPreferences()V
    .locals 3

    .prologue
    .line 133
    const/4 v1, 0x1

    .line 134
    .local v1, "mode":I
    sget-object v2, Lcom/feasy/jewels/Gel/GameActivity;->PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/feasy/jewels/Gel/GameActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    .local v0, "gamePreferences":Landroid/content/SharedPreferences;
    return-void
.end method

.method public loadResumeData()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 139
    const/4 v5, 0x1

    .line 140
    .local v5, "mode":I
    sget-object v6, Lcom/feasy/jewels/Gel/GameActivity;->PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v6, v5}, Lcom/feasy/jewels/Gel/GameActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 141
    .local v1, "gamePreferences":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    const-string v7, "score"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/feasy/jewels/Gel/GameView;->gameScore:I

    .line 142
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    const-string v7, "curScore"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/feasy/jewels/Gel/GameView;->curScore:I

    .line 143
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    const-string v7, "bonus"

    const/4 v8, 0x1

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/feasy/jewels/Gel/GameView;->mBonus:I

    .line 145
    new-instance v4, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 147
    .local v4, "keyName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v9, :cond_0

    .line 159
    return-void

    .line 148
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, v9, :cond_1

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "body_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 152
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    invoke-virtual {v6}, Lcom/feasy/jewels/Gel/GameView;->getRandomBlockId()I

    move-result v6

    .line 150
    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 153
    .local v0, "blockId":I
    if-lez v0, :cond_2

    const/16 v6, 0x9

    if-le v0, v6, :cond_3

    .line 154
    :cond_2
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    invoke-virtual {v6}, Lcom/feasy/jewels/Gel/GameView;->getRandomBlockId()I

    move-result v0

    .line 157
    :cond_3
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    iget-object v6, v6, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v6, v6, v2

    aput v0, v6, v3

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x400

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 45
    const-string v6, "GameActivity"

    const-string v7, "onCreate().....now"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0, v9}, Lcom/feasy/jewels/Gel/GameActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    iput-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->window:Landroid/view/Window;

    .line 50
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->window:Landroid/view/Window;

    invoke-virtual {v6, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 54
    const v6, 0x7f030002

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/GameActivity;->setContentView(I)V

    .line 55
    const v6, 0x7f060003

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/feasy/jewels/Gel/GameView;

    iput-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    .line 57
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 58
    .local v5, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 60
    .local v1, "display":Landroid/view/Display;
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    invoke-virtual {v6, p0}, Lcom/feasy/jewels/Gel/GameView;->setParent(Lcom/feasy/jewels/Gel/GameActivity;)V

    .line 61
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/feasy/jewels/Gel/GameView;->setScreen(II)V

    .line 63
    const/4 v3, 0x1

    .line 65
    .local v3, "isNewGame":Z
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 69
    const-string v6, "gamePause"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 70
    .local v2, "gamePause":Z
    if-eqz v2, :cond_0

    .line 71
    const/4 v3, 0x0

    .line 75
    .end local v2    # "gamePause":Z
    :cond_0
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    invoke-virtual {v6, v3}, Lcom/feasy/jewels/Gel/GameView;->init(Z)V

    .line 77
    const v6, 0x7f060004

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->mBar:Landroid/widget/ProgressBar;

    .line 78
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->mBar:Landroid/widget/ProgressBar;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 79
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameActivity;->updateBar()V

    .line 82
    new-instance v6, Lcom/feasy/jewels/Gel/GameSound;

    invoke-direct {v6, v10, v9, v9}, Lcom/feasy/jewels/Gel/GameSound;-><init>(ZZZ)V

    iput-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    .line 84
    sget-object v6, Lcom/feasy/jewels/Gel/GameActivity;->PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v6, v10}, Lcom/feasy/jewels/Gel/GameActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 85
    .local v4, "settings":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    const-string v7, "isMusic"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/feasy/jewels/Gel/GameSound;->mMusicOn:Z

    .line 86
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    const-string v7, "isSound"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/feasy/jewels/Gel/GameSound;->mSoundOn:Z

    .line 87
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    const-string v7, "isVibrate"

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/feasy/jewels/Gel/GameSound;->mVibrateOn:Z

    .line 89
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameActivity;->initSP()V

    .line 90
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameActivity;->playMusic()V

    .line 91
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 113
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameActivity;->exitMain()V

    .line 116
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    invoke-virtual {v0, v1}, Lcom/feasy/jewels/Gel/GameView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 99
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameActivity;->pauseMusic()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 106
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    invoke-virtual {v0}, Lcom/feasy/jewels/Gel/GameView;->run()V

    .line 108
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameActivity;->resumeMusic()V

    .line 109
    return-void
.end method

.method public playMusic()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 270
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    iget-boolean v1, v1, Lcom/feasy/jewels/Gel/GameSound;->mMusicOn:Z

    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameActivity;->stopMusic()V

    .line 275
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Lcom/feasy/jewels/Gel/GameSound;->getSoundResIdByType(I)I

    move-result v0

    .line 277
    .local v0, "resId":I
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    .line 280
    .end local v0    # "resId":I
    :cond_1
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 281
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameActivity;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0
.end method

.method public playSP(I)V
    .locals 8
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    .line 244
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x6

    if-lt p1, v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    iget-boolean v0, v0, Lcom/feasy/jewels/Gel/GameSound;->mSoundOn:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mSoundMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 253
    .local v1, "resId":I
    const/4 v7, 0x1

    .line 254
    .local v7, "vol":I
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameActivity;->mSoundPool:Landroid/media/SoundPool;

    int-to-float v2, v7

    int-to-float v3, v7

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public playVibrate()V
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    iget-boolean v1, v1, Lcom/feasy/jewels/Gel/GameSound;->mVibrateOn:Z

    if-nez v1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 310
    :cond_0
    :try_start_0
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/feasy/jewels/Gel/GameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 311
    .local v0, "vibrator":Landroid/os/Vibrator;
    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 311
    :array_0
    .array-data 8
        0xa
        0x1e
        0x14
        0xa
    .end array-data
.end method

.method protected savePreferences()V
    .locals 5

    .prologue
    .line 123
    const/4 v2, 0x1

    .line 124
    .local v2, "mode":I
    sget-object v3, Lcom/feasy/jewels/Gel/GameActivity;->PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/feasy/jewels/Gel/GameActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    .local v1, "gamePreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "score"

    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    iget v4, v4, Lcom/feasy/jewels/Gel/GameView;->gameScore:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    return-void
.end method

.method public saveResumeData()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 162
    const/4 v5, 0x1

    .line 163
    .local v5, "mode":I
    sget-object v6, Lcom/feasy/jewels/Gel/GameActivity;->PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v6, v5}, Lcom/feasy/jewels/Gel/GameActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 164
    .local v1, "gamePreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    iget-object v6, v6, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    if-nez v6, :cond_0

    .line 180
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v6, "score"

    iget-object v7, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    iget v7, v7, Lcom/feasy/jewels/Gel/GameView;->gameScore:I

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v6, "curScore"

    iget-object v7, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    iget v7, v7, Lcom/feasy/jewels/Gel/GameView;->curScore:I

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string v6, "bonus"

    iget-object v7, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    iget v7, v7, Lcom/feasy/jewels/Gel/GameView;->mBonus:I

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    new-instance v4, Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 174
    .local v4, "keyName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v8, :cond_1

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 175
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-lt v3, v8, :cond_2

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 176
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "body_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 177
    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    iget-object v6, v6, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v6, v6, v2

    aget v6, v6, v3

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public updateBar()V
    .locals 3

    .prologue
    .line 327
    const/high16 v1, 0x42c80000    # 100.0f

    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    iget v2, v2, Lcom/feasy/jewels/Gel/GameView;->curScore:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameActivity;->gameView:Lcom/feasy/jewels/Gel/GameView;

    invoke-virtual {v2}, Lcom/feasy/jewels/Gel/GameView;->getCurLevelScore()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 328
    .local v0, "cnt":F
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameActivity;->mBar:Landroid/widget/ProgressBar;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 329
    return-void
.end method
