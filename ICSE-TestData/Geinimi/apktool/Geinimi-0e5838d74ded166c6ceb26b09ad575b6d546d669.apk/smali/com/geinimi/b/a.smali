.class public final Lcom/geinimi/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geinimi/b/a;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/geinimi/b/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/geinimi/b/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/geinimi/b/a;

    iget-object v0, p1, Lcom/geinimi/b/a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/geinimi/b/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
