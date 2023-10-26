.class public Lcom/gp/tiltmazes/Map;
.super Ljava/lang/Object;
.source "Map.java"


# instance fields
.field private mDesign:Lcom/gp/tiltmazes/MapDesign;

.field private mGoalCount:I

.field private mGoals:[[I


# direct methods
.method public constructor <init>(Lcom/gp/tiltmazes/MapDesign;)V
    .locals 0
    .param p1, "design"    # Lcom/gp/tiltmazes/MapDesign;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    .line 42
    invoke-virtual {p0}, Lcom/gp/tiltmazes/Map;->init()V

    .line 43
    return-void
.end method


# virtual methods
.method public getGoal(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/gp/tiltmazes/Map;->mGoals:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    return v0
.end method

.method public getGoalCount()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/gp/tiltmazes/Map;->mGoalCount:I

    return v0
.end method

.method public getGoals()[[I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/gp/tiltmazes/Map;->mGoals:[[I

    return-object v0
.end method

.method public getInitialPositionX()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MapDesign;->getInitialPositionX()I

    move-result v0

    return v0
.end method

.method public getInitialPositionY()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MapDesign;->getInitialPositionY()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MapDesign;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSizeX()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MapDesign;->getSizeY()I

    move-result v0

    return v0
.end method

.method public getSizeY()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MapDesign;->getSizeY()I

    move-result v0

    return v0
.end method

.method public getWalls(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    invoke-virtual {v0, p1, p2}, Lcom/gp/tiltmazes/MapDesign;->getWalls(II)I

    move-result v0

    return v0
.end method

.method public getWalls()[[I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MapDesign;->getWalls()[[I

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 46
    iget-object v3, p0, Lcom/gp/tiltmazes/Map;->mGoals:[[I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    invoke-virtual {v3}, Lcom/gp/tiltmazes/MapDesign;->getSizeY()I

    move-result v3

    iget-object v4, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    invoke-virtual {v4}, Lcom/gp/tiltmazes/MapDesign;->getSizeX()I

    move-result v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lcom/gp/tiltmazes/Map;->mGoals:[[I

    .line 48
    :cond_0
    iget-object v3, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    invoke-virtual {v3}, Lcom/gp/tiltmazes/MapDesign;->getGoals()[[I

    move-result-object v0

    .line 49
    .local v0, "goals":[[I
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_0
    iget-object v3, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    invoke-virtual {v3}, Lcom/gp/tiltmazes/MapDesign;->getSizeY()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 53
    iget-object v3, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    invoke-virtual {v3}, Lcom/gp/tiltmazes/MapDesign;->getGoalCount()I

    move-result v3

    iput v3, p0, Lcom/gp/tiltmazes/Map;->mGoalCount:I

    .line 54
    return-void

    .line 50
    :cond_1
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget-object v3, p0, Lcom/gp/tiltmazes/Map;->mDesign:Lcom/gp/tiltmazes/MapDesign;

    invoke-virtual {v3}, Lcom/gp/tiltmazes/MapDesign;->getSizeX()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_2
    iget-object v3, p0, Lcom/gp/tiltmazes/Map;->mGoals:[[I

    aget-object v3, v3, v2

    aget-object v4, v0, v2

    aget v4, v4, v1

    aput v4, v3, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public removeGoal(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 77
    iget v0, p0, Lcom/gp/tiltmazes/Map;->mGoalCount:I

    iget-object v1, p0, Lcom/gp/tiltmazes/Map;->mGoals:[[I

    aget-object v1, v1, p2

    aget v1, v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/gp/tiltmazes/Map;->mGoalCount:I

    .line 78
    iget-object v0, p0, Lcom/gp/tiltmazes/Map;->mGoals:[[I

    aget-object v0, v0, p2

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 79
    return-void
.end method

.method public setGoal(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # I

    .prologue
    .line 82
    iget v0, p0, Lcom/gp/tiltmazes/Map;->mGoalCount:I

    iget-object v1, p0, Lcom/gp/tiltmazes/Map;->mGoals:[[I

    aget-object v1, v1, p2

    aget v1, v1, p1

    sub-int/2addr v1, p3

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/gp/tiltmazes/Map;->mGoalCount:I

    .line 83
    iget-object v0, p0, Lcom/gp/tiltmazes/Map;->mGoals:[[I

    aget-object v0, v0, p2

    aput p3, v0, p1

    .line 84
    return-void
.end method
