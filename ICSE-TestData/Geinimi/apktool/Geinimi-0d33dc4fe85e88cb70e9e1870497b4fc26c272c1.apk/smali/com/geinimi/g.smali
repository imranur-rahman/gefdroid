.class final Lcom/geinimi/g;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/geinimi/ads/Advertisable;

.field private synthetic b:Lcom/geinimi/AdActivity;


# direct methods
.method constructor <init>(Lcom/geinimi/AdActivity;Lcom/geinimi/ads/Advertisable;)V
    .locals 0

    iput-object p1, p0, Lcom/geinimi/g;->b:Lcom/geinimi/AdActivity;

    iput-object p2, p0, Lcom/geinimi/g;->a:Lcom/geinimi/ads/Advertisable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/geinimi/g;->a:Lcom/geinimi/ads/Advertisable;

    invoke-virtual {v0}, Lcom/geinimi/ads/Advertisable;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geinimi/g;->b:Lcom/geinimi/AdActivity;

    iget-object v1, p0, Lcom/geinimi/g;->a:Lcom/geinimi/ads/Advertisable;

    invoke-virtual {v1}, Lcom/geinimi/ads/Advertisable;->f()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geinimi/AdActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/geinimi/g;->a:Lcom/geinimi/ads/Advertisable;

    instance-of v0, v0, Lcom/geinimi/ads/g;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/geinimi/AdActivity;->a(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/geinimi/g;->a:Lcom/geinimi/ads/Advertisable;

    instance-of v0, v0, Lcom/geinimi/ads/s;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/geinimi/AdActivity;->b(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
