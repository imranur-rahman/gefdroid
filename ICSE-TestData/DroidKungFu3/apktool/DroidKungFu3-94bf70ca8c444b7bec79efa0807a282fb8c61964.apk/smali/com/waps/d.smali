.class Lcom/waps/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/waps/AppConnect;


# direct methods
.method constructor <init>(Lcom/waps/AppConnect;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/d;->b:Lcom/waps/AppConnect;

    iput-object p2, p0, Lcom/waps/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/waps/d;->b:Lcom/waps/AppConnect;

    # getter for: Lcom/waps/AppConnect;->t:Landroid/content/Context;
    invoke-static {v1}, Lcom/waps/AppConnect;->access$2200(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/waps/OffersWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "URL"

    iget-object v2, p0, Lcom/waps/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isFinshClose"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CLIENT_PACKAGE"

    iget-object v2, p0, Lcom/waps/d;->b:Lcom/waps/AppConnect;

    # getter for: Lcom/waps/AppConnect;->K:Ljava/lang/String;
    invoke-static {v2}, Lcom/waps/AppConnect;->access$2300(Lcom/waps/AppConnect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/waps/d;->b:Lcom/waps/AppConnect;

    # getter for: Lcom/waps/AppConnect;->t:Landroid/content/Context;
    invoke-static {v1}, Lcom/waps/AppConnect;->access$2200(Lcom/waps/AppConnect;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    # setter for: Lcom/waps/AppConnect;->S:Z
    invoke-static {v0}, Lcom/waps/AppConnect;->access$502(Z)Z

    return-void
.end method
