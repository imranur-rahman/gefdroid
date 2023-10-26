.class public final Lcom/geinimi/m;
.super Lcom/geinimi/AdPushable;


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:[Ljava/lang/String;


# instance fields
.field private o:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/m;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/m;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/m;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/m;->f:Ljava/lang/String;

    invoke-static {v7}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/m;->g:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/m;->h:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/m;->i:Ljava/lang/String;

    const/16 v0, 0x40

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/m;->j:Ljava/lang/String;

    const/16 v0, 0x41

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/m;->k:Ljava/lang/String;

    const/16 v0, 0x42

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/m;->l:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/m;->m:Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/geinimi/m;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/geinimi/m;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/geinimi/m;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/geinimi/m;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/geinimi/m;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/geinimi/m;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Lcom/geinimi/m;->i:Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/geinimi/m;->m:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Lcom/geinimi/m;->j:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Lcom/geinimi/m;->k:Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Lcom/geinimi/m;->l:Ljava/lang/String;

    aput-object v1, v0, v7

    sput-object v0, Lcom/geinimi/m;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/geinimi/AdPushable;-><init>(Ljava/util/HashMap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geinimi/m;->o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geinimi/m;->o:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/geinimi/m;->n:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/geinimi/m;->n:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/geinimi/m;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/geinimi/m;->n:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/geinimi/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/geinimi/m;->n:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/geinimi/m;->n:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/geinimi/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/geinimi/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/geinimi/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/geinimi/m;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method final a(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/geinimi/m;->n:[Ljava/lang/String;

    return-object v0
.end method

.method final b(Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/geinimi/m;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/geinimi/m;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geinimi/a/a;

    invoke-virtual {v0}, Lcom/geinimi/a/a;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return v2
.end method
