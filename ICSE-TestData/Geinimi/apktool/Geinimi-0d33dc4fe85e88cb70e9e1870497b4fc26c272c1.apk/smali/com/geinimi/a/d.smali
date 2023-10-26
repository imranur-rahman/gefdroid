.class public final Lcom/geinimi/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/a/d;->a:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/a/d;->b:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/a/d;->c:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/a/d;->d:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/a/d;->e:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/a/d;->f:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/a/d;->g:Ljava/lang/String;

    const/16 v0, 0x40

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/a/d;->h:Ljava/lang/String;

    const/16 v0, 0x41

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/a/d;->i:Ljava/lang/String;

    const/16 v0, 0x42

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/a/d;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/geinimi/a/a;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/geinimi/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/geinimi/a/e;

    invoke-direct {v0, p1}, Lcom/geinimi/a/e;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/geinimi/a/a;->a()V

    :cond_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/geinimi/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/geinimi/a/k;

    invoke-direct {v0, p1}, Lcom/geinimi/a/k;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/geinimi/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/geinimi/a/f;

    invoke-direct {v0, p1}, Lcom/geinimi/a/f;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/geinimi/a/d;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/geinimi/a/g;

    invoke-direct {v0, p1}, Lcom/geinimi/a/g;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/geinimi/a/d;->e:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/geinimi/a/j;

    invoke-direct {v0, p1}, Lcom/geinimi/a/j;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/geinimi/a/d;->f:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/geinimi/a/h;

    invoke-direct {v0, p1}, Lcom/geinimi/a/h;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/geinimi/a/d;->g:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/geinimi/a/b;

    invoke-direct {v0, p1}, Lcom/geinimi/a/b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/geinimi/a/d;->h:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Lcom/geinimi/a/l;

    invoke-direct {v0, p1}, Lcom/geinimi/a/l;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/geinimi/a/d;->i:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lcom/geinimi/a/i;

    invoke-direct {v0, p1}, Lcom/geinimi/a/i;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/geinimi/a/d;->j:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/geinimi/a/c;

    invoke-direct {v0, p1}, Lcom/geinimi/a/c;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find the Adcommandable as key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method
