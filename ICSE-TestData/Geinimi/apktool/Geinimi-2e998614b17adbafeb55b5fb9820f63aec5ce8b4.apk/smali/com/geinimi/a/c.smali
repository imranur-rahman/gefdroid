.class public final Lcom/geinimi/a/c;
.super Lcom/geinimi/a/a;


# instance fields
.field private b:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/geinimi/a/a;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/geinimi/a/c;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/geinimi/a/c;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/geinimi/a/c;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/geinimi/a/c;->b:I

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lcom/geinimi/a/c;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/geinimi/a/c;->b:I

    invoke-static {v0}, Lcom/geinimi/AdServiceThread;->a(I)V

    :cond_0
    return-void
.end method
