.class public Lcom/gp/tiltmazes/MazeView;
.super Landroid/view/View;
.source "MazeView.java"


# static fields
.field private static final WALL_WIDTH:F = 5.0f


# instance fields
.field private DEBUG:Z

.field private goalGradient:Landroid/graphics/RadialGradient;

.field private mBall:Lcom/gp/tiltmazes/Ball;

.field private mBallX:F

.field private mBallY:F

.field private mDrawStep:I

.field private mDrawTimeHistory:[J

.field private mDrawTimeHistorySize:I

.field private mGameEngine:Lcom/gp/tiltmazes/GameEngine;

.field private mGoals:[[I

.field private mMapHeight:I

.field private mMapWidth:I

.field private mT1:J

.field private mT2:J

.field private mTimer:Ljava/util/Timer;

.field private mUnit:F

.field private mWalls:[[I

.field private mWidth:I

.field private mXMax:F

.field private mXMin:F

.field private mYMax:F

.field private mYMin:F

.field private matrix:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field private scaleMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gp/tiltmazes/MazeView;->DEBUG:Z

    .line 77
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 78
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 79
    invoke-virtual {p0}, Lcom/gp/tiltmazes/MazeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 80
    invoke-virtual {p0}, Lcom/gp/tiltmazes/MazeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 81
    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/gp/tiltmazes/MazeView;->goalGradient:Landroid/graphics/RadialGradient;

    .line 82
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/gp/tiltmazes/MazeView;->matrix:Landroid/graphics/Matrix;

    .line 83
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/gp/tiltmazes/MazeView;->scaleMatrix:Landroid/graphics/Matrix;

    .line 86
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/gp/tiltmazes/MazeView;->mT1:J

    .line 87
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/gp/tiltmazes/MazeView;->mT2:J

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/tiltmazes/MazeView;->mDrawStep:I

    .line 89
    const/16 v0, 0x14

    iput v0, p0, Lcom/gp/tiltmazes/MazeView;->mDrawTimeHistorySize:I

    .line 90
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mDrawTimeHistorySize:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mDrawTimeHistory:[J

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/gp/tiltmazes/MazeView;->getWidth()I

    move-result v8

    .line 102
    .local v8, "w":I
    invoke-virtual {p0}, Lcom/gp/tiltmazes/MazeView;->getHeight()I

    move-result v7

    .line 103
    .local v7, "h":I
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/gp/tiltmazes/MazeView;->mWidth:I

    .line 104
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    .line 105
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    .line 106
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMax:F

    .line 107
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMax:F

    iput v0, p0, Lcom/gp/tiltmazes/MazeView;->mYMax:F

    .line 109
    iget-boolean v0, p0, Lcom/gp/tiltmazes/MazeView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 111
    new-instance v1, Lcom/gp/tiltmazes/MazeView$1;

    invoke-direct {v1, p0}, Lcom/gp/tiltmazes/MazeView$1;-><init>(Lcom/gp/tiltmazes/MazeView;)V

    .line 116
    .local v1, "redrawTask":Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mTimer:Ljava/util/Timer;

    .line 117
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x28

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 119
    .end local v1    # "redrawTask":Ljava/util/TimerTask;
    :cond_0
    return-void
.end method

.method private drawBall(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v4, 0x3f0ccccd    # 0.55f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 267
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mBall:Lcom/gp/tiltmazes/Ball;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/Ball;->getX()F

    move-result v0

    iput v0, p0, Lcom/gp/tiltmazes/MazeView;->mBallX:F

    .line 268
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mBall:Lcom/gp/tiltmazes/Ball;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/Ball;->getY()F

    move-result v0

    iput v0, p0, Lcom/gp/tiltmazes/MazeView;->mBallY:F

    .line 270
    iget-object v7, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    .line 271
    iget v1, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mBallX:F

    add-float/2addr v2, v4

    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 272
    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mBallY:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 273
    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v3, v4

    .line 274
    invoke-virtual {p0}, Lcom/gp/tiltmazes/MazeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 275
    invoke-virtual {p0}, Lcom/gp/tiltmazes/MazeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 276
    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 270
    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 279
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 281
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    iget v1, p0, Lcom/gp/tiltmazes/MazeView;->mBallX:F

    add-float/2addr v1, v8

    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 282
    iget v1, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mBallY:F

    add-float/2addr v2, v8

    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 283
    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    .line 284
    iget-object v3, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    .line 280
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 286
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 287
    return-void
.end method

.method private drawGoals(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40800000    # 4.0f

    .line 239
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/gp/tiltmazes/MazeView;->goalGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 240
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->scaleMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 243
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/GameEngine;->getMap()Lcom/gp/tiltmazes/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/tiltmazes/Map;->getGoals()[[I

    move-result-object v0

    iput-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mGoals:[[I

    .line 245
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_0
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mMapHeight:I

    if-lt v7, v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 264
    return-void

    .line 246
    :cond_0
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_1
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mMapWidth:I

    if-lt v6, v0, :cond_1

    .line 245
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mGoals:[[I

    aget-object v0, v0, v7

    aget v0, v0, v6

    if-lez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->matrix:Landroid/graphics/Matrix;

    .line 249
    iget v1, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    int-to-float v2, v6

    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 250
    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    int-to-float v3, v7

    iget v4, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 248
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 251
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/gp/tiltmazes/MazeView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/gp/tiltmazes/MazeView;->scaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 252
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->goalGradient:Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/gp/tiltmazes/MazeView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 254
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    int-to-float v1, v6

    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    div-float/2addr v1, v8

    add-float/2addr v1, v0

    .line 255
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    int-to-float v2, v7

    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    div-float/2addr v2, v8

    add-float/2addr v2, v0

    .line 256
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    add-int/lit8 v3, v6, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    div-float/2addr v3, v8

    sub-float v3, v0, v3

    .line 257
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    add-int/lit8 v4, v7, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    iget v4, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    div-float/2addr v4, v8

    sub-float v4, v0, v4

    .line 258
    iget-object v5, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 253
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 246
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private drawWalls(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/gp/tiltmazes/MazeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 194
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 196
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/GameEngine;->getMap()Lcom/gp/tiltmazes/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/tiltmazes/Map;->getWalls()[[I

    move-result-object v0

    iput-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mWalls:[[I

    .line 198
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_0
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mMapHeight:I

    if-lt v7, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 236
    return-void

    .line 199
    :cond_0
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_1
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mMapWidth:I

    if-lt v6, v0, :cond_1

    .line 198
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mWalls:[[I

    aget-object v0, v0, v7

    aget v0, v0, v6

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_2

    .line 202
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    int-to-float v1, v6

    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 203
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    int-to-float v2, v7

    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 204
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    add-int/lit8 v3, v6, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 205
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    int-to-float v4, v7

    iget v5, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    .line 206
    iget-object v5, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 201
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mWalls:[[I

    aget-object v0, v0, v7

    aget v0, v0, v6

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_3

    .line 210
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    add-int/lit8 v1, v6, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 211
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    int-to-float v2, v7

    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 212
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    add-int/lit8 v3, v6, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 213
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    add-int/lit8 v4, v7, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    .line 214
    iget-object v5, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 209
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mWalls:[[I

    aget-object v0, v0, v7

    aget v0, v0, v6

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_4

    .line 218
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    int-to-float v1, v6

    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 219
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    add-int/lit8 v2, v7, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 220
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    add-int/lit8 v3, v6, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 221
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    add-int/lit8 v4, v7, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    .line 222
    iget-object v5, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 217
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView;->mWalls:[[I

    aget-object v0, v0, v7

    aget v0, v0, v6

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_5

    .line 226
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    int-to-float v1, v6

    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 227
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    int-to-float v2, v7

    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 228
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    int-to-float v3, v6

    iget v4, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    .line 229
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    add-int/lit8 v4, v7, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    .line 230
    iget-object v5, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 225
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public calculateUnit()V
    .locals 4

    .prologue
    .line 170
    iget-object v2, p0, Lcom/gp/tiltmazes/MazeView;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    if-nez v2, :cond_0

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mXMax:F

    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mXMin:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/gp/tiltmazes/MazeView;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v3}, Lcom/gp/tiltmazes/GameEngine;->getMap()Lcom/gp/tiltmazes/Map;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gp/tiltmazes/Map;->getSizeX()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 174
    .local v0, "xUnit":F
    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mYMax:F

    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mYMin:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/gp/tiltmazes/MazeView;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v3}, Lcom/gp/tiltmazes/GameEngine;->getMap()Lcom/gp/tiltmazes/Map;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gp/tiltmazes/Map;->getSizeY()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 175
    .local v1, "yUnit":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/gp/tiltmazes/MazeView;->mUnit:F

    goto :goto_0
.end method

.method public getFPS()D
    .locals 10

    .prologue
    .line 179
    const-wide/16 v0, 0x0

    .line 180
    .local v0, "avg":D
    const/4 v2, 0x0

    .line 181
    .local v2, "n":I
    iget-object v5, p0, Lcom/gp/tiltmazes/MazeView;->mDrawTimeHistory:[J

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v6, :cond_0

    .line 187
    if-nez v2, :cond_2

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 188
    :goto_1
    return-wide v5

    .line 181
    :cond_0
    aget-wide v3, v5, v7

    .line 182
    .local v3, "t":J
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-lez v8, :cond_1

    .line 183
    long-to-double v8, v3

    add-double/2addr v0, v8

    .line 184
    add-int/lit8 v2, v2, 0x1

    .line 181
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 188
    .end local v3    # "t":J
    :cond_2
    mul-int/lit16 v5, v2, 0x3e8

    int-to-double v5, v5

    div-double/2addr v5, v0

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gp/tiltmazes/MazeView;->mT2:J

    .line 143
    iget-wide v2, p0, Lcom/gp/tiltmazes/MazeView;->mT2:J

    iget-wide v4, p0, Lcom/gp/tiltmazes/MazeView;->mT1:J

    sub-long v0, v2, v4

    .line 144
    .local v0, "dt":J
    iget-wide v2, p0, Lcom/gp/tiltmazes/MazeView;->mT2:J

    iput-wide v2, p0, Lcom/gp/tiltmazes/MazeView;->mT1:J

    .line 145
    iget-object v2, p0, Lcom/gp/tiltmazes/MazeView;->mDrawTimeHistory:[J

    iget v3, p0, Lcom/gp/tiltmazes/MazeView;->mDrawStep:I

    iget v4, p0, Lcom/gp/tiltmazes/MazeView;->mDrawTimeHistorySize:I

    rem-int/2addr v3, v4

    aput-wide v0, v2, v3

    .line 146
    iget v2, p0, Lcom/gp/tiltmazes/MazeView;->mDrawStep:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/gp/tiltmazes/MazeView;->mDrawStep:I

    .line 148
    iget-object v2, p0, Lcom/gp/tiltmazes/MazeView;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v2}, Lcom/gp/tiltmazes/GameEngine;->getBall()Lcom/gp/tiltmazes/Ball;

    move-result-object v2

    iput-object v2, p0, Lcom/gp/tiltmazes/MazeView;->mBall:Lcom/gp/tiltmazes/Ball;

    .line 149
    iget-object v2, p0, Lcom/gp/tiltmazes/MazeView;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v2}, Lcom/gp/tiltmazes/GameEngine;->getMap()Lcom/gp/tiltmazes/Map;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gp/tiltmazes/Map;->getSizeX()I

    move-result v2

    iput v2, p0, Lcom/gp/tiltmazes/MazeView;->mMapWidth:I

    .line 150
    iget-object v2, p0, Lcom/gp/tiltmazes/MazeView;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    invoke-virtual {v2}, Lcom/gp/tiltmazes/GameEngine;->getMap()Lcom/gp/tiltmazes/Map;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gp/tiltmazes/Map;->getSizeY()I

    move-result v2

    iput v2, p0, Lcom/gp/tiltmazes/MazeView;->mMapHeight:I

    .line 152
    invoke-direct {p0, p1}, Lcom/gp/tiltmazes/MazeView;->drawWalls(Landroid/graphics/Canvas;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/gp/tiltmazes/MazeView;->drawGoals(Landroid/graphics/Canvas;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/gp/tiltmazes/MazeView;->drawBall(Landroid/graphics/Canvas;)V

    .line 156
    iget-boolean v2, p0, Lcom/gp/tiltmazes/MazeView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v2, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    iget-object v2, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FPS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gp/tiltmazes/MazeView;->getFPS()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x41f00000    # 30.0f

    iget-object v5, p0, Lcom/gp/tiltmazes/MazeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 163
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 135
    invoke-virtual {p0}, Lcom/gp/tiltmazes/MazeView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/gp/tiltmazes/MazeView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/gp/tiltmazes/MazeView;->mWidth:I

    .line 136
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mWidth:I

    iget v1, p0, Lcom/gp/tiltmazes/MazeView;->mWidth:I

    invoke-virtual {p0, v0, v1}, Lcom/gp/tiltmazes/MazeView;->setMeasuredDimension(II)V

    .line 137
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 125
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/gp/tiltmazes/MazeView;->mWidth:I

    .line 126
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMax:F

    .line 127
    iget v0, p0, Lcom/gp/tiltmazes/MazeView;->mXMax:F

    iput v0, p0, Lcom/gp/tiltmazes/MazeView;->mYMax:F

    .line 129
    invoke-virtual {p0}, Lcom/gp/tiltmazes/MazeView;->calculateUnit()V

    .line 130
    return-void
.end method

.method public setGameEngine(Lcom/gp/tiltmazes/GameEngine;)V
    .locals 0
    .param p1, "e"    # Lcom/gp/tiltmazes/GameEngine;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/gp/tiltmazes/MazeView;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;

    .line 167
    return-void
.end method
