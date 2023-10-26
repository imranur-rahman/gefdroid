.class final Lcom/feasy/jewels/Gel/GMenu$1;
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
    iput-object p1, p0, Lcom/feasy/jewels/Gel/GMenu$1;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    const-string v1, "GMenu"

    const-string v2, "New Game...called, new itMain"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v0, "itMain":Landroid/content/Intent;
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GMenu$1;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    const-class v2, Lcom/feasy/jewels/Gel/GameActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GMenu$1;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    invoke-virtual {v1, v0}, Lcom/feasy/jewels/Gel/GMenu;->startActivity(Landroid/content/Intent;)V

    .line 174
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GMenu$1;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    # invokes: Lcom/feasy/jewels/Gel/GMenu;->stopMusic()V
    invoke-static {v1}, Lcom/feasy/jewels/Gel/GMenu;->access$0(Lcom/feasy/jewels/Gel/GMenu;)V

    .line 175
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GMenu$1;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    invoke-virtual {v1}, Lcom/feasy/jewels/Gel/GMenu;->finish()V

    .line 176
    return-void
.end method
