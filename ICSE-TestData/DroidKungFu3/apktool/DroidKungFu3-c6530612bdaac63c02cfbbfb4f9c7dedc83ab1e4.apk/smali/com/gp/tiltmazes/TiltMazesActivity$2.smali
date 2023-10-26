.class Lcom/gp/tiltmazes/TiltMazesActivity$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TiltMazesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gp/tiltmazes/TiltMazesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gp/tiltmazes/TiltMazesActivity;


# direct methods
.method constructor <init>(Lcom/gp/tiltmazes/TiltMazesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gp/tiltmazes/TiltMazesActivity$2;->this$0:Lcom/gp/tiltmazes/TiltMazesActivity;

    .line 155
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x0

    .line 165
    sget-object v0, Lcom/gp/tiltmazes/Direction;->NONE:Lcom/gp/tiltmazes/Direction;

    .line 167
    .local v0, "mCommandedRollDirection":Lcom/gp/tiltmazes/Direction;
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 168
    cmpg-float v1, p3, v3

    if-gez v1, :cond_1

    sget-object v0, Lcom/gp/tiltmazes/Direction;->LEFT:Lcom/gp/tiltmazes/Direction;

    .line 176
    :goto_0
    sget-object v1, Lcom/gp/tiltmazes/Direction;->NONE:Lcom/gp/tiltmazes/Direction;

    if-eq v0, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/gp/tiltmazes/TiltMazesActivity$2;->this$0:Lcom/gp/tiltmazes/TiltMazesActivity;

    # getter for: Lcom/gp/tiltmazes/TiltMazesActivity;->mGameEngine:Lcom/gp/tiltmazes/GameEngine;
    invoke-static {v1}, Lcom/gp/tiltmazes/TiltMazesActivity;->access$1(Lcom/gp/tiltmazes/TiltMazesActivity;)Lcom/gp/tiltmazes/GameEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gp/tiltmazes/GameEngine;->rollBall(Lcom/gp/tiltmazes/Direction;)V

    .line 180
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 169
    :cond_1
    sget-object v0, Lcom/gp/tiltmazes/Direction;->RIGHT:Lcom/gp/tiltmazes/Direction;

    goto :goto_0

    .line 172
    :cond_2
    cmpg-float v1, p4, v3

    if-gez v1, :cond_3

    sget-object v0, Lcom/gp/tiltmazes/Direction;->UP:Lcom/gp/tiltmazes/Direction;

    goto :goto_0

    .line 173
    :cond_3
    sget-object v0, Lcom/gp/tiltmazes/Direction;->DOWN:Lcom/gp/tiltmazes/Direction;

    goto :goto_0
.end method
