.class public Lcom/feasy/jewels/Gel/GMenu;
.super Landroid/app/Activity;
.source "GMenu.java"


# static fields
.field public static PREFS_NAME:Ljava/lang/String;


# instance fields
.field private final REQUEST_CODE:I

.field private mGameSaveLevel:I

.field private mGameSaveLife:I

.field private mGameSavePause:Z

.field private mGameSaveScore:I

.field private mIsMusic:Z

.field private mIsSound:Z

.field private mIsVibrate:Z

.field private mMusicMP:Landroid/media/MediaPlayer;

.field private window:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "com.feasy.jewels.Bears"

    sput-object v0, Lcom/feasy/jewels/Gel/GMenu;->PREFS_NAME:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/feasy/jewels/Gel/GMenu;->REQUEST_CODE:I

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/feasy/jewels/Gel/GMenu;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GMenu;->stopMusic()V

    return-void
.end method

.method static synthetic access$1(Lcom/feasy/jewels/Gel/GMenu;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSavePause:Z

    return-void
.end method

.method static synthetic access$2(Lcom/feasy/jewels/Gel/GMenu;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSavePause:Z

    return v0
.end method

.method static synthetic access$3(Lcom/feasy/jewels/Gel/GMenu;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSaveScore:I

    return v0
.end method

.method static synthetic access$4(Lcom/feasy/jewels/Gel/GMenu;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSaveLevel:I

    return v0
.end method

.method static synthetic access$5(Lcom/feasy/jewels/Gel/GMenu;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSaveLife:I

    return v0
.end method

.method static synthetic access$6(Lcom/feasy/jewels/Gel/GMenu;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GMenu;->exitApp()V

    return-void
.end method

.method private exitApp()V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GMenu;->saveGameParam()V

    .line 241
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GMenu;->stopMusic()V

    .line 242
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GMenu;->finish()V

    .line 243
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 244
    return-void
.end method

.method private handleMenuClick()V
    .locals 7

    .prologue
    .line 165
    const v6, 0x7f060006

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/GMenu;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 166
    .local v3, "btnNewGame":Landroid/widget/ImageView;
    new-instance v6, Lcom/feasy/jewels/Gel/GMenu$1;

    invoke-direct {v6, p0}, Lcom/feasy/jewels/Gel/GMenu$1;-><init>(Lcom/feasy/jewels/Gel/GMenu;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v6, 0x7f060007

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/GMenu;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 180
    .local v5, "btnResume":Landroid/widget/ImageView;
    new-instance v6, Lcom/feasy/jewels/Gel/GMenu$2;

    invoke-direct {v6, p0}, Lcom/feasy/jewels/Gel/GMenu$2;-><init>(Lcom/feasy/jewels/Gel/GMenu;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v6, 0x7f060008

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/GMenu;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 210
    .local v4, "btnOption":Landroid/widget/ImageView;
    new-instance v6, Lcom/feasy/jewels/Gel/GMenu$3;

    invoke-direct {v6, p0}, Lcom/feasy/jewels/Gel/GMenu$3;-><init>(Lcom/feasy/jewels/Gel/GMenu;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v6, 0x7f060009

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/GMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 217
    .local v1, "btnHighScore":Landroid/widget/ImageView;
    new-instance v6, Lcom/feasy/jewels/Gel/GMenu$4;

    invoke-direct {v6, p0}, Lcom/feasy/jewels/Gel/GMenu$4;-><init>(Lcom/feasy/jewels/Gel/GMenu;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v6, 0x7f06000b

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/GMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 224
    .local v0, "btnExit":Landroid/widget/ImageView;
    new-instance v6, Lcom/feasy/jewels/Gel/GMenu$5;

    invoke-direct {v6, p0}, Lcom/feasy/jewels/Gel/GMenu$5;-><init>(Lcom/feasy/jewels/Gel/GMenu;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v6, 0x7f06000a

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/GMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 231
    .local v2, "btnMoreGame":Landroid/widget/ImageView;
    new-instance v6, Lcom/feasy/jewels/Gel/GMenu$6;

    invoke-direct {v6, p0}, Lcom/feasy/jewels/Gel/GMenu$6;-><init>(Lcom/feasy/jewels/Gel/GMenu;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    return-void
.end method

.method private pauseMusic()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mMusicMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 340
    :cond_0
    return-void
.end method

.method private resumeMusic()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mMusicMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsMusic:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 345
    :cond_0
    return-void
.end method

.method private stopMusic()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mMusicMP:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mMusicMP:Landroid/media/MediaPlayer;

    .line 335
    :cond_1
    return-void
.end method


# virtual methods
.method public loadGameParam()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 269
    sget-object v1, Lcom/feasy/jewels/Gel/GMenu;->PREFS_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/feasy/jewels/Gel/GMenu;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "isMusic"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsMusic:Z

    .line 271
    const-string v1, "isSound"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsSound:Z

    .line 272
    const-string v1, "isVibrate"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsVibrate:Z

    .line 273
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 115
    const-string v1, "GMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onActivityResult(), requestCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 119
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 122
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsMusic:Z

    .line 124
    .local v0, "bMusic":Z
    const-string v1, "isMusic"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsMusic:Z

    .line 125
    const-string v1, "isSound"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsSound:Z

    .line 126
    const-string v1, "isVibrate"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsVibrate:Z

    .line 131
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GMenu;->saveGameParam()V

    .line 134
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsMusic:Z

    if-nez v1, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GMenu;->stopMusic()V

    .line 140
    .end local v0    # "bMusic":Z
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local v0    # "bMusic":Z
    :cond_1
    iget-boolean v1, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsMusic:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GMenu;->playMusic()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v2, 0x0

    const-string v3, "GMenu"

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/feasy/jewels/Gel/GMenu;->requestWindowFeature(I)Z

    .line 58
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GMenu;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/feasy/jewels/Gel/GMenu;->window:Landroid/view/Window;

    .line 59
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GMenu;->window:Landroid/view/Window;

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 64
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/feasy/jewels/Gel/GMenu;->setContentView(I)V

    .line 67
    iput-boolean v2, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSavePause:Z

    .line 68
    iput v2, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSaveLevel:I

    .line 69
    iput v2, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSaveScore:I

    .line 72
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GMenu;->loadGameParam()V

    .line 75
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GMenu;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 78
    const-string v1, "GMenu"

    const-string v1, "onCreate(), b != null"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "gamePause"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSavePause:Z

    .line 81
    const-string v1, "gameScore"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSaveScore:I

    .line 82
    const-string v1, "gameLevel"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSaveLevel:I

    .line 85
    iget v1, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSaveScore:I

    if-lez v1, :cond_0

    .line 86
    iget v1, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSaveScore:I

    invoke-virtual {p0, v1}, Lcom/feasy/jewels/Gel/GMenu;->updateHighScore(I)V

    .line 90
    :cond_0
    const-string v1, "GMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate(), Life="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSaveLife:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/feasy/jewels/Gel/GMenu;->mGameSaveLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GMenu;->handleMenuClick()V

    .line 99
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GMenu;->playMusic()V

    .line 100
    return-void

    .line 93
    :cond_1
    const-string v1, "GMenu"

    const-string v1, "onCreate(), saveInstanceState=null"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 104
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 145
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GMenu;->pauseMusic()V

    .line 146
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GMenu;->resumeMusic()V

    .line 151
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 155
    return-void
.end method

.method public playMusic()V
    .locals 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsMusic:Z

    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GMenu;->stopMusic()V

    .line 318
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mMusicMP:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GMenu;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040007

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mMusicMP:Landroid/media/MediaPlayer;

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mMusicMP:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 323
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GMenu;->mMusicMP:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0
.end method

.method public saveGameParam()V
    .locals 4

    .prologue
    .line 276
    sget-object v2, Lcom/feasy/jewels/Gel/GMenu;->PREFS_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/feasy/jewels/Gel/GMenu;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 277
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 278
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "isMusic"

    iget-boolean v3, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsMusic:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 279
    const-string v2, "isSound"

    iget-boolean v3, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsSound:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 280
    const-string v2, "isVibrate"

    iget-boolean v3, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsVibrate:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    return-void
.end method

.method public showOptionDlg()V
    .locals 3

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/feasy/jewels/Gel/OptionActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 251
    const-string v1, "isMusic"

    iget-boolean v2, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsMusic:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    const-string v1, "isSound"

    iget-boolean v2, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsSound:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    const-string v1, "isVibrate"

    iget-boolean v2, p0, Lcom/feasy/jewels/Gel/GMenu;->mIsVibrate:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/feasy/jewels/Gel/GMenu;->startActivityForResult(Landroid/content/Intent;I)V

    .line 257
    return-void
.end method

.method public showScoreList()V
    .locals 2

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/feasy/jewels/Gel/ScoreList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v0}, Lcom/feasy/jewels/Gel/GMenu;->startActivity(Landroid/content/Intent;)V

    .line 266
    return-void
.end method

.method public updateHighScore(I)V
    .locals 11
    .param p1, "highScore"    # I

    .prologue
    const/4 v9, 0x0

    const/16 v7, 0x9

    const-string v10, "GMenu"

    const-string v8, "highScore"

    .line 286
    const-string v5, "GMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateHighScore(),highScore="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-gtz p1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 290
    :cond_0
    sget-object v5, Lcom/feasy/jewels/Gel/GMenu;->PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/feasy/jewels/Gel/GMenu;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 291
    .local v4, "settings":Landroid/content/SharedPreferences;
    const/16 v5, 0xa

    new-array v3, v5, [I

    .line 293
    .local v3, "scoreArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v7, :cond_1

    .line 297
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 298
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v7, :cond_2

    .line 309
    :goto_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 294
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "highScore"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 299
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    aget v5, v3, v1

    if-le p1, v5, :cond_4

    .line 300
    const-string v5, "GMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateHighScore(), highScore>scoreArray[i], i="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_4
    if-lt v2, v7, :cond_3

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "highScore"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 302
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "highScore"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    sub-int v6, v2, v6

    aget v6, v3, v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 298
    .end local v2    # "j":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
