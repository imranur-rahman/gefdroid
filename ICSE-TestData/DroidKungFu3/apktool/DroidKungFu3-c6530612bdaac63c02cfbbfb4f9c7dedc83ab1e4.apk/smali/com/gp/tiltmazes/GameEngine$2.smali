.class Lcom/gp/tiltmazes/GameEngine$2;
.super Ljava/lang/Object;
.source "GameEngine.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/gp/tiltmazes/GameEngine$2;->this$0:Lcom/gp/tiltmazes/GameEngine;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 138
    iget-object v0, p0, Lcom/gp/tiltmazes/GameEngine$2;->this$0:Lcom/gp/tiltmazes/GameEngine;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/gp/tiltmazes/GameEngine;->sendEmptyMessage(I)V

    .line 139
    return-void
.end method
