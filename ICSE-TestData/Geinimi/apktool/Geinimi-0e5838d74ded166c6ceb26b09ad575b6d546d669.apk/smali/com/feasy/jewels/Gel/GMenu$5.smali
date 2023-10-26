.class final Lcom/feasy/jewels/Gel/GMenu$5;
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
    iput-object p1, p0, Lcom/feasy/jewels/Gel/GMenu$5;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/feasy/jewels/Gel/GMenu$5;->this$0:Lcom/feasy/jewels/Gel/GMenu;

    # invokes: Lcom/feasy/jewels/Gel/GMenu;->exitApp()V
    invoke-static {v0}, Lcom/feasy/jewels/Gel/GMenu;->access$6(Lcom/feasy/jewels/Gel/GMenu;)V

    .line 227
    return-void
.end method
