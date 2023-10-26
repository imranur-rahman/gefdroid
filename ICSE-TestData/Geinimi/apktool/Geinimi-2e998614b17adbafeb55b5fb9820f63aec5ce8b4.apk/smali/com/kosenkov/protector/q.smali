.class final Lcom/kosenkov/protector/q;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/kosenkov/protector/AskPassword;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/AskPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/q;->a:Lcom/kosenkov/protector/AskPassword;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kosenkov/protector/q;->a:Lcom/kosenkov/protector/AskPassword;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kosenkov/protector/AskPassword;->dismissDialog(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
