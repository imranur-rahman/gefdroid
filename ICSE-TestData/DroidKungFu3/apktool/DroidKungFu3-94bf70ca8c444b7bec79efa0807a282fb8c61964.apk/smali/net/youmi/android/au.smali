.class Lnet/youmi/android/au;
.super Ljava/lang/Object;


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Z

.field private a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private final p:Ljava/util/Vector;

.field private q:I

.field private final r:[I

.field private s:I

.field private t:[I

.field private u:[B

.field private final v:[I

.field private final w:[B

.field private final x:[S

.field private final y:[B

.field private final z:[B


# direct methods
.method constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lnet/youmi/android/au;-><init>([BII)V

    return-void
.end method

.method constructor <init>([BII)V
    .locals 4

    const/16 v3, 0x1000

    const/16 v2, 0x100

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/au;->p:Ljava/util/Vector;

    iput v1, p0, Lnet/youmi/android/au;->q:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/youmi/android/au;->r:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lnet/youmi/android/au;->v:[I

    new-array v0, v2, [B

    iput-object v0, p0, Lnet/youmi/android/au;->w:[B

    new-array v0, v3, [S

    iput-object v0, p0, Lnet/youmi/android/au;->x:[S

    new-array v0, v3, [B

    iput-object v0, p0, Lnet/youmi/android/au;->y:[B

    const/16 v0, 0x1001

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/youmi/android/au;->z:[B

    iput-boolean v1, p0, Lnet/youmi/android/au;->B:Z

    iput-object p1, p0, Lnet/youmi/android/au;->a:[B

    iput p2, p0, Lnet/youmi/android/au;->b:I

    invoke-direct {p0}, Lnet/youmi/android/au;->g()V

    return-void
.end method

.method private final a(II)V
    .locals 5

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lnet/youmi/android/au;->a:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lnet/youmi/android/au;->a:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lnet/youmi/android/au;->a:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/youmi/android/au;->v:[I

    const/high16 v4, -0x1000000

    or-int/2addr v1, v4

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0
.end method

.method static synthetic a(Lnet/youmi/android/au;I)V
    .locals 0

    iput p1, p0, Lnet/youmi/android/au;->b:I

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/au;[B)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/au;->u:[B

    return-void
.end method

.method private final a(Lnet/youmi/android/o;[I)V
    .locals 19

    invoke-virtual/range {p1 .. p1}, Lnet/youmi/android/o;->a()V

    move-object/from16 v0, p1

    iget v0, v0, Lnet/youmi/android/o;->e:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Lnet/youmi/android/o;->k:I

    move v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lnet/youmi/android/o;->j:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/au;->a(II)V

    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/youmi/android/o;->n:[I

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_9

    const/4 v7, 0x3

    aget v7, v3, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    const/4 v4, 0x1

    const/4 v5, 0x5

    aget v3, v3, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/au;->v:[I

    move-object v5, v0

    aget v5, v5, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/au;->v:[I

    move-object v6, v0

    const/4 v7, 0x0

    aput v7, v6, v3

    move/from16 v18, v5

    move v5, v4

    move v4, v3

    move/from16 v3, v18

    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lnet/youmi/android/o;->f:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Lnet/youmi/android/o;->c:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Lnet/youmi/android/o;->d:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Lnet/youmi/android/o;->a:I

    move v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Lnet/youmi/android/o;->b:I

    move v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v18, v12

    move v12, v11

    move/from16 v11, v18

    :goto_3
    if-lt v11, v8, :cond_3

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/au;->v:[I

    move-object v5, v0

    aput v3, v5, v4

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lnet/youmi/android/au;->m:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/youmi/android/au;->l:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/au;->a(II)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    add-int v12, v10, v11

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lnet/youmi/android/au;->d:I

    move v13, v0

    if-ge v12, v13, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lnet/youmi/android/au;->c:I

    move v13, v0

    mul-int/2addr v13, v12

    add-int v14, v13, v9

    add-int v15, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Lnet/youmi/android/au;->c:I

    move/from16 v16, v0

    add-int v16, v16, v13

    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lnet/youmi/android/au;->c:I

    move v15, v0

    add-int/2addr v13, v15

    :goto_4
    mul-int v15, v11, v7

    move/from16 v18, v15

    move v15, v14

    move/from16 v14, v18

    :goto_5
    if-lt v15, v13, :cond_6

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/au;->u:[B

    move-object/from16 v16, v0

    add-int/lit8 v17, v14, 0x1

    aget-byte v14, v16, v14

    and-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/youmi/android/au;->v:[I

    move-object/from16 v16, v0

    aget v14, v16, v14

    if-eqz v14, :cond_7

    aput v14, p2, v15

    :cond_7
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    move/from16 v14, v17

    goto :goto_5

    :cond_8
    move v13, v15

    goto :goto_4

    :cond_9
    move v3, v6

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    goto/16 :goto_1
.end method

.method static synthetic a(Lnet/youmi/android/au;)[B
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    return-object v0
.end method

.method static synthetic b(Lnet/youmi/android/au;)I
    .locals 1

    iget v0, p0, Lnet/youmi/android/au;->b:I

    return v0
.end method

.method private final b(I)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lnet/youmi/android/au;->t:[I

    if-nez v0, :cond_0

    iget v0, p0, Lnet/youmi/android/au;->c:I

    iget v1, p0, Lnet/youmi/android/au;->d:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/youmi/android/au;->t:[I

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/au;->p:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/youmi/android/o;

    iget-object v1, v0, Lnet/youmi/android/o;->n:[I

    iget v2, p0, Lnet/youmi/android/au;->q:I

    if-lez v2, :cond_1

    iget v2, p0, Lnet/youmi/android/au;->q:I

    if-ne v2, v9, :cond_1

    if-eqz v1, :cond_5

    aget v2, v1, v10

    if-ne v2, v8, :cond_5

    iget-object v2, p0, Lnet/youmi/android/au;->r:[I

    aget v2, v2, v8

    :goto_0
    iget-object v3, p0, Lnet/youmi/android/au;->r:[I

    aget v3, v3, v10

    if-lt v2, v3, :cond_3

    :cond_1
    iget-object v2, p0, Lnet/youmi/android/au;->t:[I

    invoke-direct {p0, v0, v2}, Lnet/youmi/android/au;->a(Lnet/youmi/android/o;[I)V

    iget v2, p0, Lnet/youmi/android/au;->j:I

    iput v2, p0, Lnet/youmi/android/au;->s:I

    iput v7, p0, Lnet/youmi/android/au;->q:I

    if-eqz v1, :cond_2

    aget v2, v1, v8

    iput v2, p0, Lnet/youmi/android/au;->q:I

    iget v2, v0, Lnet/youmi/android/o;->e:I

    if-nez v2, :cond_2

    iget v2, p0, Lnet/youmi/android/au;->i:I

    const/4 v3, 0x5

    aget v1, v1, v3

    if-ne v2, v1, :cond_2

    iput v7, p0, Lnet/youmi/android/au;->s:I

    :cond_2
    iget-object v1, p0, Lnet/youmi/android/au;->r:[I

    iget v2, v0, Lnet/youmi/android/o;->a:I

    aput v2, v1, v7

    iget-object v1, p0, Lnet/youmi/android/au;->r:[I

    iget v2, v0, Lnet/youmi/android/o;->b:I

    aput v2, v1, v8

    iget-object v1, p0, Lnet/youmi/android/au;->r:[I

    iget v2, v0, Lnet/youmi/android/o;->a:I

    iget v3, v0, Lnet/youmi/android/o;->c:I

    add-int/2addr v2, v3

    aput v2, v1, v9

    iget-object v1, p0, Lnet/youmi/android/au;->r:[I

    iget v2, v0, Lnet/youmi/android/o;->b:I

    iget v0, v0, Lnet/youmi/android/o;->d:I

    add-int/2addr v0, v2

    aput v0, v1, v10

    return-void

    :cond_3
    iget-object v3, p0, Lnet/youmi/android/au;->r:[I

    aget v3, v3, v7

    :goto_1
    iget-object v4, p0, Lnet/youmi/android/au;->r:[I

    aget v4, v4, v9

    if-lt v3, v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lnet/youmi/android/au;->t:[I

    iget v5, p0, Lnet/youmi/android/au;->c:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v3

    aput v7, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lnet/youmi/android/au;->r:[I

    aget v2, v2, v8

    :goto_2
    iget-object v3, p0, Lnet/youmi/android/au;->r:[I

    aget v3, v3, v10

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lnet/youmi/android/au;->r:[I

    aget v3, v3, v7

    :goto_3
    iget-object v4, p0, Lnet/youmi/android/au;->r:[I

    aget v4, v4, v9

    if-lt v3, v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lnet/youmi/android/au;->t:[I

    iget v5, p0, Lnet/youmi/android/au;->c:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v3

    iget v6, p0, Lnet/youmi/android/au;->s:I

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method static synthetic c(Lnet/youmi/android/au;)I
    .locals 1

    iget v0, p0, Lnet/youmi/android/au;->e:I

    return v0
.end method

.method static synthetic d(Lnet/youmi/android/au;)[B
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/au;->u:[B

    return-object v0
.end method

.method static synthetic e(Lnet/youmi/android/au;)[S
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/au;->x:[S

    return-object v0
.end method

.method static synthetic f(Lnet/youmi/android/au;)[B
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/au;->y:[B

    return-object v0
.end method

.method private final g()V
    .locals 8

    const/4 v6, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v7, ""

    const-string v0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/youmi/android/au;->a:[B

    iget v2, p0, Lnet/youmi/android/au;->b:I

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v2, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v0, v0, v2

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v2, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v0, v0, v2

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "this is not a gif image"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/youmi/android/au;->a:[B

    iget v2, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v2, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v2, v2, 0x4

    aget-byte v0, v0, v2

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v2, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v2, v2, 0x5

    aget-byte v0, v0, v2

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "87a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "89a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "this is not a gif image"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lnet/youmi/android/au;->b:I

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v1, p0, Lnet/youmi/android/au;->b:I

    invoke-static {v0, v1, v6}, Lnet/youmi/android/u;->a([BII)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/au;->c:I

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v1, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, v6}, Lnet/youmi/android/u;->a([BII)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/au;->d:I

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v1, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1, v5}, Lnet/youmi/android/u;->a(BII)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/au;->e:I

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v1, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    const/4 v1, 0x4

    invoke-static {v0, v1, v4}, Lnet/youmi/android/u;->a(BII)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/au;->f:I

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v1, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    invoke-static {v0, v4, v5}, Lnet/youmi/android/u;->a(BII)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/au;->g:I

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v1, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v1, v1, 0x4

    aget-byte v0, v0, v1

    invoke-static {v0, v3, v4}, Lnet/youmi/android/u;->a(BII)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/au;->h:I

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v1, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v1, v1, 0x5

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lnet/youmi/android/au;->i:I

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v1, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v1, v1, 0x6

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lnet/youmi/android/au;->k:I

    iget v0, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lnet/youmi/android/au;->b:I

    iget v0, p0, Lnet/youmi/android/au;->e:I

    if-ne v0, v5, :cond_2

    iget v0, p0, Lnet/youmi/android/au;->b:I

    iput v0, p0, Lnet/youmi/android/au;->m:I

    iget v0, p0, Lnet/youmi/android/au;->h:I

    add-int/lit8 v0, v0, 0x1

    shl-int v0, v5, v0

    iput v0, p0, Lnet/youmi/android/au;->l:I

    iget v0, p0, Lnet/youmi/android/au;->b:I

    iget v1, p0, Lnet/youmi/android/au;->l:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lnet/youmi/android/au;->b:I

    iget v0, p0, Lnet/youmi/android/au;->m:I

    iget v1, p0, Lnet/youmi/android/au;->l:I

    invoke-direct {p0, v0, v1}, Lnet/youmi/android/au;->a(II)V

    iget-object v0, p0, Lnet/youmi/android/au;->v:[I

    iget v1, p0, Lnet/youmi/android/au;->i:I

    aget v0, v0, v1

    iput v0, p0, Lnet/youmi/android/au;->j:I

    :cond_2
    const/4 v0, 0x0

    check-cast v0, [I

    iput v3, p0, Lnet/youmi/android/au;->n:I

    move-object v1, v0

    move v0, v3

    :goto_0
    if-eqz v0, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lnet/youmi/android/au;->a:[B

    iget v3, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/youmi/android/au;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lnet/youmi/android/au;->a:[B

    iget v3, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/youmi/android/au;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    invoke-direct {p0}, Lnet/youmi/android/au;->h()V

    goto :goto_0

    :sswitch_1
    new-instance v2, Lnet/youmi/android/o;

    invoke-direct {v2, p0}, Lnet/youmi/android/o;-><init>(Lnet/youmi/android/au;)V

    invoke-static {v2}, Lnet/youmi/android/o;->a(Lnet/youmi/android/o;)V

    iput-object v1, v2, Lnet/youmi/android/o;->n:[I

    iget-object v3, p0, Lnet/youmi/android/au;->p:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v2, p0, Lnet/youmi/android/au;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/youmi/android/au;->n:I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lnet/youmi/android/au;->i()[I

    move-result-object v1

    goto :goto_0

    :sswitch_2
    move v0, v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x2c -> :sswitch_1
        0x3b -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic g(Lnet/youmi/android/au;)[B
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/au;->w:[B

    return-object v0
.end method

.method private final h()V
    .locals 3

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v1, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/youmi/android/au;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lnet/youmi/android/au;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/youmi/android/au;->b:I

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v1, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/youmi/android/au;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method static synthetic h(Lnet/youmi/android/au;)[B
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/au;->z:[B

    return-object v0
.end method

.method private final i()[I
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Lnet/youmi/android/au;->a:[B

    iget v1, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/youmi/android/au;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v8, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "parse graphics extend block error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x6

    new-array v1, v1, [I

    iget-object v2, p0, Lnet/youmi/android/au;->a:[B

    iget v3, p0, Lnet/youmi/android/au;->b:I

    aget-byte v2, v2, v3

    const/4 v3, 0x5

    invoke-static {v2, v3, v6}, Lnet/youmi/android/u;->a(BII)I

    move-result v2

    aput v2, v1, v7

    iget-object v2, p0, Lnet/youmi/android/au;->a:[B

    iget v3, p0, Lnet/youmi/android/au;->b:I

    aget-byte v2, v2, v3

    invoke-static {v2, v4, v6}, Lnet/youmi/android/u;->a(BII)I

    move-result v2

    aput v2, v1, v5

    iget-object v2, p0, Lnet/youmi/android/au;->a:[B

    iget v3, p0, Lnet/youmi/android/au;->b:I

    aget-byte v2, v2, v3

    invoke-static {v2, v5, v5}, Lnet/youmi/android/u;->a(BII)I

    move-result v2

    aput v2, v1, v4

    iget-object v2, p0, Lnet/youmi/android/au;->a:[B

    iget v3, p0, Lnet/youmi/android/au;->b:I

    aget-byte v2, v2, v3

    invoke-static {v2, v7, v5}, Lnet/youmi/android/u;->a(BII)I

    move-result v2

    aput v2, v1, v6

    iget-object v2, p0, Lnet/youmi/android/au;->a:[B

    iget v3, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3, v4}, Lnet/youmi/android/u;->a([BII)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    aput v2, v1, v8

    const/4 v2, 0x5

    iget-object v3, p0, Lnet/youmi/android/au;->a:[B

    iget v4, p0, Lnet/youmi/android/au;->b:I

    add-int/lit8 v4, v4, 0x3

    invoke-static {v3, v4, v5}, Lnet/youmi/android/u;->a([BII)I

    move-result v3

    aput v3, v1, v2

    iget v2, p0, Lnet/youmi/android/au;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lnet/youmi/android/au;->b:I

    return-object v1
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/au;->c:I

    return v0
.end method

.method final a(I)I
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lnet/youmi/android/au;->n:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the frame[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lnet/youmi/android/au;->p:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/youmi/android/o;

    iget-object v1, p0, Lnet/youmi/android/o;->n:[I

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    aget v0, v1, v0

    :cond_2
    return v0
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/au;->d:I

    return v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/au;->n:I

    return v0
.end method

.method final d()[I
    .locals 2

    iget v0, p0, Lnet/youmi/android/au;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/youmi/android/au;->o:I

    invoke-direct {p0, v0}, Lnet/youmi/android/au;->b(I)V

    iget v0, p0, Lnet/youmi/android/au;->o:I

    iget v1, p0, Lnet/youmi/android/au;->n:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/au;->o:I

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/au;->t:[I

    return-object v0
.end method

.method final e()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-boolean v0, p0, Lnet/youmi/android/au;->B:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/youmi/android/au;->d()[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/au;->a()I

    move-result v1

    invoke-virtual {p0}, Lnet/youmi/android/au;->b()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/au;->A:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lnet/youmi/android/au;->d()[I

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/youmi/android/au;->a()I

    move-result v1

    invoke-virtual {p0}, Lnet/youmi/android/au;->b()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v4

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/au;->B:Z

    iget-object v0, p0, Lnet/youmi/android/au;->A:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_0
.end method

.method final f()I
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lnet/youmi/android/au;->o:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lnet/youmi/android/au;->n:I

    sub-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0, v0}, Lnet/youmi/android/au;->a(I)I

    move-result v0

    return v0
.end method
