.class public Lcom/gp/tiltmazes/GameEngine;
.super Ljava/lang/Object;
.source "GameEngine.java"


# static fields
.field private static ACCEL_THRESHOLD:F


# instance fields
.field private mAccelX:F

.field private mAccelY:F

.field private mAccelZ:F

.field private final mAllMazesSolvedDialog:Landroid/app/AlertDialog;

.field private mBall:Lcom/gp/tiltmazes/Ball;

.field private mCommandedRollDirection:Lcom/gp/tiltmazes/Direction;

.field private mCurrentMap:I

.field private mDB:Lcom/gp/tiltmazes/TiltMazesDBAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mMap:Lcom/gp/tiltmazes/Map;

.field private mMapToLoad:I

.field private mMazeNameLabel:Landroid/widget/TextView;

.field private final mMazeSolvedDialog:Landroid/app/AlertDialog;

.field private mMazeView:Lcom/gp/tiltmazes/MazeView;

.field private mRemainingGoalsLabel:Landroid/widget/TextView;

.field private final mSensorAccelerometer:Landroid/hardware/SensorListener;

.field private mSensorEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStepCount:I

.field private mStepsView:Landroid/widget/TextView;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/gp/tiltmazes/GameEngine;->ACCEL_THRESHOLD:F

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    const-string v5, "Congratulations!"

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/gp/tiltmazes/GameEngine;->mAccelX:F

    .line 53
    iput v0, p0, Lcom/gp/tiltmazes/GameEngine;->mAccelY:F

    .line 55
    iput v0, p0, Lcom/gp/tiltmazes/GameEngine;->mAccelZ:F

    .line 61
    iput v1, p0, Lcom/gp/tiltmazes/GameEngine;->mCurrentMap:I

    .line 62
    iput v1, p0, Lcom/gp/tiltmazes/GameEngine;->mMapToLoad:I

    .line 63
    iput v1, p0, Lcom/gp/tiltmazes/GameEngine;->mStepCount:I

    .line 65
    sget-object v0, Lcom/gp/tiltmazes/Direction;->NONE:Lcom/gp/tiltmazes/Direction;

    iput-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mCommandedRollDirection:Lcom/gp/tiltmazes/Direction;

    .line 75
    iput-boolean v4, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorEnabled:Z

    .line 79
    new-instance v0, Lcom/gp/tiltmazes/GameEngine$1;

    invoke-direct {v0, p0}, Lcom/gp/tiltmazes/GameEngine$1;-><init>(Lcom/gp/tiltmazes/GameEngine;)V

    iput-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorAccelerometer:Landroid/hardware/SensorListener;

    .line 112
    new-instance v0, Lcom/gp/tiltmazes/TiltMazesDBAdapter;

    invoke-direct {v0, p1}, Lcom/gp/tiltmazes/TiltMazesDBAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->open()Lcom/gp/tiltmazes/TiltMazesDBAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mDB:Lcom/gp/tiltmazes/TiltMazesDBAdapter;

    .line 113
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mDB:Lcom/gp/tiltmazes/TiltMazesDBAdapter;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->getFirstUnsolved()I

    move-result v0

    iput v0, p0, Lcom/gp/tiltmazes/GameEngine;->mCurrentMap:I

    .line 116
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mVibrator:Landroid/os/Vibrator;

    .line 119
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorManager:Landroid/hardware/SensorManager;

    .line 120
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorAccelerometer:Landroid/hardware/SensorListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    .line 123
    new-instance v1, Lcom/gp/tiltmazes/Map;

    sget-object v0, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    iget v2, p0, Lcom/gp/tiltmazes/GameEngine;->mCurrentMap:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gp/tiltmazes/MapDesign;

    invoke-direct {v1, v0}, Lcom/gp/tiltmazes/Map;-><init>(Lcom/gp/tiltmazes/MapDesign;)V

    iput-object v1, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    .line 126
    new-instance v0, Lcom/gp/tiltmazes/Ball;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    .line 127
    iget-object v2, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v2}, Lcom/gp/tiltmazes/Map;->getInitialPositionX()I

    move-result v2

    .line 128
    iget-object v3, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v3}, Lcom/gp/tiltmazes/Map;->getInitialPositionY()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/gp/tiltmazes/Ball;-><init>(Lcom/gp/tiltmazes/GameEngine;Lcom/gp/tiltmazes/Map;II)V

    .line 126
    iput-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    .line 131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 133
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 134
    const-string v1, "Congratulations!"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 135
    const-string v1, "Go to next maze!"

    new-instance v2, Lcom/gp/tiltmazes/GameEngine$2;

    invoke-direct {v2, p0}, Lcom/gp/tiltmazes/GameEngine$2;-><init>(Lcom/gp/tiltmazes/GameEngine;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mMazeSolvedDialog:Landroid/app/AlertDialog;

    .line 144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 146
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    const-string v1, "Congratulations!"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    const-string v1, "OK!"

    new-instance v2, Lcom/gp/tiltmazes/GameEngine$3;

    invoke-direct {v2, p0}, Lcom/gp/tiltmazes/GameEngine$3;-><init>(Lcom/gp/tiltmazes/GameEngine;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 144
    iput-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mAllMazesSolvedDialog:Landroid/app/AlertDialog;

    .line 157
    new-instance v0, Lcom/gp/tiltmazes/GameEngine$4;

    invoke-direct {v0, p0}, Lcom/gp/tiltmazes/GameEngine$4;-><init>(Lcom/gp/tiltmazes/GameEngine;)V

    iput-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mHandler:Landroid/os/Handler;

    .line 222
    return-void
.end method

.method static synthetic access$0(Lcom/gp/tiltmazes/GameEngine;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/gp/tiltmazes/GameEngine;F)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/gp/tiltmazes/GameEngine;->mAccelX:F

    return-void
.end method

.method static synthetic access$10(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/MazeView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mMazeView:Lcom/gp/tiltmazes/MazeView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/gp/tiltmazes/GameEngine;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mRemainingGoalsLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/Map;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    return-object v0
.end method

.method static synthetic access$13(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/TiltMazesDBAdapter;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mDB:Lcom/gp/tiltmazes/TiltMazesDBAdapter;

    return-object v0
.end method

.method static synthetic access$14(Lcom/gp/tiltmazes/GameEngine;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/gp/tiltmazes/GameEngine;->mCurrentMap:I

    return v0
.end method

.method static synthetic access$15(Lcom/gp/tiltmazes/GameEngine;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/gp/tiltmazes/GameEngine;->mStepCount:I

    return v0
.end method

.method static synthetic access$16(Lcom/gp/tiltmazes/GameEngine;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mAllMazesSolvedDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$17(Lcom/gp/tiltmazes/GameEngine;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mMazeSolvedDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$18(Lcom/gp/tiltmazes/GameEngine;I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/gp/tiltmazes/GameEngine;->mMapToLoad:I

    return-void
.end method

.method static synthetic access$19(Lcom/gp/tiltmazes/GameEngine;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/gp/tiltmazes/GameEngine;->mMapToLoad:I

    return v0
.end method

.method static synthetic access$2(Lcom/gp/tiltmazes/GameEngine;F)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/gp/tiltmazes/GameEngine;->mAccelY:F

    return-void
.end method

.method static synthetic access$3(Lcom/gp/tiltmazes/GameEngine;F)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/gp/tiltmazes/GameEngine;->mAccelZ:F

    return-void
.end method

.method static synthetic access$4(Lcom/gp/tiltmazes/GameEngine;Lcom/gp/tiltmazes/Direction;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/gp/tiltmazes/GameEngine;->mCommandedRollDirection:Lcom/gp/tiltmazes/Direction;

    return-void
.end method

.method static synthetic access$5(Lcom/gp/tiltmazes/GameEngine;)F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/gp/tiltmazes/GameEngine;->mAccelX:F

    return v0
.end method

.method static synthetic access$6(Lcom/gp/tiltmazes/GameEngine;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/gp/tiltmazes/GameEngine;->mAccelY:F

    return v0
.end method

.method static synthetic access$7()F
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/gp/tiltmazes/GameEngine;->ACCEL_THRESHOLD:F

    return v0
.end method

.method static synthetic access$8(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/Direction;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mCommandedRollDirection:Lcom/gp/tiltmazes/Direction;

    return-object v0
.end method

.method static synthetic access$9(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/Ball;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    return-object v0
.end method


# virtual methods
.method public getBall()Lcom/gp/tiltmazes/Ball;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    return-object v0
.end method

.method public getMap()Lcom/gp/tiltmazes/Map;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    return-object v0
.end method

.method public isSensorEnabled()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorEnabled:Z

    return v0
.end method

.method public loadMap(I)V
    .locals 3
    .param p1, "mapID"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/gp/tiltmazes/GameEngine;->mCurrentMap:I

    .line 226
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/Ball;->stop()V

    .line 227
    new-instance v1, Lcom/gp/tiltmazes/Map;

    sget-object v0, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    iget v2, p0, Lcom/gp/tiltmazes/GameEngine;->mCurrentMap:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gp/tiltmazes/MapDesign;

    invoke-direct {v1, v0}, Lcom/gp/tiltmazes/Map;-><init>(Lcom/gp/tiltmazes/MapDesign;)V

    iput-object v1, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    .line 228
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/Ball;->setMap(Lcom/gp/tiltmazes/Map;)V

    .line 229
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v1}, Lcom/gp/tiltmazes/Map;->getInitialPositionX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/Ball;->setX(F)V

    .line 230
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v1}, Lcom/gp/tiltmazes/Map;->getInitialPositionY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/Ball;->setY(F)V

    .line 231
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v1}, Lcom/gp/tiltmazes/Map;->getInitialPositionX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/Ball;->setXTarget(I)V

    .line 232
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v1}, Lcom/gp/tiltmazes/Map;->getInitialPositionY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/Ball;->setYTarget(I)V

    .line 233
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/Map;->init()V

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/gp/tiltmazes/GameEngine;->mStepCount:I

    .line 237
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mMazeNameLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v1}, Lcom/gp/tiltmazes/Map;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mMazeNameLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 240
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mRemainingGoalsLabel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v2}, Lcom/gp/tiltmazes/Map;->getGoalCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mRemainingGoalsLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 243
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mStepsView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gp/tiltmazes/GameEngine;->mStepCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mStepsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 246
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mMazeView:Lcom/gp/tiltmazes/MazeView;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MazeView;->calculateUnit()V

    .line 247
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mMazeView:Lcom/gp/tiltmazes/MazeView;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MazeView;->invalidate()V

    .line 248
    return-void
.end method

.method public registerListener()V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorAccelerometer:Landroid/hardware/SensorListener;

    const/4 v2, 0x2

    .line 277
    const/4 v3, 0x1

    .line 276
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    .line 278
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;Z)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "sensorEnabled"    # Z

    .prologue
    const/4 v7, -0x1

    .line 331
    if-eqz p1, :cond_2

    .line 332
    const-string v6, "map.id"

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 333
    .local v1, "mapID":I
    if-ne v1, v7, :cond_1

    .line 360
    .end local v1    # "mapID":I
    :cond_0
    :goto_0
    return-void

    .line 334
    .restart local v1    # "mapID":I
    :cond_1
    invoke-virtual {p0, v1}, Lcom/gp/tiltmazes/GameEngine;->loadMap(I)V

    .line 336
    const-string v6, "map.goals"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 337
    .local v0, "goals":[I
    if-eqz v0, :cond_0

    .line 339
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v6}, Lcom/gp/tiltmazes/Map;->getSizeX()I

    move-result v2

    .line 340
    .local v2, "sizeX":I
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v6}, Lcom/gp/tiltmazes/Map;->getSizeY()I

    move-result v3

    .line 341
    .local v3, "sizeY":I
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_1
    if-lt v5, v3, :cond_3

    .line 345
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    const-string v7, "ball.x"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/gp/tiltmazes/Ball;->setX(F)V

    .line 346
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    const-string v7, "ball.y"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/gp/tiltmazes/Ball;->setY(F)V

    .line 349
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mMazeView:Lcom/gp/tiltmazes/MazeView;

    invoke-virtual {v6}, Lcom/gp/tiltmazes/MazeView;->invalidate()V

    .line 351
    const-string v6, "stepcount"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/gp/tiltmazes/GameEngine;->mStepCount:I

    .line 353
    .end local v0    # "goals":[I
    .end local v1    # "mapID":I
    .end local v2    # "sizeX":I
    .end local v3    # "sizeY":I
    .end local v5    # "y":I
    :cond_2
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mRemainingGoalsLabel:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v8}, Lcom/gp/tiltmazes/Map;->getGoalCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mRemainingGoalsLabel:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->invalidate()V

    .line 356
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mStepsView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/gp/tiltmazes/GameEngine;->mStepCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mStepsView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->invalidate()V

    .line 359
    iput-boolean p2, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorEnabled:Z

    goto :goto_0

    .line 342
    .restart local v0    # "goals":[I
    .restart local v1    # "mapID":I
    .restart local v2    # "sizeX":I
    .restart local v3    # "sizeY":I
    .restart local v5    # "y":I
    :cond_3
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_2
    if-lt v4, v2, :cond_4

    .line 341
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 343
    :cond_4
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    mul-int v7, v4, v2

    add-int/2addr v7, v5

    aget v7, v0, v7

    invoke-virtual {v6, v4, v5, v7}, Lcom/gp/tiltmazes/Map;->setGoal(III)V

    .line 342
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public rollBall(Lcom/gp/tiltmazes/Direction;)V
    .locals 3
    .param p1, "dir"    # Lcom/gp/tiltmazes/Direction;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    invoke-virtual {v0, p1}, Lcom/gp/tiltmazes/Ball;->roll(Lcom/gp/tiltmazes/Direction;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/gp/tiltmazes/GameEngine;->mStepCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gp/tiltmazes/GameEngine;->mStepCount:I

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mStepsView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gp/tiltmazes/GameEngine;->mStepCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mStepsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 288
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 311
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    invoke-virtual {v6}, Lcom/gp/tiltmazes/Ball;->stop()V

    .line 313
    const-string v6, "map.id"

    iget v7, p0, Lcom/gp/tiltmazes/GameEngine;->mCurrentMap:I

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v6}, Lcom/gp/tiltmazes/Map;->getGoals()[[I

    move-result-object v0

    .line 316
    .local v0, "goals":[[I
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v6}, Lcom/gp/tiltmazes/Map;->getSizeX()I

    move-result v2

    .line 317
    .local v2, "sizeX":I
    iget-object v6, p0, Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;

    invoke-virtual {v6}, Lcom/gp/tiltmazes/Map;->getSizeY()I

    move-result v3

    .line 318
    .local v3, "sizeY":I
    mul-int v6, v2, v3

    new-array v1, v6, [I

    .line 319
    .local v1, "goalsToSave":[I
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    if-lt v5, v3, :cond_0

    .line 322
    const-string v6, "map.goals"

    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 324
    const-string v6, "stepcount"

    iget v7, p0, Lcom/gp/tiltmazes/GameEngine;->mStepCount:I

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 326
    const-string v6, "ball.x"

    iget-object v7, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    invoke-virtual {v7}, Lcom/gp/tiltmazes/Ball;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    const-string v6, "ball.y"

    iget-object v7, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    invoke-virtual {v7}, Lcom/gp/tiltmazes/Ball;->getY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    return-void

    .line 320
    :cond_0
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1
    if-lt v4, v2, :cond_1

    .line 319
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 321
    :cond_1
    mul-int v6, v4, v2

    add-int/2addr v6, v5

    aget-object v7, v0, v5

    aget v7, v7, v4

    aput v7, v1, v6

    .line 320
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public sendEmptyMessage(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    return-void
.end method

.method public setMazeNameLabel(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "mazeNameLabel"    # Landroid/widget/TextView;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/gp/tiltmazes/GameEngine;->mMazeNameLabel:Landroid/widget/TextView;

    .line 252
    return-void
.end method

.method public setRemainingGoalsLabel(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "remainingGoalsLabel"    # Landroid/widget/TextView;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/gp/tiltmazes/GameEngine;->mRemainingGoalsLabel:Landroid/widget/TextView;

    .line 256
    return-void
.end method

.method public setStepsLabel(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "stepsView"    # Landroid/widget/TextView;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/gp/tiltmazes/GameEngine;->mStepsView:Landroid/widget/TextView;

    .line 265
    return-void
.end method

.method public setTiltMazesView(Lcom/gp/tiltmazes/MazeView;)V
    .locals 1
    .param p1, "mazeView"    # Lcom/gp/tiltmazes/MazeView;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/gp/tiltmazes/GameEngine;->mMazeView:Lcom/gp/tiltmazes/MazeView;

    .line 260
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;

    invoke-virtual {v0, p1}, Lcom/gp/tiltmazes/Ball;->setMazeView(Lcom/gp/tiltmazes/MazeView;)V

    .line 261
    return-void
.end method

.method public toggleSensorEnabled()V
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorEnabled:Z

    .line 304
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unregisterListener()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine;->mSensorAccelerometer:Landroid/hardware/SensorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    .line 282
    return-void
.end method

.method public vibrate(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 307
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 308
    return-void
.end method
