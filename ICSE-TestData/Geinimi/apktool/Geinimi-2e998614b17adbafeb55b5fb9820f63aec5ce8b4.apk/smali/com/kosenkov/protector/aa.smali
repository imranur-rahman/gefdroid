.class final Lcom/kosenkov/protector/aa;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/kosenkov/protector/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/SettingsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/aa;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/kosenkov/protector/aa;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-virtual {v0}, Lcom/kosenkov/protector/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, p0, Lcom/kosenkov/protector/aa;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-static {v0}, Lcom/kosenkov/protector/SettingsActivity;->a(Lcom/kosenkov/protector/SettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosenkov/protector/r;

    iget-object v3, v0, Lcom/kosenkov/protector/r;->e:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/kosenkov/protector/r;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/kosenkov/protector/r;->b:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/kosenkov/protector/aa;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-static {v4}, Lcom/kosenkov/protector/SettingsActivity;->b(Lcom/kosenkov/protector/SettingsActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/kosenkov/protector/r;->e:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/kosenkov/protector/r;->b:Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/kosenkov/protector/r;->e:Landroid/content/pm/ResolveInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kosenkov/protector/aa;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-static {v0}, Lcom/kosenkov/protector/SettingsActivity;->a(Lcom/kosenkov/protector/SettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/kosenkov/protector/aa;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-static {v0}, Lcom/kosenkov/protector/SettingsActivity;->c(Lcom/kosenkov/protector/SettingsActivity;)Landroid/widget/GridView;

    move-result-object v0

    new-instance v1, Lcom/kosenkov/protector/h;

    invoke-direct {v1, p0}, Lcom/kosenkov/protector/h;-><init>(Lcom/kosenkov/protector/aa;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
