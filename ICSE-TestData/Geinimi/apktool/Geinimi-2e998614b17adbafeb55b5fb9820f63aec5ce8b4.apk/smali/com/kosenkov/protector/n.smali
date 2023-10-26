.class final Lcom/kosenkov/protector/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Lcom/kosenkov/protector/AskPassword;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/AskPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/n;->a:Lcom/kosenkov/protector/AskPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/kosenkov/protector/n;->a:Lcom/kosenkov/protector/AskPassword;

    const v1, 0x7f06000c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v2
.end method
