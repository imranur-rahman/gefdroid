.class Lcom/waps/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/waps/DisplayAd;


# direct methods
.method constructor <init>(Lcom/waps/DisplayAd;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/o;->a:Lcom/waps/DisplayAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v6, 0x1

    const-string v7, "CLIENT_PACKAGE"

    const-string v5, ""

    const-string v0, ""

    const-string v0, ""

    iget-object v0, p0, Lcom/waps/o;->a:Lcom/waps/DisplayAd;

    # getter for: Lcom/waps/DisplayAd;->g:Landroid/content/Context;
    invoke-static {v0}, Lcom/waps/DisplayAd;->access$600(Lcom/waps/DisplayAd;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/waps/o;->a:Lcom/waps/DisplayAd;

    # getter for: Lcom/waps/DisplayAd;->g:Landroid/content/Context;
    invoke-static {v1}, Lcom/waps/DisplayAd;->access$600(Lcom/waps/DisplayAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/o;->a:Lcom/waps/DisplayAd;

    # getter for: Lcom/waps/DisplayAd;->g:Landroid/content/Context;
    invoke-static {v1}, Lcom/waps/DisplayAd;->access$600(Lcom/waps/DisplayAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "CLIENT_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    # getter for: Lcom/waps/DisplayAd;->l:Ljava/lang/String;
    invoke-static {}, Lcom/waps/DisplayAd;->access$700()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, ""

    # getter for: Lcom/waps/DisplayAd;->l:Ljava/lang/String;
    invoke-static {}, Lcom/waps/DisplayAd;->access$700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/waps/o;->a:Lcom/waps/DisplayAd;

    # getter for: Lcom/waps/DisplayAd;->g:Landroid/content/Context;
    invoke-static {v1}, Lcom/waps/DisplayAd;->access$600(Lcom/waps/DisplayAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_2
    # getter for: Lcom/waps/DisplayAd;->l:Ljava/lang/String;
    invoke-static {}, Lcom/waps/DisplayAd;->access$700()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    :try_start_3
    iget-object v2, p0, Lcom/waps/o;->a:Lcom/waps/DisplayAd;

    # getter for: Lcom/waps/DisplayAd;->g:Landroid/content/Context;
    invoke-static {v2}, Lcom/waps/DisplayAd;->access$600(Lcom/waps/DisplayAd;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v2

    # getter for: Lcom/waps/DisplayAd;->l:Ljava/lang/String;
    invoke-static {}, Lcom/waps/DisplayAd;->access$700()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/waps/AppConnect;->package_receiver(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/waps/o;->a:Lcom/waps/DisplayAd;

    # getter for: Lcom/waps/DisplayAd;->g:Landroid/content/Context;
    invoke-static {v2}, Lcom/waps/DisplayAd;->access$600(Lcom/waps/DisplayAd;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_0

    # getter for: Lcom/waps/DisplayAd;->m:Ljava/lang/String;
    invoke-static {}, Lcom/waps/DisplayAd;->access$800()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, ""

    # getter for: Lcom/waps/DisplayAd;->m:Ljava/lang/String;
    invoke-static {}, Lcom/waps/DisplayAd;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    # getter for: Lcom/waps/DisplayAd;->k:Ljava/lang/String;
    invoke-static {}, Lcom/waps/DisplayAd;->access$900()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/waps/o;->a:Lcom/waps/DisplayAd;

    # getter for: Lcom/waps/DisplayAd;->g:Landroid/content/Context;
    invoke-static {v1}, Lcom/waps/DisplayAd;->access$600(Lcom/waps/DisplayAd;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_3
    return-void

    :catch_0
    move-exception v0

    move-object v1, v5

    :goto_4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_1

    :cond_2
    move v1, v6

    goto :goto_2

    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waps/o;->a:Lcom/waps/DisplayAd;

    # getter for: Lcom/waps/DisplayAd;->g:Landroid/content/Context;
    invoke-static {v2}, Lcom/waps/DisplayAd;->access$600(Lcom/waps/DisplayAd;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/waps/OffersWebView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "URL"

    # getter for: Lcom/waps/DisplayAd;->k:Ljava/lang/String;
    invoke-static {}, Lcom/waps/DisplayAd;->access$900()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isFinshClose"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CLIENT_PACKAGE"

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/waps/o;->a:Lcom/waps/DisplayAd;

    # getter for: Lcom/waps/DisplayAd;->g:Landroid/content/Context;
    invoke-static {v0}, Lcom/waps/DisplayAd;->access$600(Lcom/waps/DisplayAd;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_4
    move v1, v6

    goto :goto_2
.end method
