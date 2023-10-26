.class final Lcom/kosenkov/protector/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kosenkov/protector/p;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/p;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/x;->a:Lcom/kosenkov/protector/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/kosenkov/protector/x;->a:Lcom/kosenkov/protector/p;

    iget-object v1, v1, Lcom/kosenkov/protector/p;->a:Lcom/kosenkov/protector/AskPassword;

    invoke-virtual {v1, v0}, Lcom/kosenkov/protector/AskPassword;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
