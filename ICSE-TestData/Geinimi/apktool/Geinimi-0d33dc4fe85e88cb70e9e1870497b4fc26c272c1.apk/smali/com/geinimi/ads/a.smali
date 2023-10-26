.class public Lcom/geinimi/ads/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/geinimi/b/a;

.field private b:Lcom/geinimi/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/geinimi/b/a;Lcom/geinimi/b/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geinimi/ads/a;->a:Lcom/geinimi/b/a;

    iput-object p1, p0, Lcom/geinimi/ads/a;->a:Lcom/geinimi/b/a;

    iput-object p2, p0, Lcom/geinimi/ads/a;->b:Lcom/geinimi/b/c;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/geinimi/ads/Advertisable;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAdvertisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/geinimi/r;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/geinimi/ads/d;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/d;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/geinimi/ads/Advertisable;->c()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/geinimi/r;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/geinimi/ads/e;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/e;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/geinimi/r;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/geinimi/ads/h;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/h;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/geinimi/r;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/geinimi/ads/i;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/i;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/geinimi/r;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/geinimi/ads/m;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/m;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/geinimi/r;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/geinimi/ads/g;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/g;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/geinimi/r;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/geinimi/ads/j;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/j;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/geinimi/r;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/geinimi/ads/f;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/f;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/geinimi/r;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/geinimi/ads/c;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/c;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/geinimi/r;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/geinimi/ads/s;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/s;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    sget-object v0, Lcom/geinimi/r;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/geinimi/ads/k;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/k;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    sget-object v0, Lcom/geinimi/r;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/geinimi/ads/d;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/d;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    sget-object v0, Lcom/geinimi/r;->r:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/geinimi/ads/q;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/q;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    sget-object v0, Lcom/geinimi/r;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/geinimi/ads/n;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/n;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    sget-object v0, Lcom/geinimi/r;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/geinimi/ads/o;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/o;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    sget-object v0, Lcom/geinimi/r;->u:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/geinimi/ads/l;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/l;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    sget-object v0, Lcom/geinimi/r;->v:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/geinimi/ads/p;

    invoke-direct {v0, p0}, Lcom/geinimi/ads/p;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find advertisable as content : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/geinimi/ads/a;->b:Lcom/geinimi/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geinimi/ads/a;->b:Lcom/geinimi/b/c;

    invoke-virtual {v0}, Lcom/geinimi/b/c;->a()V

    :cond_0
    return-void
.end method

.method public b()Lcom/geinimi/b/a;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/ads/a;->a:Lcom/geinimi/b/a;

    return-object v0
.end method
