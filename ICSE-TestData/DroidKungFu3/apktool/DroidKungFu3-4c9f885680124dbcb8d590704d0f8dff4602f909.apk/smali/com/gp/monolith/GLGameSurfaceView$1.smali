.class Lcom/gp/monolith/GLGameSurfaceView$1;
.super Ljava/lang/Object;
.source "GLGameSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gp/monolith/GLGameSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gp/monolith/GLGameSurfaceView;


# direct methods
.method constructor <init>(Lcom/gp/monolith/GLGameSurfaceView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gp/monolith/GLGameSurfaceView$1;->this$0:Lcom/gp/monolith/GLGameSurfaceView;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/gp/monolith/GLGameSurfaceView$1;->this$0:Lcom/gp/monolith/GLGameSurfaceView;

    # getter for: Lcom/gp/monolith/GLGameSurfaceView;->mRenderer:Lcom/gp/monolith/GameRenderer;
    invoke-static {v0}, Lcom/gp/monolith/GLGameSurfaceView;->access$0(Lcom/gp/monolith/GLGameSurfaceView;)Lcom/gp/monolith/GameRenderer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Lcom/gp/monolith/GameRenderer;->setAction(III)V

    .line 140
    return-void
.end method
