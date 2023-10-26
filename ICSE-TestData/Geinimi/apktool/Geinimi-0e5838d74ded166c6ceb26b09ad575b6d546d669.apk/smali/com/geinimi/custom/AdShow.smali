.class public Lcom/geinimi/custom/AdShow;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show()V
    .locals 2

    invoke-static {}, Lcom/geinimi/c/k;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/geinimi/AdService;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/geinimi/ads/q;->c:Lcom/geinimi/ads/r;

    invoke-virtual {v0, v1}, Lcom/geinimi/AdService;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
