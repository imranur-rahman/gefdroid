.class public Lcom/gp/tiltmazes/Ball;
.super Ljava/lang/Object;
.source "Ball.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$gp$tiltmazes$Direction:[I = null

.field private static final DT_TARGET:I = 0x28

.field private static SPEED_MULTIPLIER:F


# instance fields
.field private mEngine:Lcom/gp/tiltmazes/GameEngine;

.field private mIsRolling:Z

.field private mMap:Lcom/gp/tiltmazes/Map;

.field private mMazeView:Lcom/gp/tiltmazes/MazeView;

.field private mRollDirection:Lcom/gp/tiltmazes/Direction;

.field private mT1:J

.field private mT2:J

.field private mTimer:Ljava/util/Timer;

.field private mVX:I

.field private mVY:I

.field private mX:F

.field private mXTarget:I

.field private mY:F

.field private mYTarget:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$gp$tiltmazes$Direction()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/gp/tiltmazes/Ball;->$SWITCH_TABLE$com$gp$tiltmazes$Direction:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gp/tiltmazes/Direction;->values()[Lcom/gp/tiltmazes/Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gp/tiltmazes/Direction;->DOWN:Lcom/gp/tiltmazes/Direction;

    invoke-virtual {v1}, Lcom/gp/tiltmazes/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gp/tiltmazes/Direction;->LEFT:Lcom/gp/tiltmazes/Direction;

    invoke-virtual {v1}, Lcom/gp/tiltmazes/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gp/tiltmazes/Direction;->NONE:Lcom/gp/tiltmazes/Direction;

    invoke-virtual {v1}, Lcom/gp/tiltmazes/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gp/tiltmazes/Direction;->RIGHT:Lcom/gp/tiltmazes/Direction;

    invoke-virtual {v1}, Lcom/gp/tiltmazes/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gp/tiltmazes/Direction;->UP:Lcom/gp/tiltmazes/Direction;

    invoke-virtual {v1}, Lcom/gp/tiltmazes/Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/gp/tiltmazes/Ball;->$SWITCH_TABLE$com$gp$tiltmazes$Direction:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const v0, 0x3ba3d70a    # 0.005f

    sput v0, Lcom/gp/tiltmazes/Ball;->SPEED_MULTIPLIER:F

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/gp/tiltmazes/GameEngine;Lcom/gp/tiltmazes/Map;II)V
    .locals 2
    .param p1, "engine"    # Lcom/gp/tiltmazes/GameEngine;
    .param p2, "map"    # Lcom/gp/tiltmazes/Map;
    .param p3, "init_x"    # I
    .param p4, "init_y"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v1, p0, Lcom/gp/tiltmazes/Ball;->mX:F

    .line 46
    iput v1, p0, Lcom/gp/tiltmazes/Ball;->mY:F

    .line 53
    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mVX:I

    .line 54
    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mVY:I

    .line 67
    iput-boolean v0, p0, Lcom/gp/tiltmazes/Ball;->mIsRolling:Z

    .line 68
    sget-object v0, Lcom/gp/tiltmazes/Direction;->NONE:Lcom/gp/tiltmazes/Direction;

    iput-object v0, p0, Lcom/gp/tiltmazes/Ball;->mRollDirection:Lcom/gp/tiltmazes/Direction;

    .line 71
    iput-object p1, p0, Lcom/gp/tiltmazes/Ball;->mEngine:Lcom/gp/tiltmazes/GameEngine;

    .line 72
    iput-object p2, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    .line 73
    int-to-float v0, p3

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mX:F

    .line 74
    int-to-float v0, p4

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mY:F

    .line 75
    iput p3, p0, Lcom/gp/tiltmazes/Ball;->mXTarget:I

    .line 76
    iput p4, p0, Lcom/gp/tiltmazes/Ball;->mYTarget:I

    .line 77
    return-void
.end method

.method static synthetic access$1(Lcom/gp/tiltmazes/Ball;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/gp/tiltmazes/Ball;->doStep()V

    return-void
.end method

.method private doStep()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/gp/tiltmazes/Ball;->mT2:J

    .line 179
    iget-wide v4, p0, Lcom/gp/tiltmazes/Ball;->mT2:J

    iget-wide v6, p0, Lcom/gp/tiltmazes/Ball;->mT1:J

    sub-long/2addr v4, v6

    long-to-float v0, v4

    .line 180
    .local v0, "dt":F
    iget-wide v4, p0, Lcom/gp/tiltmazes/Ball;->mT2:J

    iput-wide v4, p0, Lcom/gp/tiltmazes/Ball;->mT1:J

    .line 183
    iget v4, p0, Lcom/gp/tiltmazes/Ball;->mX:F

    iget v5, p0, Lcom/gp/tiltmazes/Ball;->mVX:I

    int-to-float v5, v5

    sget v6, Lcom/gp/tiltmazes/Ball;->SPEED_MULTIPLIER:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float v2, v4, v5

    .line 184
    .local v2, "xNext":F
    iget v4, p0, Lcom/gp/tiltmazes/Ball;->mY:F

    iget v5, p0, Lcom/gp/tiltmazes/Ball;->mVY:I

    int-to-float v5, v5

    sget v6, Lcom/gp/tiltmazes/Ball;->SPEED_MULTIPLIER:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float v3, v4, v5

    .line 187
    .local v3, "yNext":F
    const/4 v1, 0x0

    .line 188
    .local v1, "reachedTarget":Z
    invoke-static {}, Lcom/gp/tiltmazes/Ball;->$SWITCH_TABLE$com$gp$tiltmazes$Direction()[I

    move-result-object v4

    iget-object v5, p0, Lcom/gp/tiltmazes/Ball;->mRollDirection:Lcom/gp/tiltmazes/Direction;

    invoke-virtual {v5}, Lcom/gp/tiltmazes/Direction;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    iput v2, p0, Lcom/gp/tiltmazes/Ball;->mX:F

    .line 216
    iput v3, p0, Lcom/gp/tiltmazes/Ball;->mY:F

    .line 219
    iget-object v4, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    iget v5, p0, Lcom/gp/tiltmazes/Ball;->mX:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lcom/gp/tiltmazes/Ball;->mY:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/gp/tiltmazes/Map;->getGoal(II)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 222
    iget-object v4, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    iget v5, p0, Lcom/gp/tiltmazes/Ball;->mX:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lcom/gp/tiltmazes/Ball;->mY:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/gp/tiltmazes/Map;->removeGoal(II)V

    .line 223
    iget-object v4, p0, Lcom/gp/tiltmazes/Ball;->mEngine:Lcom/gp/tiltmazes/GameEngine;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/gp/tiltmazes/GameEngine;->sendEmptyMessage(I)V

    .line 227
    :cond_1
    if-eqz v1, :cond_2

    .line 228
    sget-object v4, Lcom/gp/tiltmazes/Direction;->NONE:Lcom/gp/tiltmazes/Direction;

    iput-object v4, p0, Lcom/gp/tiltmazes/Ball;->mRollDirection:Lcom/gp/tiltmazes/Direction;

    .line 229
    iput v9, p0, Lcom/gp/tiltmazes/Ball;->mVX:I

    .line 230
    iput v9, p0, Lcom/gp/tiltmazes/Ball;->mVY:I

    .line 231
    iput-boolean v9, p0, Lcom/gp/tiltmazes/Ball;->mIsRolling:Z

    .line 232
    iget-object v4, p0, Lcom/gp/tiltmazes/Ball;->mTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 235
    iget-object v4, p0, Lcom/gp/tiltmazes/Ball;->mEngine:Lcom/gp/tiltmazes/GameEngine;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/gp/tiltmazes/GameEngine;->sendEmptyMessage(I)V

    .line 240
    :cond_2
    iget-object v4, p0, Lcom/gp/tiltmazes/Ball;->mMazeView:Lcom/gp/tiltmazes/MazeView;

    invoke-virtual {v4}, Lcom/gp/tiltmazes/MazeView;->postInvalidate()V

    .line 241
    return-void

    .line 190
    :pswitch_0
    iget v4, p0, Lcom/gp/tiltmazes/Ball;->mXTarget:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_0

    .line 191
    iget v4, p0, Lcom/gp/tiltmazes/Ball;->mXTarget:I

    int-to-float v2, v4

    .line 192
    const/4 v1, 0x1

    .line 194
    goto :goto_0

    .line 196
    :pswitch_1
    iget v4, p0, Lcom/gp/tiltmazes/Ball;->mXTarget:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    .line 197
    iget v4, p0, Lcom/gp/tiltmazes/Ball;->mXTarget:I

    int-to-float v2, v4

    .line 198
    const/4 v1, 0x1

    .line 200
    goto :goto_0

    .line 202
    :pswitch_2
    iget v4, p0, Lcom/gp/tiltmazes/Ball;->mYTarget:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    .line 203
    iget v4, p0, Lcom/gp/tiltmazes/Ball;->mYTarget:I

    int-to-float v3, v4

    .line 204
    const/4 v1, 0x1

    .line 206
    goto :goto_0

    .line 208
    :pswitch_3
    iget v4, p0, Lcom/gp/tiltmazes/Ball;->mYTarget:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    .line 209
    iget v4, p0, Lcom/gp/tiltmazes/Ball;->mYTarget:I

    int-to-float v3, v4

    .line 210
    const/4 v1, 0x1

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isValidMove(IILcom/gp/tiltmazes/Direction;)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dir"    # Lcom/gp/tiltmazes/Direction;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-static {}, Lcom/gp/tiltmazes/Ball;->$SWITCH_TABLE$com$gp$tiltmazes$Direction()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/gp/tiltmazes/Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v0, v3

    .line 123
    :goto_0
    return v0

    .line 95
    :pswitch_0
    if-gtz p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v0, p1, p2}, Lcom/gp/tiltmazes/Map;->getWalls(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-gtz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    sub-int v1, p1, v3

    invoke-virtual {v0, v1, p2}, Lcom/gp/tiltmazes/Map;->getWalls(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    :cond_2
    move v0, v2

    .line 98
    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/Map;->getSizeX()I

    move-result v0

    sub-int/2addr v0, v3

    if-lt p1, v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v0, p1, p2}, Lcom/gp/tiltmazes/Map;->getWalls(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-gtz v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/gp/tiltmazes/Map;->getWalls(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    :cond_4
    move v0, v2

    .line 105
    goto :goto_0

    .line 109
    :pswitch_2
    if-gtz p2, :cond_5

    move v0, v2

    goto :goto_0

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v0, p1, p2}, Lcom/gp/tiltmazes/Map;->getWalls(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-gtz v0, :cond_6

    .line 111
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    sub-int v1, p2, v3

    invoke-virtual {v0, p1, v1}, Lcom/gp/tiltmazes/Map;->getWalls(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    :cond_6
    move v0, v2

    .line 112
    goto :goto_0

    .line 116
    :pswitch_3
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/Map;->getSizeY()I

    move-result v0

    sub-int/2addr v0, v3

    if-lt p2, v0, :cond_7

    move v0, v2

    goto :goto_0

    .line 117
    :cond_7
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v0, p1, p2}, Lcom/gp/tiltmazes/Map;->getWalls(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-gtz v0, :cond_8

    .line 118
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/gp/tiltmazes/Map;->getWalls(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    :cond_8
    move v0, v2

    .line 119
    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getRollDirection()Lcom/gp/tiltmazes/Direction;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mRollDirection:Lcom/gp/tiltmazes/Direction;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/gp/tiltmazes/Ball;->mX:F

    return v0
.end method

.method public getXTarget()F
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/gp/tiltmazes/Ball;->mXTarget:I

    int-to-float v0, v0

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/gp/tiltmazes/Ball;->mY:F

    return v0
.end method

.method public getYTarget()F
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/gp/tiltmazes/Ball;->mYTarget:I

    int-to-float v0, v0

    return v0
.end method

.method public isRolling()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/gp/tiltmazes/Ball;->mIsRolling:Z

    return v0
.end method

.method public declared-synchronized roll(Lcom/gp/tiltmazes/Direction;)Z
    .locals 7
    .param p1, "dir"    # Lcom/gp/tiltmazes/Direction;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 128
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/gp/tiltmazes/Ball;->mIsRolling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v0, v3

    .line 163
    :goto_0
    monitor-exit p0

    return v0

    .line 131
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/gp/tiltmazes/Ball;->$SWITCH_TABLE$com$gp$tiltmazes$Direction()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/gp/tiltmazes/Direction;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_1
    iget v0, p0, Lcom/gp/tiltmazes/Ball;->mX:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mXTarget:I

    .line 140
    iget v0, p0, Lcom/gp/tiltmazes/Ball;->mY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mYTarget:I

    .line 141
    :goto_2
    iget v0, p0, Lcom/gp/tiltmazes/Ball;->mXTarget:I

    iget v2, p0, Lcom/gp/tiltmazes/Ball;->mYTarget:I

    invoke-direct {p0, v0, v2, p1}, Lcom/gp/tiltmazes/Ball;->isValidMove(IILcom/gp/tiltmazes/Direction;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    iget v0, p0, Lcom/gp/tiltmazes/Ball;->mXTarget:I

    int-to-float v0, v0

    iget v2, p0, Lcom/gp/tiltmazes/Ball;->mX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/gp/tiltmazes/Ball;->mYTarget:I

    int-to-float v0, v0

    iget v2, p0, Lcom/gp/tiltmazes/Ball;->mY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    .line 132
    :pswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mVX:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mVY:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 133
    :pswitch_1
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mVX:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mVY:I

    goto :goto_1

    .line 134
    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mVX:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mVY:I

    goto :goto_1

    .line 135
    :pswitch_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mVX:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mVY:I

    goto :goto_1

    .line 142
    :cond_1
    iget v0, p0, Lcom/gp/tiltmazes/Ball;->mXTarget:I

    iget v2, p0, Lcom/gp/tiltmazes/Ball;->mVX:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mXTarget:I

    .line 143
    iget v0, p0, Lcom/gp/tiltmazes/Ball;->mYTarget:I

    iget v2, p0, Lcom/gp/tiltmazes/Ball;->mVY:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mYTarget:I

    goto :goto_2

    .line 150
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gp/tiltmazes/Ball;->mIsRolling:Z

    .line 151
    iput-object p1, p0, Lcom/gp/tiltmazes/Ball;->mRollDirection:Lcom/gp/tiltmazes/Direction;

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gp/tiltmazes/Ball;->mT1:J

    .line 155
    new-instance v1, Lcom/gp/tiltmazes/Ball$1;

    invoke-direct {v1, p0}, Lcom/gp/tiltmazes/Ball$1;-><init>(Lcom/gp/tiltmazes/Ball;)V

    .line 160
    .local v1, "simTask":Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/gp/tiltmazes/Ball;->mTimer:Ljava/util/Timer;

    .line 161
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x28

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v6

    .line 163
    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMap(Lcom/gp/tiltmazes/Map;)V
    .locals 0
    .param p1, "map"    # Lcom/gp/tiltmazes/Map;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/gp/tiltmazes/Ball;->mMap:Lcom/gp/tiltmazes/Map;

    .line 85
    return-void
.end method

.method public setMazeView(Lcom/gp/tiltmazes/MazeView;)V
    .locals 0
    .param p1, "mazeView"    # Lcom/gp/tiltmazes/MazeView;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/gp/tiltmazes/Ball;->mMazeView:Lcom/gp/tiltmazes/MazeView;

    .line 81
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 256
    iput p1, p0, Lcom/gp/tiltmazes/Ball;->mX:F

    .line 257
    return-void
.end method

.method public setXTarget(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/gp/tiltmazes/Ball;->mXTarget:I

    .line 265
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 260
    iput p1, p0, Lcom/gp/tiltmazes/Ball;->mY:F

    .line 261
    return-void
.end method

.method public setYTarget(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 268
    iput p1, p0, Lcom/gp/tiltmazes/Ball;->mYTarget:I

    .line 269
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/gp/tiltmazes/Ball;->mIsRolling:Z

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gp/tiltmazes/Ball;->mIsRolling:Z

    .line 171
    iget v0, p0, Lcom/gp/tiltmazes/Ball;->mXTarget:I

    int-to-float v0, v0

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mX:F

    .line 172
    iget v0, p0, Lcom/gp/tiltmazes/Ball;->mYTarget:I

    int-to-float v0, v0

    iput v0, p0, Lcom/gp/tiltmazes/Ball;->mY:F

    .line 173
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball;->mMazeView:Lcom/gp/tiltmazes/MazeView;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MazeView;->postInvalidate()V

    goto :goto_0
.end method
