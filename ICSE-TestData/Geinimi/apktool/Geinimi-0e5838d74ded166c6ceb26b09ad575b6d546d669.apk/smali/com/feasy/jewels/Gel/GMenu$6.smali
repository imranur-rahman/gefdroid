.class final Lcom/feasy/jewels/Gel/GMenu$6;
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
    iput-object p1, p0, Lcom/feasy/jewels/Gel/GMenu$6;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    new-instance v0, Lcom/feasy/jewels/Gel/MoreGame;

    iget-object v1, p0, Lcom/feasy/jewels/Gel/GMenu$6;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    invoke-direct {v0, v1}, Lcom/feasy/jewels/Gel/MoreGame;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/feasy/jewels/Gel/MoreGame;->show()V

    .line 234
    return-void
.end method
