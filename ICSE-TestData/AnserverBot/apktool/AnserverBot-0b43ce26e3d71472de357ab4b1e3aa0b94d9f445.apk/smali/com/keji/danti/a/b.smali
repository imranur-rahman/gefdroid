.class Lcom/keji/danti/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/pd;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/pd;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/b;->a:Lcom/keji/danti/a/pd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/keji/danti/a/b;->a:Lcom/keji/danti/a/pd;

    iget-object v0, v0, Lcom/keji/danti/a/pd;->a:Lcom/keji/danti/a/ph;

    invoke-static {v0}, Lcom/keji/danti/a/ph;->a(Lcom/keji/danti/a/ph;)Ljava/util/List;

    iget-object v0, p0, Lcom/keji/danti/a/b;->a:Lcom/keji/danti/a/pd;

    iget-object v0, v0, Lcom/keji/danti/a/pd;->a:Lcom/keji/danti/a/ph;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/keji/danti/a/ph;->a(Lcom/keji/danti/a/ph;I)V

    return-void
.end method
