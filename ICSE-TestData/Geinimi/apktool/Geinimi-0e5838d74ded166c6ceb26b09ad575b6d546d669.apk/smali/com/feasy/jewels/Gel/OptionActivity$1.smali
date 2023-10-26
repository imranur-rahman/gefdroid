.class final Lcom/feasy/jewels/Gel/OptionActivity$1;
.super Ljava/lang/Object;
.source "OptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feasy/jewels/Gel/OptionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feasy/jewels/Gel/OptionActivity;


# direct methods
.method constructor <init>(Lcom/feasy/jewels/Gel/OptionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feasy/jewels/Gel/OptionActivity$1;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v4, "true"

    const-string v3, "false"

    .line 53
    iget-object v0, p0, Lcom/feasy/jewels/Gel/OptionActivity$1;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    # getter for: Lcom/feasy/jewels/Gel/OptionActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/feasy/jewels/Gel/OptionActivity;->access$0(Lcom/feasy/jewels/Gel/OptionActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isMusic"

    iget-object v2, p0, Lcom/feasy/jewels/Gel/OptionActivity$1;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    # getter for: Lcom/feasy/jewels/Gel/OptionActivity;->cbMusic:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/feasy/jewels/Gel/OptionActivity;->access$1(Lcom/feasy/jewels/Gel/OptionActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/feasy/jewels/Gel/OptionActivity$1;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    # getter for: Lcom/feasy/jewels/Gel/OptionActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/feasy/jewels/Gel/OptionActivity;->access$0(Lcom/feasy/jewels/Gel/OptionActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isSound"

    iget-object v2, p0, Lcom/feasy/jewels/Gel/OptionActivity$1;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    # getter for: Lcom/feasy/jewels/Gel/OptionActivity;->cbSound:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/feasy/jewels/Gel/OptionActivity;->access$2(Lcom/feasy/jewels/Gel/OptionActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    iget-object v0, p0, Lcom/feasy/jewels/Gel/OptionActivity$1;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    # getter for: Lcom/feasy/jewels/Gel/OptionActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/feasy/jewels/Gel/OptionActivity;->access$0(Lcom/feasy/jewels/Gel/OptionActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isVibrate"

    iget-object v2, p0, Lcom/feasy/jewels/Gel/OptionActivity$1;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    # getter for: Lcom/feasy/jewels/Gel/OptionActivity;->cbVibrate:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/feasy/jewels/Gel/OptionActivity;->access$3(Lcom/feasy/jewels/Gel/OptionActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    const-string v0, "Option"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Save(), isMusic="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feasy/jewels/Gel/OptionActivity$1;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    # getter for: Lcom/feasy/jewels/Gel/OptionActivity;->cbMusic:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/feasy/jewels/Gel/OptionActivity;->access$1(Lcom/feasy/jewels/Gel/OptionActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "true"

    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feasy/jewels/Gel/OptionActivity$1;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    # getter for: Lcom/feasy/jewels/Gel/OptionActivity;->cbSound:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/feasy/jewels/Gel/OptionActivity;->access$2(Lcom/feasy/jewels/Gel/OptionActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "true"

    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/feasy/jewels/Gel/OptionActivity$1;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/feasy/jewels/Gel/OptionActivity$1;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    # getter for: Lcom/feasy/jewels/Gel/OptionActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/feasy/jewels/Gel/OptionActivity;->access$0(Lcom/feasy/jewels/Gel/OptionActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/feasy/jewels/Gel/OptionActivity;->setResult(ILandroid/content/Intent;)V

    .line 59
    iget-object v0, p0, Lcom/feasy/jewels/Gel/OptionActivity$1;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    invoke-virtual {v0}, Lcom/feasy/jewels/Gel/OptionActivity;->finish()V

    .line 60
    return-void

    .line 57
    :cond_0
    const-string v2, "false"

    move-object v2, v3

    goto :goto_0

    :cond_1
    const-string v2, "false"

    move-object v2, v3

    goto :goto_1
.end method
