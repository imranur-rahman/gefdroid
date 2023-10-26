.class public Lcom/adview/ad/BASE64Encoder;
.super Ljava/lang/Object;
.source "BASE64Encoder.java"


# static fields
.field static charSet:Ljava/lang/String;

.field static encodeData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x40

    .line 6
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 5
    sput-object v2, Lcom/adview/ad/BASE64Encoder;->charSet:Ljava/lang/String;

    .line 9
    new-array v2, v3, [B

    sput-object v2, Lcom/adview/ad/BASE64Encoder;->encodeData:[B

    .line 10
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 3
    return-void

    .line 11
    :cond_0
    sget-object v2, Lcom/adview/ad/BASE64Encoder;->charSet:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v0, v2

    .line 12
    .local v0, "c":B
    sget-object v2, Lcom/adview/ad/BASE64Encoder;->encodeData:[B

    aput-byte v0, v2, v1

    .line 10
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, "end":I
    const-string v7, "="

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 111
    :cond_0
    const-string v7, "=="

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    add-int/lit8 v3, v3, 0x1

    .line 114
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    sub-int v4, v7, v3

    .line 115
    .local v4, "len":I
    new-array v5, v4, [B

    .line 116
    .local v5, "result":[B
    const/4 v1, 0x0

    .line 118
    .local v1, "dst":I
    const/4 v6, 0x0

    .local v6, "src":I
    move v2, v1

    .end local v1    # "dst":I
    .local v2, "dst":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_2

    move v1, v2

    .line 141
    .end local v2    # "dst":I
    .restart local v1    # "dst":I
    :goto_1
    return-object v5

    .line 119
    .end local v1    # "dst":I
    .restart local v2    # "dst":I
    :cond_2
    sget-object v7, Lcom/adview/ad/BASE64Encoder;->charSet:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 120
    .local v0, "code":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    move v1, v2

    .line 121
    .end local v2    # "dst":I
    .restart local v1    # "dst":I
    goto :goto_1

    .line 123
    .end local v1    # "dst":I
    .restart local v2    # "dst":I
    :cond_3
    rem-int/lit8 v7, v6, 0x4

    packed-switch v7, :pswitch_data_0

    move v1, v2

    .line 118
    .end local v2    # "dst":I
    .restart local v1    # "dst":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v2, v1

    .end local v1    # "dst":I
    .restart local v2    # "dst":I
    goto :goto_0

    .line 125
    :pswitch_0
    shl-int/lit8 v7, v0, 0x2

    int-to-byte v7, v7

    aput-byte v7, v5, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 126
    .end local v2    # "dst":I
    .restart local v1    # "dst":I
    goto :goto_2

    .line 128
    .end local v1    # "dst":I
    .restart local v2    # "dst":I
    :pswitch_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "dst":I
    .restart local v1    # "dst":I
    :try_start_1
    aget-byte v7, v5, v2

    shr-int/lit8 v8, v0, 0x4

    and-int/lit8 v8, v8, 0x3

    int-to-byte v8, v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v2

    .line 129
    shl-int/lit8 v7, v0, 0x4

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    goto :goto_2

    .line 140
    :catch_0
    move-exception v7

    goto :goto_1

    .line 132
    .end local v1    # "dst":I
    .restart local v2    # "dst":I
    :pswitch_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "dst":I
    .restart local v1    # "dst":I
    aget-byte v7, v5, v2

    shr-int/lit8 v8, v0, 0x2

    and-int/lit8 v8, v8, 0xf

    int-to-byte v8, v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v2

    .line 133
    shl-int/lit8 v7, v0, 0x6

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    goto :goto_2

    .line 136
    .end local v1    # "dst":I
    .restart local v2    # "dst":I
    :pswitch_3
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "dst":I
    .restart local v1    # "dst":I
    aget-byte v7, v5, v2

    and-int/lit8 v8, v0, 0x3f

    int-to-byte v8, v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 140
    .end local v0    # "code":I
    .end local v1    # "dst":I
    .restart local v2    # "dst":I
    :catch_1
    move-exception v7

    move v1, v2

    .end local v2    # "dst":I
    .restart local v1    # "dst":I
    goto :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/adview/ad/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # [B

    .prologue
    .line 37
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/adview/ad/BASE64Encoder;->encode([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)Ljava/lang/String;
    .locals 13
    .param p0, "src"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v12, 0x3d

    .line 50
    add-int/lit8 v9, p2, 0x2

    div-int/lit8 v9, v9, 0x3

    mul-int/lit8 v9, v9, 0x4

    div-int/lit8 v10, p2, 0x48

    add-int/2addr v9, v10

    new-array v0, v9, [B

    .line 51
    .local v0, "dst":[B
    const/4 v8, 0x0

    .line 52
    .local v8, "x":I
    const/4 v1, 0x0

    .line 53
    .local v1, "dstIndex":I
    const/4 v7, 0x0

    .line 54
    .local v7, "state":I
    const/4 v5, 0x0

    .line 55
    .local v5, "old":I
    const/4 v3, 0x0

    .line 56
    .local v3, "len":I
    add-int v4, p2, p1

    .line 57
    .local v4, "max":I
    move v6, p1

    .local v6, "srcIndex":I
    move v2, v1

    .end local v1    # "dstIndex":I
    .local v2, "dstIndex":I
    :goto_0
    if-lt v6, v4, :cond_0

    .line 85
    packed-switch v7, :pswitch_data_0

    :goto_1
    move v1, v2

    .line 94
    .end local v2    # "dstIndex":I
    .restart local v1    # "dstIndex":I
    :goto_2
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    return-object v9

    .line 58
    .end local v1    # "dstIndex":I
    .restart local v2    # "dstIndex":I
    :cond_0
    aget-byte v8, p0, v6

    .line 59
    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_1

    .line 74
    :goto_3
    move v5, v8

    .line 75
    add-int/lit8 v3, v3, 0x1

    const/16 v9, 0x48

    if-lt v3, v9, :cond_1

    .line 76
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "dstIndex":I
    .restart local v1    # "dstIndex":I
    const/16 v9, 0xa

    aput-byte v9, v0, v2

    .line 77
    const/4 v3, 0x0

    .line 57
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move v2, v1

    .end local v1    # "dstIndex":I
    .restart local v2    # "dstIndex":I
    goto :goto_0

    .line 61
    :pswitch_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "dstIndex":I
    .restart local v1    # "dstIndex":I
    sget-object v9, Lcom/adview/ad/BASE64Encoder;->encodeData:[B

    shr-int/lit8 v10, v8, 0x2

    and-int/lit8 v10, v10, 0x3f

    aget-byte v9, v9, v10

    aput-byte v9, v0, v2

    move v2, v1

    .line 62
    .end local v1    # "dstIndex":I
    .restart local v2    # "dstIndex":I
    goto :goto_3

    .line 64
    :pswitch_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "dstIndex":I
    .restart local v1    # "dstIndex":I
    sget-object v9, Lcom/adview/ad/BASE64Encoder;->encodeData:[B

    shl-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0x30

    .line 65
    shr-int/lit8 v11, v8, 0x4

    and-int/lit8 v11, v11, 0xf

    or-int/2addr v10, v11

    aget-byte v9, v9, v10

    .line 64
    aput-byte v9, v0, v2

    move v2, v1

    .line 66
    .end local v1    # "dstIndex":I
    .restart local v2    # "dstIndex":I
    goto :goto_3

    .line 68
    :pswitch_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "dstIndex":I
    .restart local v1    # "dstIndex":I
    sget-object v9, Lcom/adview/ad/BASE64Encoder;->encodeData:[B

    shl-int/lit8 v10, v5, 0x2

    and-int/lit8 v10, v10, 0x3c

    .line 69
    shr-int/lit8 v11, v8, 0x6

    and-int/lit8 v11, v11, 0x3

    or-int/2addr v10, v11

    aget-byte v9, v9, v10

    .line 68
    aput-byte v9, v0, v2

    .line 70
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "dstIndex":I
    .restart local v2    # "dstIndex":I
    sget-object v9, Lcom/adview/ad/BASE64Encoder;->encodeData:[B

    and-int/lit8 v10, v8, 0x3f

    aget-byte v9, v9, v10

    aput-byte v9, v0, v1

    .line 71
    const/4 v7, 0x0

    goto :goto_3

    .line 86
    :pswitch_3
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "dstIndex":I
    .restart local v1    # "dstIndex":I
    sget-object v9, Lcom/adview/ad/BASE64Encoder;->encodeData:[B

    shl-int/lit8 v10, v5, 0x4

    and-int/lit8 v10, v10, 0x30

    aget-byte v9, v9, v10

    aput-byte v9, v0, v2

    .line 87
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "dstIndex":I
    .restart local v2    # "dstIndex":I
    aput-byte v12, v0, v1

    .line 88
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "dstIndex":I
    .restart local v1    # "dstIndex":I
    aput-byte v12, v0, v2

    goto :goto_2

    .line 90
    .end local v1    # "dstIndex":I
    .restart local v2    # "dstIndex":I
    :pswitch_4
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "dstIndex":I
    .restart local v1    # "dstIndex":I
    sget-object v9, Lcom/adview/ad/BASE64Encoder;->encodeData:[B

    shl-int/lit8 v10, v5, 0x2

    and-int/lit8 v10, v10, 0x3c

    aget-byte v9, v9, v10

    aput-byte v9, v0, v2

    .line 91
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "dstIndex":I
    .restart local v2    # "dstIndex":I
    aput-byte v12, v0, v1

    goto/16 :goto_1

    :cond_1
    move v1, v2

    .end local v2    # "dstIndex":I
    .restart local v1    # "dstIndex":I
    goto :goto_4

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 59
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
