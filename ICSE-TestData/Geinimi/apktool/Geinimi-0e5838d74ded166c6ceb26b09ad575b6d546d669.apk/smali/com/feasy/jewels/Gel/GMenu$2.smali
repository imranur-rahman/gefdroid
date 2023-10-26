.class final Lcom/feasy/jewels/Gel/GMenu$2;
.super Ljava/lang/Object;
.source "GMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feasy/jewels/Gel/GMenu;->handleMenuClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feasy/jewels/Gel/GMenu;


# direct methods
.method constructor <init>(Lcom/feasy/jewels/Gel/GMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feasy/jewels/Gel/GMenu$2;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const-string v3, "GMenu"

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, "itMain":Landroid/content/Intent;
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GMenu$2;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    const-class v2, Lcom/feasy/jewels/Gel/GameActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GMenu$2;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    invoke-static {v1, v4}, Lcom/feasy/jewels/Gel/GMenu;->access$1(Lcom/feasy/jewels/Gel/GMenu;Z)V

    .line 187
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GMenu$2;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    # getter for: Lcom/feasy/jewels/Gel/GMenu;->mGameSavePause:Z
    invoke-static {v1}, Lcom/feasy/jewels/Gel/GMenu;->access$2(Lcom/feasy/jewels/Gel/GMenu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "GMenu"

    const-string v1, "Resume, mGameSavePause= true"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v1, "gamePause"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    const-string v1, "gameScore"

    iget-object v2, p0, Lcom/feasy/jewels/Gel/GMenu$2;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    # getter for: Lcom/feasy/jewels/Gel/GMenu;->mGameSaveScore:I
    invoke-static {v2}, Lcom/feasy/jewels/Gel/GMenu;->access$3(Lcom/feasy/jewels/Gel/GMenu;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v1, "gameLevel"

    iget-object v2, p0, Lcom/feasy/jewels/Gel/GMenu$2;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    # getter for: Lcom/feasy/jewels/Gel/GMenu;->mGameSaveLevel:I
    invoke-static {v2}, Lcom/feasy/jewels/Gel/GMenu;->access$4(Lcom/feasy/jewels/Gel/GMenu;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const-string v1, "GMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resume, Life="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feasy/jewels/Gel/GMenu$2;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    # getter for: Lcom/feasy/jewels/Gel/GMenu;->mGameSaveLife:I
    invoke-static {v2}, Lcom/feasy/jewels/Gel/GMenu;->access$5(Lcom/feasy/jewels/Gel/GMenu;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feasy/jewels/Gel/GMenu$2;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    # getter for: Lcom/feasy/jewels/Gel/GMenu;->mGameSaveLevel:I
    invoke-static {v2}, Lcom/feasy/jewels/Gel/GMenu;->access$4(Lcom/feasy/jewels/Gel/GMenu;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GMenu$2;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    # invokes: Lcom/feasy/jewels/Gel/GMenu;->stopMusic()V
    invoke-static {v1}, Lcom/feasy/jewels/Gel/GMenu;->access$0(Lcom/feasy/jewels/Gel/GMenu;)V

    .line 204
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GMenu$2;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    invoke-virtual {v1, v0}, Lcom/feasy/jewels/Gel/GMenu;->startActivity(Landroid/content/Intent;)V

    .line 205
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GMenu$2;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    invoke-virtual {v1}, Lcom/feasy/jewels/Gel/GMenu;->finish()V

    .line 206
    return-void

    .line 198
    :cond_0
    const-string v1, "GMenu"

    const-string v1, "Resume, mGameSavePause=false!"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
