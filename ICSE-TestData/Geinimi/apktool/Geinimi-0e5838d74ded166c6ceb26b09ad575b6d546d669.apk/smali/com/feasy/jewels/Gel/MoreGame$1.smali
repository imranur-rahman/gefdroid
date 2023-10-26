.class final Lcom/feasy/jewels/Gel/MoreGame$1;
.super Ljava/lang/Object;
.source "MoreGame.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feasy/jewels/Gel/MoreGame;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feasy/jewels/Gel/MoreGame;


# direct methods
.method constructor <init>(Lcom/feasy/jewels/Gel/MoreGame;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feasy/jewels/Gel/MoreGame$1;->this$0:Lcom/feasy/jewels/Gel/MoreGame;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move v0, p3

    .line 85
    .local v0, "index":I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/feasy/jewels/Gel/MoreGame$1;->this$0:Lcom/feasy/jewels/Gel/MoreGame;

    invoke-virtual {v1, v0}, Lcom/feasy/jewels/Gel/MoreGame;->goApp(I)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/feasy/jewels/Gel/MoreGame$1;->this$0:Lcom/feasy/jewels/Gel/MoreGame;

    # getter for: Lcom/feasy/jewels/Gel/MoreGame;->mDlg:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/feasy/jewels/Gel/MoreGame;->access$0(Lcom/feasy/jewels/Gel/MoreGame;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
