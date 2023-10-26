.class public Lcom/feasy/jewels/Gel/GameView;
.super Landroid/view/View;
.source "GameView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static SCREEN_H:I = 0x0

.field public static SCREEN_W:I = 0x0

.field static final ST_PLAYING:I = 0x2

.field static gameState:I


# instance fields
.field final BODY_H:I

.field final BODY_W:I

.field beginDrawX:I

.field beginDrawY:I

.field private bg:Landroid/graphics/Bitmap;

.field private block:[Landroid/graphics/Bitmap;

.field final blockCount:I

.field private bmTop:Landroid/graphics/Bitmap;

.field public body:[[I

.field bomb:Lcom/feasy/jewels/Gel/Bomb;

.field final caseWidth:I

.field clear:[[I

.field clearFrame:I

.field final clearFrameMax:I

.field final clearW:I

.field context:Landroid/content/Context;

.field curScore:I

.field currentX:I

.field currentY:I

.field private cursor1:Landroid/graphics/Bitmap;

.field private cursor2:Landroid/graphics/Bitmap;

.field final cursorW:I

.field private delay:I

.field gameScore:I

.field iDisScore:I

.field private imgBonus:Landroid/graphics/Bitmap;

.field private imgBonusbar:Landroid/graphics/Bitmap;

.field private imgBonusbar_fill:Landroid/graphics/Bitmap;

.field private imgNum01:Landroid/graphics/Bitmap;

.field private imgScore:Landroid/graphics/Bitmap;

.field isClear:Z

.field isDown:Z

.field isExchange:Z

.field isReExchange:Z

.field private isResumeLoad:Z

.field public isRunning:Z

.field isSelected:Z

.field private mBkgFiles:[I

.field mBonus:I

.field private mFontFace:Landroid/graphics/Typeface;

.field mMatchCnt:I

.field private mParent:Lcom/feasy/jewels/Gel/GameActivity;

.field moveFrame:I

.field final moveFrameMax:I

.field final moveSpeed:I

.field paint:Landroid/graphics/Paint;

.field random:Ljava/util/Random;

.field scoreSpace:I

.field selectedX:I

.field selectedY:I

.field tempMove:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/feasy/jewels/Gel/GameView;->gameState:I

    .line 30
    const/16 v0, 0x140

    sput v0, Lcom/feasy/jewels/Gel/GameView;->SCREEN_W:I

    .line 31
    const/16 v0, 0x1c7

    sput v0, Lcom/feasy/jewels/Gel/GameView;->SCREEN_H:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x1

    const/16 v2, 0x8

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v0, 0x19

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->delay:I

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->paint:Landroid/graphics/Paint;

    .line 33
    const/16 v0, 0x28

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->caseWidth:I

    .line 34
    iput v2, p0, Lcom/feasy/jewels/Gel/GameView;->BODY_W:I

    .line 35
    iput v2, p0, Lcom/feasy/jewels/Gel/GameView;->BODY_H:I

    .line 36
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->random:Ljava/util/Random;

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->moveSpeed:I

    .line 39
    iput v2, p0, Lcom/feasy/jewels/Gel/GameView;->clearFrameMax:I

    .line 40
    iput v2, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrameMax:I

    .line 41
    const/16 v0, 0x24

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->cursorW:I

    .line 42
    const/16 v0, 0x1e

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->clearW:I

    .line 43
    iput v2, p0, Lcom/feasy/jewels/Gel/GameView;->blockCount:I

    .line 45
    new-array v0, v2, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->block:[Landroid/graphics/Bitmap;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 60
    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->mBkgFiles:[I

    .line 65
    iput v3, p0, Lcom/feasy/jewels/Gel/GameView;->mBonus:I

    .line 66
    iput v1, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    iput v1, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    .line 72
    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    .line 75
    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    .line 76
    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->clear:[[I

    .line 78
    iput-boolean v3, p0, Lcom/feasy/jewels/Gel/GameView;->isDown:Z

    .line 79
    iput-boolean v3, p0, Lcom/feasy/jewels/Gel/GameView;->isRunning:Z

    .line 84
    invoke-virtual {p0, v3}, Lcom/feasy/jewels/Gel/GameView;->setFocusable(Z)V

    .line 85
    return-void

    .line 57
    :array_0
    .array-data 4
        0x7f020017
        0x7f020018
        0x7f020019
        0x7f02001a
    .end array-data
.end method

.method private addScore(I)V
    .locals 4
    .param p1, "cnt"    # I

    .prologue
    const/4 v3, 0x3

    .line 420
    if-ge p1, v3, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->mParent:Lcom/feasy/jewels/Gel/GameActivity;

    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameView;->mParent:Lcom/feasy/jewels/Gel/GameActivity;

    iget-object v2, v2, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Lcom/feasy/jewels/Gel/GameActivity;->playSP(I)V

    .line 427
    const/4 v1, 0x2

    sub-int v1, p1, v1

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->mBonus:I

    mul-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0xa

    .line 428
    .local v0, "addVal":I
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->gameScore:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/feasy/jewels/Gel/GameView;->gameScore:I

    .line 429
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->curScore:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/feasy/jewels/Gel/GameView;->curScore:I

    .line 430
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->mMatchCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/feasy/jewels/Gel/GameView;->mMatchCnt:I

    .line 433
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->curScore:I

    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->getCurLevelScore()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 436
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->curScore:I

    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->getCurLevelScore()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/feasy/jewels/Gel/GameView;->curScore:I

    .line 439
    const/4 v1, 0x0

    iput v1, p0, Lcom/feasy/jewels/Gel/GameView;->mMatchCnt:I

    .line 440
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->updateLevel()V

    .line 443
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->mParent:Lcom/feasy/jewels/Gel/GameActivity;

    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameView;->mParent:Lcom/feasy/jewels/Gel/GameActivity;

    iget-object v2, v2, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/feasy/jewels/Gel/GameActivity;->playSP(I)V

    goto :goto_0
.end method

.method private changeBkg()V
    .locals 6

    .prologue
    .line 154
    iget-object v3, p0, Lcom/feasy/jewels/Gel/GameView;->bmTop:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/feasy/jewels/Gel/GameView;->bmTop:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/feasy/jewels/Gel/GameView;->bmTop:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    :cond_0
    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->mBonus:I

    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->mBkgFiles:[I

    array-length v4, v4

    rem-int v0, v3, v4

    .line 161
    .local v0, "idx":I
    const-string v3, "GameView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "changeBkg(): idx="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v3, p0, Lcom/feasy/jewels/Gel/GameView;->mBkgFiles:[I

    aget v2, v3, v0

    .line 165
    .local v2, "resId":I
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 166
    .local v1, "r":Landroid/content/res/Resources;
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/feasy/jewels/Gel/GameView;->bmTop:Landroid/graphics/Bitmap;

    .line 167
    return-void
.end method

.method private checkClear()Z
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    .line 380
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "clearBlock":Z
    const/4 v1, 0x0

    .line 396
    .local v1, "cnt":I
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v10, :cond_5

    .line 410
    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0, v1}, Lcom/feasy/jewels/Gel/GameView;->addScore(I)V

    .line 413
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->mParent:Lcom/feasy/jewels/Gel/GameActivity;

    invoke-virtual {v4}, Lcom/feasy/jewels/Gel/GameActivity;->playVibrate()V

    .line 416
    :cond_0
    return v0

    .line 381
    .end local v0    # "clearBlock":Z
    .end local v1    # "cnt":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v4, v4, v2

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 380
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    :cond_2
    if-lez v3, :cond_3

    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v4, v4, v2

    array-length v4, v4

    sub-int/2addr v4, v9

    if-ge v3, v4, :cond_3

    .line 383
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    iget-object v5, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v5, v5, v2

    sub-int v6, v3, v9

    aget v5, v5, v6

    if-ne v4, v5, :cond_3

    .line 384
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    iget-object v5, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v5, v5, v2

    add-int/lit8 v6, v3, 0x1

    aget v5, v5, v6

    if-ne v4, v5, :cond_3

    .line 385
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->clear:[[I

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/feasy/jewels/Gel/GameView;->clear:[[I

    aget-object v5, v5, v2

    sub-int v6, v3, v9

    iget-object v7, p0, Lcom/feasy/jewels/Gel/GameView;->clear:[[I

    aget-object v7, v7, v2

    add-int/lit8 v8, v3, 0x1

    aput v9, v7, v8

    aput v9, v5, v6

    aput v9, v4, v3

    .line 387
    :cond_3
    if-lez v2, :cond_4

    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    array-length v4, v4

    sub-int/2addr v4, v9

    if-ge v2, v4, :cond_4

    .line 388
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    iget-object v5, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    sub-int v6, v2, v9

    aget-object v5, v5, v6

    aget v5, v5, v3

    if-ne v4, v5, :cond_4

    .line 389
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    iget-object v5, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    aget v5, v5, v3

    if-ne v4, v5, :cond_4

    .line 390
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->clear:[[I

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/feasy/jewels/Gel/GameView;->clear:[[I

    sub-int v6, v2, v9

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/feasy/jewels/Gel/GameView;->clear:[[I

    add-int/lit8 v7, v2, 0x1

    aget-object v6, v6, v7

    aput v9, v6, v3

    aput v9, v5, v3

    aput v9, v4, v3

    .line 381
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 397
    .end local v3    # "j":I
    .restart local v0    # "clearBlock":Z
    .restart local v1    # "cnt":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    if-lt v3, v10, :cond_6

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 398
    :cond_6
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->clear:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    if-ne v4, v9, :cond_7

    .line 399
    const/4 v0, 0x1

    .line 400
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->bomb:Lcom/feasy/jewels/Gel/Bomb;

    iget v5, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawX:I

    mul-int/lit8 v6, v2, 0x28

    add-int/2addr v5, v6

    iget v6, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawY:I

    .line 401
    mul-int/lit8 v7, v3, 0x28

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v7, v7, v2

    aget v7, v7, v3

    sub-int/2addr v7, v9

    .line 400
    invoke-virtual {v4, v5, v6, v7}, Lcom/feasy/jewels/Gel/Bomb;->add(III)V

    .line 402
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->clear:[[I

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v5, v5, v2

    const/4 v6, 0x0

    aput v6, v5, v3

    aput v6, v4, v3

    .line 405
    add-int/lit8 v1, v1, 0x1

    .line 397
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private doDown()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "isFull":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    array-length v4, v4

    if-lt v0, v4, :cond_1

    .line 336
    iget-boolean v4, p0, Lcom/feasy/jewels/Gel/GameView;->isResumeLoad:Z

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    .line 337
    iput-boolean v7, p0, Lcom/feasy/jewels/Gel/GameView;->isResumeLoad:Z

    .line 339
    :cond_0
    return v1

    .line 316
    :cond_1
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    sub-int v2, v4, v7

    .local v2, "j":I
    :goto_1
    if-gez v2, :cond_3

    .line 315
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_3
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aput v5, v4, v2

    .line 318
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v4, v4, v0

    aget v4, v4, v2

    if-nez v4, :cond_6

    .line 319
    const/4 v1, 0x1

    .line 320
    move v3, v2

    .local v3, "k":I
    :goto_2
    if-ltz v3, :cond_2

    .line 321
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x2

    aput v5, v4, v3

    .line 322
    if-nez v3, :cond_5

    .line 323
    iget-boolean v4, p0, Lcom/feasy/jewels/Gel/GameView;->isResumeLoad:Z

    if-eqz v4, :cond_4

    .line 324
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v4, v4, v0

    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->getRandomBlockId()I

    move-result v5

    aput v5, v4, v3

    .line 320
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 328
    :cond_5
    iget-object v4, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v5, v5, v0

    sub-int v6, v3, v7

    aget v5, v5, v6

    aput v5, v4, v3

    goto :goto_3

    .line 316
    .end local v3    # "k":I
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method private doExchange()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 343
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    sub-int/2addr v1, v2

    if-ne v1, v3, :cond_3

    .line 344
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    sub-int/2addr v1, v2

    if-ne v1, v3, :cond_1

    .line 345
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    const/16 v3, 0x9

    aput v3, v1, v2

    .line 346
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    aput v4, v1, v2

    .line 374
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    aget v0, v1, v2

    .line 375
    .local v0, "temp":I
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    iget-object v3, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    iget v4, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    aget v3, v3, v4

    aput v3, v1, v2

    .line 376
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    aput v0, v1, v2

    .line 377
    return-void

    .line 347
    .end local v0    # "temp":I
    :cond_1
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 348
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    const/4 v3, 0x6

    aput v3, v1, v2

    .line 349
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    aput v7, v1, v2

    goto :goto_0

    .line 350
    :cond_2
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    sub-int/2addr v1, v2

    if-ne v1, v4, :cond_0

    .line 351
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    aput v6, v1, v2

    .line 352
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    const/4 v3, 0x7

    aput v3, v1, v2

    goto :goto_0

    .line 354
    :cond_3
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_5

    .line 355
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    sub-int/2addr v1, v2

    if-ne v1, v3, :cond_4

    .line 356
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    const/16 v3, 0x8

    aput v3, v1, v2

    .line 357
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    aput v5, v1, v2

    goto/16 :goto_0

    .line 358
    :cond_4
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    sub-int/2addr v1, v2

    if-ne v1, v4, :cond_0

    .line 359
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    aput v5, v1, v2

    .line 360
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    const/16 v3, 0x8

    aput v3, v1, v2

    goto/16 :goto_0

    .line 362
    :cond_5
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    sub-int/2addr v1, v2

    if-ne v1, v4, :cond_0

    .line 363
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    sub-int/2addr v1, v2

    if-ne v1, v3, :cond_6

    .line 364
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    const/4 v3, 0x7

    aput v3, v1, v2

    .line 365
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    aput v6, v1, v2

    goto/16 :goto_0

    .line 366
    :cond_6
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_7

    .line 367
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    aput v7, v1, v2

    .line 368
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    const/4 v3, 0x6

    aput v3, v1, v2

    goto/16 :goto_0

    .line 369
    :cond_7
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    sub-int/2addr v1, v2

    if-ne v1, v4, :cond_0

    .line 370
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    aput v4, v1, v2

    .line 371
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    const/16 v3, 0x9

    aput v3, v1, v2

    goto/16 :goto_0
.end method

.method private drawProcessBar(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 697
    const/16 v0, 0x2d

    .line 705
    .local v0, "top":I
    return-void
.end method

.method private moveDown()V
    .locals 2

    .prologue
    .line 623
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    .line 626
    :cond_0
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    .line 627
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->setExchange()V

    .line 628
    return-void
.end method

.method private moveLeft()V
    .locals 2

    .prologue
    .line 631
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    if-nez v0, :cond_0

    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    .line 634
    :cond_0
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    add-int/lit8 v0, v0, 0x8

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    .line 635
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->setExchange()V

    .line 636
    return-void
.end method

.method private moveLeftDown()V
    .locals 2

    .prologue
    .line 588
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 589
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    .line 591
    :cond_1
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    add-int/lit8 v0, v0, 0x8

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    .line 592
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    .line 593
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->setExchange()V

    .line 594
    return-void
.end method

.method private moveLeftUp()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 606
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    if-nez v0, :cond_1

    .line 607
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    .line 609
    :cond_1
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    add-int/lit8 v0, v0, 0x8

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    .line 610
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    add-int/lit8 v0, v0, 0x8

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    .line 611
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->setExchange()V

    .line 612
    return-void
.end method

.method private moveRight()V
    .locals 2

    .prologue
    .line 639
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    .line 642
    :cond_0
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    .line 643
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->setExchange()V

    .line 644
    return-void
.end method

.method private moveRightDown()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 579
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    if-ne v0, v1, :cond_1

    .line 580
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    .line 582
    :cond_1
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    .line 583
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    .line 584
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->setExchange()V

    .line 585
    return-void
.end method

.method private moveRightUp()V
    .locals 2

    .prologue
    .line 597
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 598
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    .line 600
    :cond_1
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    .line 601
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    add-int/lit8 v0, v0, 0x8

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    .line 602
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->setExchange()V

    .line 603
    return-void
.end method

.method private moveUp()V
    .locals 2

    .prologue
    .line 615
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    .line 618
    :cond_0
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    add-int/lit8 v0, v0, 0x8

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    .line 619
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->setExchange()V

    .line 620
    return-void
.end method

.method private paintBlock(Landroid/graphics/Canvas;III)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 464
    add-int/lit8 p2, p2, -0x1

    .line 465
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->block:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 466
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 467
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawX:I

    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawY:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawX:I

    add-int/lit16 v2, v2, 0x140

    .line 468
    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawY:I

    add-int/lit16 v3, v3, 0x140

    .line 467
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 469
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->block:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p2

    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawX:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawY:I

    add-int/2addr v2, p4

    int-to-float v2, v2

    .line 470
    iget-object v3, p0, Lcom/feasy/jewels/Gel/GameView;->paint:Landroid/graphics/Paint;

    .line 469
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 471
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 473
    :cond_0
    return-void
.end method

.method private paintNumber(Landroid/graphics/Canvas;IIIII)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "num"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "tmpStr":Ljava/lang/String;
    int-to-float v1, p3

    int-to-float v2, p4

    iget-object v3, p0, Lcom/feasy/jewels/Gel/GameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 659
    return-void
.end method

.method private paintNumberX(Landroid/graphics/Canvas;Ljava/lang/String;IIII)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "txt"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 680
    int-to-float v0, p3

    int-to-float v1, p4

    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 681
    return-void
.end method

.method private paintPlaying(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0xd

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 238
    sget v0, Lcom/feasy/jewels/Gel/GameView;->SCREEN_W:I

    sget v1, Lcom/feasy/jewels/Gel/GameView;->SCREEN_H:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 239
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->bmTop:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 240
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->bg:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/feasy/jewels/Gel/GameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 242
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    array-length v0, v0

    if-lt v7, v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->imgScore:Landroid/graphics/Bitmap;

    const/high16 v1, 0x40e00000    # 7.0f

    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 293
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->gameScore:I

    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->scoreSpace:I

    add-int/lit8 v3, v0, 0xd

    const/16 v4, 0x16

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/feasy/jewels/Gel/GameView;->paintNumber(Landroid/graphics/Canvas;IIIII)V

    .line 296
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->imgBonus:Landroid/graphics/Bitmap;

    const/high16 v1, 0x43550000    # 213.0f

    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->mBonus:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10e

    const/16 v4, 0x16

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/feasy/jewels/Gel/GameView;->paintNumberX(Landroid/graphics/Canvas;Ljava/lang/String;IIII)V

    .line 302
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->cursor1:Landroid/graphics/Bitmap;

    :goto_1
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawX:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    .line 303
    mul-int/lit8 v2, v2, 0x28

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawY:I

    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    mul-int/lit8 v3, v3, 0x28

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/feasy/jewels/Gel/GameView;->paint:Landroid/graphics/Paint;

    .line 302
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 305
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->bomb:Lcom/feasy/jewels/Gel/Bomb;

    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/feasy/jewels/Gel/Bomb;->paint(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 306
    return-void

    .line 243
    :cond_0
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    aget-object v0, v0, v7

    array-length v0, v0

    if-lt v8, v0, :cond_1

    .line 242
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    aget-object v0, v0, v7

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    .line 283
    :pswitch_0
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->clear:[[I

    aget-object v0, v0, v7

    aget v0, v0, v8

    if-nez v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v0, v0, v7

    aget v0, v0, v8

    mul-int/lit8 v1, v7, 0x28

    .line 285
    mul-int/lit8 v2, v8, 0x28

    .line 284
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/feasy/jewels/Gel/GameView;->paintBlock(Landroid/graphics/Canvas;III)V

    .line 243
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 247
    :pswitch_1
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v0, v0, v7

    aget v0, v0, v8

    sub-int v1, v7, v4

    mul-int/lit8 v1, v1, 0x28

    .line 248
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    sub-int v2, v8, v4

    mul-int/lit8 v2, v2, 0x28

    .line 249
    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    .line 247
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/feasy/jewels/Gel/GameView;->paintBlock(Landroid/graphics/Canvas;III)V

    goto :goto_3

    .line 252
    :pswitch_2
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v0, v0, v7

    aget v0, v0, v8

    mul-int/lit8 v1, v7, 0x28

    sub-int v2, v8, v4

    .line 253
    mul-int/lit8 v2, v2, 0x28

    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    .line 252
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/feasy/jewels/Gel/GameView;->paintBlock(Landroid/graphics/Canvas;III)V

    goto :goto_3

    .line 256
    :pswitch_3
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v0, v0, v7

    aget v0, v0, v8

    add-int/lit8 v1, v7, 0x1

    mul-int/lit8 v1, v1, 0x28

    .line 257
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    sub-int v2, v8, v4

    mul-int/lit8 v2, v2, 0x28

    .line 258
    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    .line 256
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/feasy/jewels/Gel/GameView;->paintBlock(Landroid/graphics/Canvas;III)V

    goto :goto_3

    .line 261
    :pswitch_4
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v0, v0, v7

    aget v0, v0, v8

    sub-int v1, v7, v4

    mul-int/lit8 v1, v1, 0x28

    .line 262
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    mul-int/lit8 v2, v8, 0x28

    .line 261
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/feasy/jewels/Gel/GameView;->paintBlock(Landroid/graphics/Canvas;III)V

    goto :goto_3

    .line 265
    :pswitch_5
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v0, v0, v7

    aget v0, v0, v8

    add-int/lit8 v1, v7, 0x1

    mul-int/lit8 v1, v1, 0x28

    .line 266
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    mul-int/lit8 v2, v8, 0x28

    .line 265
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/feasy/jewels/Gel/GameView;->paintBlock(Landroid/graphics/Canvas;III)V

    goto :goto_3

    .line 269
    :pswitch_6
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v0, v0, v7

    aget v0, v0, v8

    sub-int v1, v7, v4

    mul-int/lit8 v1, v1, 0x28

    .line 270
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    add-int/lit8 v2, v8, 0x1

    mul-int/lit8 v2, v2, 0x28

    .line 271
    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    .line 269
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/feasy/jewels/Gel/GameView;->paintBlock(Landroid/graphics/Canvas;III)V

    goto/16 :goto_3

    .line 274
    :pswitch_7
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v0, v0, v7

    aget v0, v0, v8

    mul-int/lit8 v1, v7, 0x28

    add-int/lit8 v2, v8, 0x1

    .line 275
    mul-int/lit8 v2, v2, 0x28

    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    .line 274
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/feasy/jewels/Gel/GameView;->paintBlock(Landroid/graphics/Canvas;III)V

    goto/16 :goto_3

    .line 278
    :pswitch_8
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->body:[[I

    aget-object v0, v0, v7

    aget v0, v0, v8

    add-int/lit8 v1, v7, 0x1

    mul-int/lit8 v1, v1, 0x28

    .line 279
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    add-int/lit8 v2, v8, 0x1

    mul-int/lit8 v2, v2, 0x28

    .line 280
    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v2, v3

    .line 278
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/feasy/jewels/Gel/GameView;->paintBlock(Landroid/graphics/Canvas;III)V

    goto/16 :goto_3

    .line 302
    .end local v8    # "j":I
    :cond_3
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->cursor2:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private updateLevel()V
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->mBonus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->mBonus:I

    .line 452
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->changeBkg()V

    .line 453
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->mParent:Lcom/feasy/jewels/Gel/GameActivity;

    invoke-virtual {v0}, Lcom/feasy/jewels/Gel/GameActivity;->playMusic()V

    .line 454
    return-void
.end method


# virtual methods
.method public createImage(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "tile"    # Landroid/graphics/drawable/Drawable;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 120
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 122
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v3, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    return-object v0
.end method

.method public freeObject()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 714
    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->bg:Landroid/graphics/Bitmap;

    .line 715
    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->bmTop:Landroid/graphics/Bitmap;

    .line 716
    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->cursor1:Landroid/graphics/Bitmap;

    .line 717
    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->imgBonusbar_fill:Landroid/graphics/Bitmap;

    .line 718
    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->imgBonusbar:Landroid/graphics/Bitmap;

    .line 719
    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->imgScore:Landroid/graphics/Bitmap;

    .line 720
    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->imgBonus:Landroid/graphics/Bitmap;

    .line 721
    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->block:[Landroid/graphics/Bitmap;

    .line 722
    return-void
.end method

.method public getCurLevelScore()I
    .locals 2

    .prologue
    .line 457
    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->mBonus:I

    mul-int/lit8 v1, v1, 0xa

    mul-int/lit8 v0, v1, 0x32

    .line 459
    .local v0, "maxScore":I
    return v0
.end method

.method public getRandomBlockId()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public init(Z)V
    .locals 3
    .param p1, "isNewGame"    # Z

    .prologue
    const/4 v2, 0x0

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isResumeLoad:Z

    .line 103
    if-nez p1, :cond_0

    .line 104
    iput-boolean v2, p0, Lcom/feasy/jewels/Gel/GameView;->isResumeLoad:Z

    .line 105
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->mParent:Lcom/feasy/jewels/Gel/GameActivity;

    invoke-virtual {v0}, Lcom/feasy/jewels/Gel/GameActivity;->loadResumeData()V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->loadFP()V

    .line 113
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 115
    iput v2, p0, Lcom/feasy/jewels/Gel/GameView;->mMatchCnt:I

    .line 116
    return-void
.end method

.method public loadFP()V
    .locals 4

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    .local v0, "r":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->changeBkg()V

    .line 132
    const v1, 0x7f020006

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->bg:Landroid/graphics/Bitmap;

    .line 133
    const v1, 0x7f020014

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->cursor1:Landroid/graphics/Bitmap;

    .line 134
    const v1, 0x7f020015

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->cursor2:Landroid/graphics/Bitmap;

    .line 135
    const v1, 0x7f020027

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->imgNum01:Landroid/graphics/Bitmap;

    .line 136
    const v1, 0x7f020029

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->imgScore:Landroid/graphics/Bitmap;

    .line 137
    const v1, 0x7f020007

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->imgBonus:Landroid/graphics/Bitmap;

    .line 138
    const v1, 0x7f02000a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->imgBonusbar_fill:Landroid/graphics/Bitmap;

    .line 139
    const v1, 0x7f020009

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->imgBonusbar:Landroid/graphics/Bitmap;

    .line 140
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->imgScore:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/feasy/jewels/Gel/GameView;->scoreSpace:I

    .line 141
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->block:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const v3, 0x7f02002a

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 142
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->block:[Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    const v3, 0x7f02002b

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 143
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->block:[Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    const v3, 0x7f02002c

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 144
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->block:[Landroid/graphics/Bitmap;

    const/4 v2, 0x3

    const v3, 0x7f02002d

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 145
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->block:[Landroid/graphics/Bitmap;

    const/4 v2, 0x4

    const v3, 0x7f02002e

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 146
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->block:[Landroid/graphics/Bitmap;

    const/4 v2, 0x5

    const v3, 0x7f02002f

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 147
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->block:[Landroid/graphics/Bitmap;

    const/4 v2, 0x6

    const v3, 0x7f020030

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 148
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->block:[Landroid/graphics/Bitmap;

    const/4 v2, 0x7

    const v3, 0x7f020031

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 149
    return-void
.end method

.method public logic()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 174
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->bomb:Lcom/feasy/jewels/Gel/Bomb;

    invoke-virtual {v0}, Lcom/feasy/jewels/Gel/Bomb;->move()V

    .line 176
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->iDisScore:I

    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->gameScore:I

    if-ge v0, v1, :cond_0

    .line 177
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->iDisScore:I

    iget v1, p0, Lcom/feasy/jewels/Gel/GameView;->gameScore:I

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->iDisScore:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->iDisScore:I

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isClear:Z

    if-eqz v0, :cond_1

    .line 182
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->clearFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->clearFrame:I

    .line 183
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->clearFrame:I

    if-lt v0, v3, :cond_1

    .line 184
    iput v4, p0, Lcom/feasy/jewels/Gel/GameView;->clearFrame:I

    .line 185
    iput-boolean v4, p0, Lcom/feasy/jewels/Gel/GameView;->isClear:Z

    .line 186
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->doDown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isDown:Z

    .line 190
    :cond_1
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isDown:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isExchange:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isReExchange:Z

    if-eqz v0, :cond_3

    .line 191
    :cond_2
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    .line 194
    :cond_3
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isDown:Z

    if-eqz v0, :cond_4

    .line 195
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    if-lt v0, v3, :cond_4

    .line 196
    iput v4, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    .line 197
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->doDown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isDown:Z

    .line 198
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isDown:Z

    if-nez v0, :cond_4

    .line 199
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->checkClear()Z

    move-result v0

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isClear:Z

    .line 204
    :cond_4
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isExchange:Z

    if-eqz v0, :cond_5

    .line 205
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    if-lt v0, v3, :cond_5

    .line 206
    iput v4, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    .line 207
    iput-boolean v4, p0, Lcom/feasy/jewels/Gel/GameView;->isExchange:Z

    .line 208
    const-string v0, "GameView"

    const-string v1, "logic(): new tempMove()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    .line 210
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->checkClear()Z

    move-result v0

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isClear:Z

    .line 211
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isClear:Z

    if-nez v0, :cond_5

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isReExchange:Z

    .line 213
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->doExchange()V

    .line 218
    :cond_5
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isReExchange:Z

    if-eqz v0, :cond_6

    .line 219
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    if-lt v0, v3, :cond_6

    .line 220
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->tempMove:[[I

    .line 221
    iput v4, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    .line 222
    iput-boolean v4, p0, Lcom/feasy/jewels/Gel/GameView;->isReExchange:Z

    .line 225
    :cond_6
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 230
    sget v0, Lcom/feasy/jewels/Gel/GameView;->gameState:I

    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 232
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/feasy/jewels/Gel/GameView;->paintPlaying(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "msg"    # Landroid/view/KeyEvent;

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isDown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isExchange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isReExchange:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    if-eqz v0, :cond_1

    .line 542
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 567
    :goto_0
    return v0

    .line 545
    :cond_1
    const/16 v0, 0x17

    if-ne p1, v0, :cond_6

    .line 546
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isDown:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isExchange:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isReExchange:Z

    if-eqz v0, :cond_3

    .line 547
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 549
    :cond_3
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    .line 550
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    .line 551
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    .line 567
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 549
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 553
    :cond_6
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isExchange:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isReExchange:Z

    if-eqz v0, :cond_8

    .line 554
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 556
    :cond_8
    const/16 v0, 0x13

    if-ne p1, v0, :cond_9

    .line 557
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->moveUp()V

    goto :goto_2

    .line 558
    :cond_9
    const/16 v0, 0x14

    if-ne p1, v0, :cond_a

    .line 559
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->moveDown()V

    goto :goto_2

    .line 560
    :cond_a
    const/16 v0, 0x15

    if-ne p1, v0, :cond_b

    .line 561
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->moveLeft()V

    goto :goto_2

    .line 562
    :cond_b
    const/16 v0, 0x16

    if-ne p1, v0, :cond_4

    .line 563
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->moveRight()V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x42200000    # 40.0f

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 535
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 481
    :pswitch_0
    iget-boolean v2, p0, Lcom/feasy/jewels/Gel/GameView;->isDown:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/feasy/jewels/Gel/GameView;->isExchange:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/feasy/jewels/Gel/GameView;->isReExchange:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->moveFrame:I

    if-eqz v2, :cond_2

    .line 482
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 485
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawX:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 486
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawX:I

    add-int/lit16 v3, v3, 0x140

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawY:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawY:I

    add-int/lit16 v3, v3, 0x140

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 489
    iget-boolean v2, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    if-eqz v2, :cond_b

    .line 492
    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameView;->mParent:Lcom/feasy/jewels/Gel/GameActivity;

    iget-object v3, p0, Lcom/feasy/jewels/Gel/GameView;->mParent:Lcom/feasy/jewels/Gel/GameActivity;

    iget-object v3, v3, Lcom/feasy/jewels/Gel/GameActivity;->mGameSound:Lcom/feasy/jewels/Gel/GameSound;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/feasy/jewels/Gel/GameActivity;->playSP(I)V

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v0, v2

    .line 495
    .local v0, "tempX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v1, v2

    .line 497
    .local v1, "tempY":I
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    if-le v0, v2, :cond_5

    .line 498
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    if-le v1, v2, :cond_3

    .line 499
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->moveRightDown()V

    goto :goto_0

    .line 500
    :cond_3
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    if-ne v1, v2, :cond_4

    .line 501
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->moveRight()V

    goto/16 :goto_0

    .line 502
    :cond_4
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    if-ge v1, v2, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->moveRightUp()V

    goto/16 :goto_0

    .line 505
    :cond_5
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    if-ne v0, v2, :cond_8

    .line 506
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    if-le v1, v2, :cond_6

    .line 507
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->moveDown()V

    goto/16 :goto_0

    .line 508
    :cond_6
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    if-ne v1, v2, :cond_7

    .line 509
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    goto/16 :goto_0

    .line 510
    :cond_7
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    if-ge v1, v2, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->moveUp()V

    goto/16 :goto_0

    .line 513
    :cond_8
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    if-ge v0, v2, :cond_0

    .line 514
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    if-le v1, v2, :cond_9

    .line 515
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->moveLeftDown()V

    goto/16 :goto_0

    .line 516
    :cond_9
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    if-ne v1, v2, :cond_a

    .line 517
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->moveLeft()V

    goto/16 :goto_0

    .line 518
    :cond_a
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    if-ge v1, v2, :cond_0

    .line 519
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->moveLeftUp()V

    goto/16 :goto_0

    .line 525
    .end local v0    # "tempX":I
    .end local v1    # "tempY":I
    :cond_b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    .line 527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    .line 528
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    .line 529
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentX:I

    iput v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedX:I

    .line 530
    iget v2, p0, Lcom/feasy/jewels/Gel/GameView;->currentY:I

    iput v2, p0, Lcom/feasy/jewels/Gel/GameView;->selectedY:I

    goto/16 :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public restoreData(III)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "score"    # I
    .param p3, "curScore"    # I

    .prologue
    .line 708
    iput p1, p0, Lcom/feasy/jewels/Gel/GameView;->mBonus:I

    .line 709
    iput p2, p0, Lcom/feasy/jewels/Gel/GameView;->gameScore:I

    .line 711
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->logic()V

    .line 687
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/GameView;->invalidate()V

    .line 688
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->mParent:Lcom/feasy/jewels/Gel/GameActivity;

    invoke-virtual {v0}, Lcom/feasy/jewels/Gel/GameActivity;->updateBar()V

    .line 690
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isRunning:Z

    if-nez v0, :cond_0

    .line 694
    :goto_0
    return-void

    .line 693
    :cond_0
    iget v0, p0, Lcom/feasy/jewels/Gel/GameView;->delay:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/feasy/jewels/Gel/GameView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setExchange()V
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    if-eqz v0, :cond_0

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isExchange:Z

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feasy/jewels/Gel/GameView;->isSelected:Z

    .line 574
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/GameView;->doExchange()V

    .line 576
    :cond_0
    return-void
.end method

.method public setParent(Lcom/feasy/jewels/Gel/GameActivity;)V
    .locals 0
    .param p1, "a"    # Lcom/feasy/jewels/Gel/GameActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/feasy/jewels/Gel/GameView;->mParent:Lcom/feasy/jewels/Gel/GameActivity;

    .line 89
    return-void
.end method

.method public setScreen(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/16 v1, 0x140

    .line 92
    sput p1, Lcom/feasy/jewels/Gel/GameView;->SCREEN_W:I

    .line 93
    sput p2, Lcom/feasy/jewels/Gel/GameView;->SCREEN_H:I

    .line 95
    sget v0, Lcom/feasy/jewels/Gel/GameView;->SCREEN_W:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawX:I

    .line 96
    sget v0, Lcom/feasy/jewels/Gel/GameView;->SCREEN_H:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameView;->beginDrawY:I

    .line 98
    new-instance v0, Lcom/feasy/jewels/Gel/Bomb;

    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameView;->block:[Landroid/graphics/Bitmap;

    sget v2, Lcom/feasy/jewels/Gel/GameView;->SCREEN_W:I

    sget v3, Lcom/feasy/jewels/Gel/GameView;->SCREEN_H:I

    invoke-direct {v0, v1, v2, v3}, Lcom/feasy/jewels/Gel/Bomb;-><init>([Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameView;->bomb:Lcom/feasy/jewels/Gel/Bomb;

    .line 99
    return-void
.end method

.method public toState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 170
    sput p1, Lcom/feasy/jewels/Gel/GameView;->gameState:I

    .line 171
    return-void
.end method
