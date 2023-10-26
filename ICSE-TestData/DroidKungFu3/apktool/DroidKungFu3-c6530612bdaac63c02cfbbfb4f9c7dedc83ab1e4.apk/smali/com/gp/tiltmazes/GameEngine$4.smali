.class Lcom/gp/tiltmazes/GameEngine$4;
.super Landroid/os/Handler;
.source "GameEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gp/tiltmazes/GameEngine;-><init>(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    .line 157
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 219
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mMazeView:Lcom/gp/tiltmazes/MazeView;
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$10(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/MazeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MazeView;->invalidate()V

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mRemainingGoalsLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$11(Lcom/gp/tiltmazes/GameEngine;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;
    invoke-static {v2}, Lcom/gp/tiltmazes/GameEngine;->access$12(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/Map;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gp/tiltmazes/Map;->getGoalCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mRemainingGoalsLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$11(Lcom/gp/tiltmazes/GameEngine;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 168
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/gp/tiltmazes/GameEngine;->vibrate(J)V

    .line 169
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$12(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/tiltmazes/Map;->getGoalCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mDB:Lcom/gp/tiltmazes/TiltMazesDBAdapter;
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$13(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/TiltMazesDBAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mCurrentMap:I
    invoke-static {v1}, Lcom/gp/tiltmazes/GameEngine;->access$14(Lcom/gp/tiltmazes/GameEngine;)I

    move-result v1

    iget-object v2, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mStepCount:I
    invoke-static {v2}, Lcom/gp/tiltmazes/GameEngine;->access$15(Lcom/gp/tiltmazes/GameEngine;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->updateMaze(II)V

    .line 172
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mDB:Lcom/gp/tiltmazes/TiltMazesDBAdapter;
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$13(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/TiltMazesDBAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->unsolvedMazes()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mAllMazesSolvedDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$16(Lcom/gp/tiltmazes/GameEngine;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 174
    const-string v1, "Mad props!\nYou have solved all the mazes!\nNow go back and try to solve them in fewer steps! :)"

    .line 173
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mAllMazesSolvedDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$16(Lcom/gp/tiltmazes/GameEngine;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mMazeSolvedDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$17(Lcom/gp/tiltmazes/GameEngine;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You have solved maze "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mMap:Lcom/gp/tiltmazes/Map;
    invoke-static {v2}, Lcom/gp/tiltmazes/GameEngine;->access$12(Lcom/gp/tiltmazes/GameEngine;)Lcom/gp/tiltmazes/Map;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gp/tiltmazes/Map;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mStepCount:I
    invoke-static {v2}, Lcom/gp/tiltmazes/GameEngine;->access$15(Lcom/gp/tiltmazes/GameEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " steps."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mMazeSolvedDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$17(Lcom/gp/tiltmazes/GameEngine;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 190
    :pswitch_2
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/gp/tiltmazes/GameEngine;->vibrate(J)V

    goto/16 :goto_0

    .line 194
    :pswitch_3
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mCurrentMap:I
    invoke-static {v1}, Lcom/gp/tiltmazes/GameEngine;->access$14(Lcom/gp/tiltmazes/GameEngine;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->loadMap(I)V

    goto/16 :goto_0

    .line 199
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1

    .line 215
    :goto_1
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mMapToLoad:I
    invoke-static {v1}, Lcom/gp/tiltmazes/GameEngine;->access$19(Lcom/gp/tiltmazes/GameEngine;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->loadMap(I)V

    goto/16 :goto_0

    .line 201
    :pswitch_5
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mCurrentMap:I
    invoke-static {v0}, Lcom/gp/tiltmazes/GameEngine;->access$14(Lcom/gp/tiltmazes/GameEngine;)I

    move-result v0

    if-nez v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    sget-object v1, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->access$18(Lcom/gp/tiltmazes/GameEngine;I)V

    goto :goto_1

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mCurrentMap:I
    invoke-static {v1}, Lcom/gp/tiltmazes/GameEngine;->access$14(Lcom/gp/tiltmazes/GameEngine;)I

    move-result v1

    sub-int/2addr v1, v2

    sget-object v2, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->access$18(Lcom/gp/tiltmazes/GameEngine;I)V

    goto :goto_1

    .line 211
    :pswitch_6
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    iget-object v1, p0, Lcom/gp/tiltmazes/GameEngine$4;->this$0:Lcom/gp/tiltmazes/GameEngine;

    # getter for: Lcom/gp/tiltmazes/GameEngine;->mCurrentMap:I
    invoke-static {v1}, Lcom/gp/tiltmazes/GameEngine;->access$14(Lcom/gp/tiltmazes/GameEngine;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->access$18(Lcom/gp/tiltmazes/GameEngine;I)V

    goto :goto_1

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 199
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
