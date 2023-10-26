.class Lcom/gp/tiltmazes/MazeView$1;
.super Ljava/util/TimerTask;
.source "MazeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gp/tiltmazes/MazeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gp/tiltmazes/MazeView;


# direct methods
.method constructor <init>(Lcom/gp/tiltmazes/MazeView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gp/tiltmazes/MazeView$1;->this$0:Lcom/gp/tiltmazes/MazeView;

    .line 111
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/gp/tiltmazes/MazeView$1;->this$0:Lcom/gp/tiltmazes/MazeView;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MazeView;->postInvalidate()V

    .line 114
    return-void
.end method
