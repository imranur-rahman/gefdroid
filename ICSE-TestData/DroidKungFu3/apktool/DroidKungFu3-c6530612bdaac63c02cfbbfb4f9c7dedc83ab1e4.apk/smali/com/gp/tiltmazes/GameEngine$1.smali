.class Lcom/gp/tiltmazes/GameEngine$1;
.super Ljava/lang/Object;
.source "GameEngine.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/tiltmazes/GameEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gp/tiltmazes/GameEngine;


# direct methods
.method constructor <init>(Lcom/gp/tiltmazes/GameEngine;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 0
    .param p1, "sensor"    # I
    .param p2, "accuracy"    # I

    .prologue
    .line 106
    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "values"    # [F

    .prologue
    .line 82
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mSensorEnabled:Z
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$0(Lcom/gp/tiltmazes/GameEngine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-static {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->access$1(Lcom/gp/tiltmazes/GameEngine;F)V

    .line 85
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-static {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->access$2(Lcom/gp/tiltmazes/GameEngine;F)V

    .line 86
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    const/4 v1, 0x2

    aget v1, p2, v1

    invoke-static {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->access$3(Lcom/gp/tiltmazes/GameEngine;F)V

    .line 88
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    sget-object v1, Lcom/gp/tiltmazes/Direction;->NONE:Lcom/gp/tiltmazes/Direction;

    invoke-static {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->access$4(Lcom/gp/tiltmazes/GameEngine;Lcom/gp/tiltmazes/Direction;)V

    .line 89
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mAccelX:F
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$5(Lcom/gp/tiltmazes/GameEngine;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mAccelY:F
    invoke-static {v1}, Lcom/gp/tiltmazes/GameEngine;->access$6(Lcom/gp/tiltmazes/GameEngine;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mAccelX:F
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$5(Lcom/gp/tiltmazes/GameEngine;)F

    move-result v0

    # getter for: Lcom/gp/tiltmazes/GameEngine;->ACCEL_THRESHOLD:F
    invoke-static {}, Lcom/gp/tiltmazes/GameEngine;->access$7()F

    move-result v1

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    sget-object v1, Lcom/gp/tiltmazes/Direction;->LEFT:Lcom/gp/tiltmazes/Direction;

    invoke-static {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->access$4(Lcom/gp/tiltmazes/GameEngine;Lcom/gp/tiltmazes/Direction;)V

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mAccelX:F
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$5(Lcom/gp/tiltmazes/GameEngine;)F

    move-result v0

    # getter for: Lcom/gp/tiltmazes/GameEngine;->ACCEL_THRESHOLD:F
    invoke-static {}, Lcom/gp/tiltmazes/GameEngine;->access$7()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    sget-object v1, Lcom/gp/tiltmazes/Direction;->RIGHT:Lcom/gp/tiltmazes/Direction;

    invoke-static {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->access$4(Lcom/gp/tiltmazes/GameEngine;Lcom/gp/tiltmazes/Direction;)V

    .line 100
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mCommandedRollDirection:Lcom/gp/tiltmazes/Direction;
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$8(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/Direction;

    move-result-object v0

    sget-object v1, Lcom/gp/tiltmazes/Direction;->NONE:Lcom/gp/tiltmazes/Direction;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mBall:Lcom/gp/tiltmazes/Ball;
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$9(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/Ball;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/tiltmazes/Ball;->isRolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mCommandedRollDirection:Lcom/gp/tiltmazes/Direction;
    invoke-static {v1}, Lcom/gp/tiltmazes/GameEngine;->access$8(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/Direction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->rollBall(Lcom/gp/tiltmazes/Direction;)V

    goto/16 :goto_0

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mAccelY:F
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$6(Lcom/gp/tiltmazes/GameEngine;)F

    move-result v0

    # getter for: Lcom/gp/tiltmazes/GameEngine;->ACCEL_THRESHOLD:F
    invoke-static {}, Lcom/gp/tiltmazes/GameEngine;->access$7()F

    move-result v1

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    sget-object v1, Lcom/gp/tiltmazes/Direction;->DOWN:Lcom/gp/tiltmazes/Direction;

    invoke-static {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->access$4(Lcom/gp/tiltmazes/GameEngine;Lcom/gp/tiltmazes/Direction;)V

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mAccelY:F
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$6(Lcom/gp/tiltmazes/GameEngine;)F

    move-result v0

    # getter for: Lcom/gp/tiltmazes/GameEngine;->ACCEL_THRESHOLD:F
    invoke-static {}, Lcom/gp/tiltmazes/GameEngine;->access$7()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$1;->this$0:Lcom/gp/tiltmazes/GameEngine;

    sget-object v1, Lcom/gp/tiltmazes/Direction;->UP:Lcom/gp/tiltmazes/Direction;

    invoke-static {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->access$4(Lcom/gp/tiltmazes/GameEngine;Lcom/gp/tiltmazes/Direction;)V

    goto :goto_1
.end method
