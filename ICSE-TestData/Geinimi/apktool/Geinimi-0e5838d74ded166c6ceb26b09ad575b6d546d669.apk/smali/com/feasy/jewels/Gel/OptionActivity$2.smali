.class final Lcom/feasy/jewels/Gel/OptionActivity$2;
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
    iput-object p1, p0, Lcom/feasy/jewels/Gel/OptionActivity$2;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/feasy/jewels/Gel/OptionActivity$2;->this$0:Lcom/feasy/jewels/Gel/OptionActivity;

    invoke-virtual {v0}, Lcom/feasy/jewels/Gel/OptionActivity;->finish()V

    .line 69
    return-void
.end method
