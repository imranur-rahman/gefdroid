.class public Lcom/geinimi/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/geinimi/b/d;

.field private b:Lcom/geinimi/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/geinimi/b/d;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/geinimi/b/b;->a:[Lcom/geinimi/b/d;

    iput-object v0, p0, Lcom/geinimi/b/b;->b:Lcom/geinimi/b/d;

    iput-object p1, p0, Lcom/geinimi/b/b;->a:[Lcom/geinimi/b/d;

    iget-object v0, p0, Lcom/geinimi/b/b;->a:[Lcom/geinimi/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geinimi/b/b;->a:[Lcom/geinimi/b/d;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/geinimi/b/b;->a:[Lcom/geinimi/b/d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/geinimi/b/b;->b:Lcom/geinimi/b/d;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/geinimi/b/d;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/b/b;->b:Lcom/geinimi/b/d;

    return-object v0
.end method

.method public final a(Lcom/geinimi/b/d;)V
    .locals 3

    iget-object v0, p0, Lcom/geinimi/b/b;->b:Lcom/geinimi/b/d;

    invoke-virtual {v0}, Lcom/geinimi/b/d;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/geinimi/b/b;->b:Lcom/geinimi/b/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/geinimi/b/b;->b:Lcom/geinimi/b/d;

    invoke-virtual {v1}, Lcom/geinimi/b/d;->b()V

    :cond_0
    iput-object p1, p0, Lcom/geinimi/b/b;->b:Lcom/geinimi/b/d;

    iget-object v1, p0, Lcom/geinimi/b/b;->b:Lcom/geinimi/b/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/geinimi/b/b;->b:Lcom/geinimi/b/d;

    invoke-virtual {v1}, Lcom/geinimi/b/d;->c()V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State change from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geinimi/b/b;->b:Lcom/geinimi/b/d;

    invoke-virtual {v1}, Lcom/geinimi/b/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/geinimi/b/a;)Z
    .locals 1

    iget-object v0, p0, Lcom/geinimi/b/b;->b:Lcom/geinimi/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geinimi/b/b;->b:Lcom/geinimi/b/d;

    invoke-virtual {v0, p1}, Lcom/geinimi/b/d;->a(Lcom/geinimi/b/a;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()[Lcom/geinimi/b/d;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/b/b;->a:[Lcom/geinimi/b/d;

    return-object v0
.end method
