.class public Lcom/sec/android/providers/drm/Scientists;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/providers/drm/Scientists;->a:Ljava/io/OutputStream;

    iput v1, p0, Lcom/sec/android/providers/drm/Scientists;->b:I

    iput v1, p0, Lcom/sec/android/providers/drm/Scientists;->c:I

    iput v1, p0, Lcom/sec/android/providers/drm/Scientists;->d:I

    iput v1, p0, Lcom/sec/android/providers/drm/Scientists;->e:I

    iput-object p1, p0, Lcom/sec/android/providers/drm/Scientists;->a:Ljava/io/OutputStream;

    iput p2, p0, Lcom/sec/android/providers/drm/Scientists;->e:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/sec/android/providers/drm/Scientists;->c:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/android/providers/drm/Scientists;->e:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/providers/drm/Scientists;->d:I

    iget v1, p0, Lcom/sec/android/providers/drm/Scientists;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/providers/drm/Scientists;->a:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iput v5, p0, Lcom/sec/android/providers/drm/Scientists;->d:I

    :cond_0
    sget-object v0, Lcom/sec/android/providers/drm/Keywords;->a:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/providers/drm/Scientists;->b:I

    shl-int/lit8 v1, v1, 0x8

    ushr-int/lit8 v1, v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-object v1, Lcom/sec/android/providers/drm/Keywords;->a:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/providers/drm/Scientists;->b:I

    shl-int/lit8 v2, v2, 0xe

    ushr-int/lit8 v2, v2, 0x1a

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/sec/android/providers/drm/Scientists;->c:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    sget-char v2, Lcom/sec/android/providers/drm/Keywords;->b:C

    :goto_0
    iget v3, p0, Lcom/sec/android/providers/drm/Scientists;->c:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    sget-char v3, Lcom/sec/android/providers/drm/Keywords;->b:C

    :goto_1
    iget-object v4, p0, Lcom/sec/android/providers/drm/Scientists;->a:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/sec/android/providers/drm/Scientists;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/sec/android/providers/drm/Scientists;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/sec/android/providers/drm/Scientists;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/sec/android/providers/drm/Scientists;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sec/android/providers/drm/Scientists;->d:I

    iput v5, p0, Lcom/sec/android/providers/drm/Scientists;->c:I

    iput v5, p0, Lcom/sec/android/providers/drm/Scientists;->b:I

    :cond_1
    return-void

    :cond_2
    sget-object v2, Lcom/sec/android/providers/drm/Keywords;->a:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/providers/drm/Scientists;->b:I

    shl-int/lit8 v3, v3, 0x14

    ushr-int/lit8 v3, v3, 0x1a

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/sec/android/providers/drm/Keywords;->a:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/providers/drm/Scientists;->b:I

    shl-int/lit8 v4, v4, 0x1a

    ushr-int/lit8 v4, v4, 0x1a

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/providers/drm/Scientists;->a()V

    iget-object v0, p0, Lcom/sec/android/providers/drm/Scientists;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 3

    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0x10

    iget v2, p0, Lcom/sec/android/providers/drm/Scientists;->c:I

    mul-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    shl-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/providers/drm/Scientists;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/providers/drm/Scientists;->b:I

    iget v0, p0, Lcom/sec/android/providers/drm/Scientists;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/providers/drm/Scientists;->c:I

    iget v0, p0, Lcom/sec/android/providers/drm/Scientists;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/providers/drm/Scientists;->a()V

    :cond_0
    return-void
.end method