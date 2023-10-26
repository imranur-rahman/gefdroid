.class public Lcom/gp/tiltmazes/MapDesign;
.super Ljava/lang/Object;
.source "MapDesign.java"


# instance fields
.field private mGoalCount:I

.field private mGoals:[[I

.field private mInitialPositionX:I

.field private mInitialPositionY:I

.field private mName:Ljava/lang/String;

.field private mSizeX:I

.field private mSizeY:I

.field private mWalls:[[I


# direct methods
.method public constructor <init>(Ljava/lang/String;II[[I[[III)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sizeX"    # I
    .param p3, "sizeY"    # I
    .param p4, "walls"    # [[I
    .param p5, "goals"    # [[I
    .param p6, "initialPositionX"    # I
    .param p7, "initialPositionY"    # I

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v2, p0, Lcom/gp/tiltmazes/MapDesign;->mSizeX:I

    .line 37
    iput v2, p0, Lcom/gp/tiltmazes/MapDesign;->mSizeY:I

    .line 42
    iput v2, p0, Lcom/gp/tiltmazes/MapDesign;->mGoalCount:I

    .line 50
    iput-object p1, p0, Lcom/gp/tiltmazes/MapDesign;->mName:Ljava/lang/String;

    .line 51
    iput p2, p0, Lcom/gp/tiltmazes/MapDesign;->mSizeX:I

    .line 52
    iput p3, p0, Lcom/gp/tiltmazes/MapDesign;->mSizeY:I

    .line 53
    iput-object p4, p0, Lcom/gp/tiltmazes/MapDesign;->mWalls:[[I

    .line 54
    iput-object p5, p0, Lcom/gp/tiltmazes/MapDesign;->mGoals:[[I

    .line 55
    iput p6, p0, Lcom/gp/tiltmazes/MapDesign;->mInitialPositionX:I

    .line 56
    iput p7, p0, Lcom/gp/tiltmazes/MapDesign;->mInitialPositionY:I

    .line 57
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    iget v2, p0, Lcom/gp/tiltmazes/MapDesign;->mSizeY:I

    if-lt v1, v2, :cond_0

    .line 62
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_1
    iget v2, p0, Lcom/gp/tiltmazes/MapDesign;->mSizeX:I

    if-lt v0, v2, :cond_1

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget v2, p0, Lcom/gp/tiltmazes/MapDesign;->mGoalCount:I

    iget-object v3, p0, Lcom/gp/tiltmazes/MapDesign;->mGoals:[[I

    aget-object v3, v3, v1

    aget v3, v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/gp/tiltmazes/MapDesign;->mGoalCount:I

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getGoalCount()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/gp/tiltmazes/MapDesign;->mGoalCount:I

    return v0
.end method

.method public getGoals()[[I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/gp/tiltmazes/MapDesign;->mGoals:[[I

    return-object v0
.end method

.method public getInitialPositionX()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/gp/tiltmazes/MapDesign;->mInitialPositionX:I

    return v0
.end method

.method public getInitialPositionY()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/gp/tiltmazes/MapDesign;->mInitialPositionY:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/gp/tiltmazes/MapDesign;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeX()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/gp/tiltmazes/MapDesign;->mSizeX:I

    return v0
.end method

.method public getSizeY()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/gp/tiltmazes/MapDesign;->mSizeY:I

    return v0
.end method

.method public getWalls(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/gp/tiltmazes/MapDesign;->mWalls:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    return v0
.end method

.method public getWalls()[[I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/gp/tiltmazes/MapDesign;->mWalls:[[I

    return-object v0
.end method
