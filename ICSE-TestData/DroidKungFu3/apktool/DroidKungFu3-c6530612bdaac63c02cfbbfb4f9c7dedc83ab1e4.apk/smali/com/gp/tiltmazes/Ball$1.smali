.class Lcom/gp/tiltmazes/Ball$1;
.super Ljava/util/TimerTask;
.source "Ball.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gp/tiltmazes/Ball;->roll(Lcom/gp/tiltmazes/Direction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gp/tiltmazes/Ball;


# direct methods
.method constructor <init>(Lcom/gp/tiltmazes/Ball;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gp/tiltmazes/Ball$1;->this$0:Lcom/gp/tiltmazes/Ball;

    .line 155
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/gp/tiltmazes/Ball$1;->this$0:Lcom/gp/tiltmazes/Ball;

    # invokes: Lcom/gp/tiltmazes/Ball;->doStep()V
    invoke-static {v0}, Lcom/gp/tiltmazes/Ball;->access$1(Lcom/gp/tiltmazes/Ball;)V

    .line 158
    return-void
.end method
