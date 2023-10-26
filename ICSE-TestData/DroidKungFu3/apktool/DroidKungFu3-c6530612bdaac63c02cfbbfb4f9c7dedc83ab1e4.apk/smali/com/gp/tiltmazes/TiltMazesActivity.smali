.class public Lcom/gp/tiltmazes/TiltMazesActivity;
.super Landroid/app/Activity;
.source "TiltMazesActivity.java"


# static fields
.field private static final MENU_ABOUT:I = 0x6

.field private static final MENU_MAP_NEXT:I = 0x3

.field private static final MENU_MAP_PREV:I = 0x2

.field private static final MENU_RESTART:I = 0x1

.field private static final MENU_SELECT_MAZE:I = 0x5

.field private static final MENU_SENSOR:I = 0x4

.field private static final REQUEST_SELECT_MAZE:I = 0x1


# instance fields
.field private mAboutDialog:Landroid/app/Dialog;

.field private mGameEngine:Lcom/gp/tiltmazes/GameEngine;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMazeNameLabel:Landroid/widget/TextView;

.field private mMazeView:Lcom/gp/tiltmazes/MazeView;

.field private mRemainingGoalsLabel:Landroid/widget/TextView;

.field private mSelectMazeIntent:Landroid/content/Intent;

.field private mStepsLabel:Landroid/widget/TextView;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gp/tiltmazes/TiltMazesActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mAboutDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gp/tiltmazes/TiltMazesActivity;)Lcom/gp/tiltmazes/GameEngine;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 275
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 277
    packed-switch p1, :pswitch_data_0

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 279
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 280
    const-string v1, "selected_maze"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 281
    .local v0, "selectedMaze":I
    iget-object v1, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v1, v0}, Lcom/gp/tiltmazes/GameEngine;->loadMap(I)V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "firststart"

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/gp/tiltmazes/TiltMazesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 89
    .local v1, "pm":Landroid/os/PowerManager;
    const/16 v2, 0xa

    const-string v3, "TiltMazes"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 91
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gp/tiltmazes/SelectMazeActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mSelectMazeIntent:Landroid/content/Intent;

    .line 94
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mAboutDialog:Landroid/app/Dialog;

    .line 95
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mAboutDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 96
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mAboutDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 97
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mAboutDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 98
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mAboutDialog:Landroid/app/Dialog;

    const/high16 v3, 0x7f030000

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 100
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mAboutDialog:Landroid/app/Dialog;

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 101
    .local v0, "aboutDialogOkButton":Landroid/widget/Button;
    new-instance v2, Lcom/gp/tiltmazes/TiltMazesActivity$1;

    invoke-direct {v2, p0}, Lcom/gp/tiltmazes/TiltMazesActivity$1;-><init>(Lcom/gp/tiltmazes/TiltMazesActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0, v6}, Lcom/gp/tiltmazes/TiltMazesActivity;->requestWindowFeature(I)Z

    .line 108
    invoke-virtual {p0}, Lcom/gp/tiltmazes/TiltMazesActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 111
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/gp/tiltmazes/TiltMazesActivity;->setContentView(I)V

    .line 113
    invoke-static {v5}, Lcom/admogo/AdMogoTargeting;->setTestMode(Z)V

    .line 125
    invoke-virtual {p0, v5}, Lcom/gp/tiltmazes/TiltMazesActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "firststart"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p0, v5}, Lcom/gp/tiltmazes/TiltMazesActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "firststart"

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mAboutDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 131
    :cond_0
    new-instance v2, Lcom/gp/tiltmazes/GameEngine;

    invoke-direct {v2, p0}, Lcom/gp/tiltmazes/GameEngine;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    .line 132
    const v2, 0x7f060003

    invoke-virtual {p0, v2}, Lcom/gp/tiltmazes/TiltMazesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/gp/tiltmazes/MazeView;

    iput-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mMazeView:Lcom/gp/tiltmazes/MazeView;

    .line 133
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    iget-object v3, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mMazeView:Lcom/gp/tiltmazes/MazeView;

    invoke-virtual {v2, v3}, Lcom/gp/tiltmazes/GameEngine;->setTiltMazesView(Lcom/gp/tiltmazes/MazeView;)V

    .line 134
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mMazeView:Lcom/gp/tiltmazes/MazeView;

    iget-object v3, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v2, v3}, Lcom/gp/tiltmazes/MazeView;->setGameEngine(Lcom/gp/tiltmazes/GameEngine;)V

    .line 135
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mMazeView:Lcom/gp/tiltmazes/MazeView;

    invoke-virtual {v2}, Lcom/gp/tiltmazes/MazeView;->calculateUnit()V

    .line 137
    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lcom/gp/tiltmazes/TiltMazesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mMazeNameLabel:Landroid/widget/TextView;

    .line 138
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    iget-object v3, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mMazeNameLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/gp/tiltmazes/GameEngine;->setMazeNameLabel(Landroid/widget/TextView;)V

    .line 139
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mMazeNameLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v3}, Lcom/gp/tiltmazes/GameEngine;->getMap()Lcom/gp/tiltmazes/Map;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gp/tiltmazes/Map;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mMazeNameLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 142
    const v2, 0x7f060008

    invoke-virtual {p0, v2}, Lcom/gp/tiltmazes/TiltMazesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mRemainingGoalsLabel:Landroid/widget/TextView;

    .line 143
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    iget-object v3, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mRemainingGoalsLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/gp/tiltmazes/GameEngine;->setRemainingGoalsLabel(Landroid/widget/TextView;)V

    .line 145
    const v2, 0x7f06000a

    invoke-virtual {p0, v2}, Lcom/gp/tiltmazes/TiltMazesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mStepsLabel:Landroid/widget/TextView;

    .line 146
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    iget-object v3, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mStepsLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Lcom/gp/tiltmazes/GameEngine;->setStepsLabel(Landroid/widget/TextView;)V

    .line 148
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    .line 150
    invoke-virtual {p0, v5}, Lcom/gp/tiltmazes/TiltMazesActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "sensorenabled"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 148
    invoke-virtual {v2, p1, v3}, Lcom/gp/tiltmazes/GameEngine;->restoreState(Landroid/os/Bundle;Z)V

    .line 155
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/gp/tiltmazes/TiltMazesActivity$2;

    invoke-direct {v3, p0}, Lcom/gp/tiltmazes/TiltMazesActivity$2;-><init>(Lcom/gp/tiltmazes/TiltMazesActivity;)V

    invoke-direct {v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 183
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v5}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 185
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    .line 186
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v2

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Lcom/waps/AppConnect;->setPushIcon(I)V

    .line 187
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 219
    const v0, 0x7f050001

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 220
    const/high16 v0, 0x7f050000

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 221
    const v0, 0x7f050002

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 222
    const v0, 0x7f050004

    invoke-interface {p1, v2, v6, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 223
    const/4 v0, 0x5

    const v1, 0x7f050003

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 224
    const/4 v0, 0x6

    const v1, 0x7f050005

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 226
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gp/tiltmazes/TiltMazesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 227
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gp/tiltmazes/TiltMazesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 228
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gp/tiltmazes/TiltMazesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 229
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gp/tiltmazes/TiltMazesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v2}, Lcom/gp/tiltmazes/GameEngine;->isSensorEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x108000d

    .line 229
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 232
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gp/tiltmazes/TiltMazesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 233
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gp/tiltmazes/TiltMazesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 235
    return v3

    .line 230
    :cond_0
    const v2, 0x108000e

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 329
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waps/AppConnect;->finalize()V

    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 331
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 196
    packed-switch p1, :pswitch_data_0

    .line 211
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    sget-object v1, Lcom/gp/tiltmazes/Direction;->LEFT:Lcom/gp/tiltmazes/Direction;

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->rollBall(Lcom/gp/tiltmazes/Direction;)V

    move v0, v2

    .line 199
    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    sget-object v1, Lcom/gp/tiltmazes/Direction;->RIGHT:Lcom/gp/tiltmazes/Direction;

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->rollBall(Lcom/gp/tiltmazes/Direction;)V

    move v0, v2

    .line 202
    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    sget-object v1, Lcom/gp/tiltmazes/Direction;->UP:Lcom/gp/tiltmazes/Direction;

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->rollBall(Lcom/gp/tiltmazes/Direction;)V

    move v0, v2

    .line 205
    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    sget-object v1, Lcom/gp/tiltmazes/Direction;->DOWN:Lcom/gp/tiltmazes/Direction;

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->rollBall(Lcom/gp/tiltmazes/Direction;)V

    move v0, v2

    .line 208
    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 270
    :goto_0
    return v0

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->sendEmptyMessage(I)V

    move v0, v3

    .line 243
    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->sendEmptyMessage(I)V

    move v0, v3

    .line 247
    goto :goto_0

    .line 250
    :pswitch_2
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->sendEmptyMessage(I)V

    move v0, v3

    .line 251
    goto :goto_0

    .line 254
    :pswitch_3
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/GameEngine;->toggleSensorEnabled()V

    .line 255
    invoke-virtual {p0}, Lcom/gp/tiltmazes/TiltMazesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v1}, Lcom/gp/tiltmazes/GameEngine;->isSensorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x108000d

    .line 255
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 258
    invoke-virtual {p0, v2}, Lcom/gp/tiltmazes/TiltMazesActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sensorenabled"

    iget-object v2, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v2}, Lcom/gp/tiltmazes/GameEngine;->isSensorEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v3

    .line 259
    goto :goto_0

    .line 256
    :cond_0
    const v1, 0x108000e

    goto :goto_1

    .line 262
    :pswitch_4
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mSelectMazeIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/gp/tiltmazes/TiltMazesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v3

    .line 263
    goto :goto_0

    .line 266
    :pswitch_5
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mAboutDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v0, v3

    .line 267
    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 300
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/GameEngine;->unregisterListener()V

    .line 301
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 302
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 321
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    .line 323
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/gp/tiltmazes/TiltMazesActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sensorenabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 321
    invoke-virtual {v0, p1, v1}, Lcom/gp/tiltmazes/GameEngine;->restoreState(Landroid/os/Bundle;Z)V

    .line 325
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 307
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/GameEngine;->registerListener()V

    .line 308
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 309
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 314
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v0, p1}, Lcom/gp/tiltmazes/GameEngine;->saveState(Landroid/os/Bundle;)V

    .line 315
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/GameEngine;->unregisterListener()V

    .line 316
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 290
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 295
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
