.class public Lcom/android/vending/licensing/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALPHABET:[B

.field private static final DECODABET:[B

.field public static final DECODE:Z = false

.field public static final ENCODE:Z = true

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final NEW_LINE:B = 0xat

.field private static final WEBSAFE_ALPHABET:[B

.field private static final WEBSAFE_DECODABET:[B

.field private static final WHITE_SPACE_ENC:B = -0x5t


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    const/16 v1, 0x40

    .line 41
    const-class v0, Lcom/android/vending/licensing/util/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/licensing/util/Base64;->$assertionsDisabled:Z

    .line 57
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vending/licensing/util/Base64;->ALPHABET:[B

    .line 75
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/vending/licensing/util/Base64;->WEBSAFE_ALPHABET:[B

    .line 94
    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/vending/licensing/util/Base64;->DECODABET:[B

    .line 128
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/vending/licensing/util/Base64;->WEBSAFE_DECODABET:[B

    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 75
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 94
    :array_2
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    .line 128
    :array_3
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 420
    .local v0, "bytes":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/android/vending/licensing/util/Base64;->decode([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decode([B)[B
    .locals 2
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/vending/licensing/util/Base64;->decode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII)[B
    .locals 1
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 474
    sget-object v0, Lcom/android/vending/licensing/util/Base64;->DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/android/vending/licensing/util/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII[B)[B
    .locals 10
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "decodabet"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 504
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 505
    .local v0, "len34":I
    add-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    .line 506
    .end local v0    # "len34":I
    .local v4, "outBuff":[B
    const/4 v3, 0x0

    .line 508
    .local v3, "outBuffPosn":I
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 509
    .local v0, "b4":[B
    const/4 v1, 0x0

    .line 510
    .local v1, "b4Posn":I
    const/4 v2, 0x0

    .line 511
    .local v2, "i":I
    const/4 v5, 0x0

    .line 512
    .local v5, "sbiCrop":B
    const/4 v6, 0x0

    .line 513
    .local v6, "sbiDecode":B
    const/4 v2, 0x0

    move v9, v5

    .end local v5    # "sbiCrop":B
    .local v9, "sbiCrop":B
    move v5, v3

    .end local v3    # "outBuffPosn":I
    .local v5, "outBuffPosn":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    move v2, v1

    .end local v1    # "b4Posn":I
    .local v2, "b4Posn":I
    move v1, v9

    .end local v9    # "sbiCrop":B
    .local v1, "sbiCrop":B
    :goto_0
    if-ge v3, p2, :cond_c

    .line 514
    add-int v1, v3, p1

    aget-byte v1, p0, v1

    .end local v1    # "sbiCrop":B
    and-int/lit8 v1, v1, 0x7f

    int-to-byte v6, v1

    .line 515
    .local v6, "sbiCrop":B
    aget-byte v7, p3, v6

    .line 517
    .local v7, "sbiDecode":B
    const/4 v1, -0x5

    if-lt v7, v1, :cond_7

    .line 518
    const/4 v1, -0x1

    if-lt v7, v1, :cond_b

    .line 521
    const/16 v1, 0x3d

    if-ne v6, v1, :cond_5

    .line 522
    sub-int v1, p2, v3

    .line 523
    .local v1, "bytesLeft":I
    const/4 v8, 0x1

    sub-int v8, p2, v8

    add-int/2addr p1, v8

    aget-byte p0, p0, p1

    .end local p0    # "source":[B
    .end local p1    # "off":I
    and-int/lit8 p0, p0, 0x7f

    int-to-byte p0, p0

    .line 524
    .local p0, "lastByte":B
    if-eqz v2, :cond_0

    const/4 p1, 0x1

    if-ne v2, p1, :cond_1

    .line 525
    :cond_0
    new-instance p0, Lcom/android/vending/licensing/util/Base64DecoderException;

    .end local p0    # "lastByte":B
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid padding byte \'=\' at byte offset "

    .end local p2    # "len":I
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/vending/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 527
    .restart local p0    # "lastByte":B
    .restart local p2    # "len":I
    :cond_1
    const/4 p1, 0x3

    if-ne v2, p1, :cond_2

    const/4 p1, 0x2

    if-gt v1, p1, :cond_3

    :cond_2
    const/4 p1, 0x4

    if-ne v2, p1, :cond_4

    const/4 p1, 0x1

    if-le v1, p1, :cond_4

    .line 529
    :cond_3
    new-instance p0, Lcom/android/vending/licensing/util/Base64DecoderException;

    .end local p0    # "lastByte":B
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "padding byte \'=\' falsely signals end of encoded value at offset "

    .end local p2    # "len":I
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/vending/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 532
    .restart local p0    # "lastByte":B
    .restart local p2    # "len":I
    :cond_4
    const/16 p1, 0x3d

    if-eq p0, p1, :cond_8

    const/16 p1, 0xa

    if-eq p0, p1, :cond_8

    .line 533
    new-instance p0, Lcom/android/vending/licensing/util/Base64DecoderException;

    .end local p0    # "lastByte":B
    const-string p1, "encoded value has invalid trailing byte"

    invoke-direct {p0, p1}, Lcom/android/vending/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 539
    .end local v1    # "bytesLeft":I
    .local p0, "source":[B
    .restart local p1    # "off":I
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "b4Posn":I
    .local v1, "b4Posn":I
    aput-byte v6, v0, v2

    .line 540
    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 541
    const/4 v1, 0x0

    invoke-static {v0, v1, v4, v5, p3}, Lcom/android/vending/licensing/util/Base64;->decode4to3([BI[BI[B)I

    .end local v1    # "b4Posn":I
    move-result v1

    add-int v2, v5, v1

    .line 542
    .end local v5    # "outBuffPosn":I
    .local v2, "outBuffPosn":I
    const/4 v1, 0x0

    .restart local v1    # "b4Posn":I
    move v5, v2

    .line 513
    .end local v2    # "outBuffPosn":I
    .restart local v5    # "outBuffPosn":I
    :cond_6
    :goto_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    move v2, v1

    .end local v1    # "b4Posn":I
    .local v2, "b4Posn":I
    move v1, v6

    .end local v6    # "sbiCrop":B
    .local v1, "sbiCrop":B
    move v6, v7

    .end local v7    # "sbiDecode":B
    .local v6, "sbiDecode":B
    goto/16 :goto_0

    .line 546
    .end local v1    # "sbiCrop":B
    .local v6, "sbiCrop":B
    .restart local v7    # "sbiDecode":B
    :cond_7
    new-instance p2, Lcom/android/vending/licensing/util/Base64DecoderException;

    .end local p2    # "len":I
    new-instance p3, Ljava/lang/StringBuilder;

    .end local p3    # "decodabet":[B
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad Base64 input character at "

    .end local v0    # "b4":[B
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    .end local p0    # "source":[B
    .end local p1    # "off":I
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "(decimal)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/vending/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw p2

    .restart local v0    # "b4":[B
    .local v1, "bytesLeft":I
    .local p0, "lastByte":B
    .restart local p2    # "len":I
    .restart local p3    # "decodabet":[B
    :cond_8
    move p1, v7

    .end local v7    # "sbiDecode":B
    .local p1, "sbiDecode":B
    move p0, v6

    .line 557
    .end local v1    # "bytesLeft":I
    .end local v6    # "sbiCrop":B
    .local p0, "sbiCrop":B
    :goto_2
    if-eqz v2, :cond_a

    .line 558
    const/4 p0, 0x1

    if-ne v2, p0, :cond_9

    .line 559
    .end local p0    # "sbiCrop":B
    new-instance p0, Lcom/android/vending/licensing/util/Base64DecoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "sbiDecode":B
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "single trailing character at offset "

    .end local p3    # "decodabet":[B
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local p2    # "len":I
    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/vending/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 562
    .restart local p1    # "sbiDecode":B
    .restart local p2    # "len":I
    .restart local p3    # "decodabet":[B
    :cond_9
    add-int/lit8 p0, v2, 0x1

    .end local v2    # "b4Posn":I
    .local p0, "b4Posn":I
    const/16 p1, 0x3d

    aput-byte p1, v0, v2

    .line 563
    .end local p1    # "sbiDecode":B
    const/4 p1, 0x0

    invoke-static {v0, p1, v4, v5, p3}, Lcom/android/vending/licensing/util/Base64;->decode4to3([BI[BI[B)I

    move-result p1

    add-int/2addr p1, v5

    .line 566
    .end local v5    # "outBuffPosn":I
    .local p1, "outBuffPosn":I
    :goto_3
    new-array p0, p1, [B

    .line 567
    .local p0, "out":[B
    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {v4, p2, p0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    .end local p2    # "len":I
    .end local p3    # "decodabet":[B
    return-object p0

    .restart local v2    # "b4Posn":I
    .restart local v5    # "outBuffPosn":I
    .local p0, "sbiCrop":B
    .local p1, "sbiDecode":B
    .restart local p2    # "len":I
    .restart local p3    # "decodabet":[B
    :cond_a
    move p0, v2

    .end local v2    # "b4Posn":I
    .local p0, "b4Posn":I
    move p1, v5

    .end local v5    # "outBuffPosn":I
    .local p1, "outBuffPosn":I
    goto :goto_3

    .restart local v2    # "b4Posn":I
    .restart local v5    # "outBuffPosn":I
    .restart local v6    # "sbiCrop":B
    .restart local v7    # "sbiDecode":B
    .local p0, "source":[B
    .local p1, "off":I
    :cond_b
    move v1, v2

    .end local v2    # "b4Posn":I
    .local v1, "b4Posn":I
    goto :goto_1

    .end local v7    # "sbiDecode":B
    .local v1, "sbiCrop":B
    .restart local v2    # "b4Posn":I
    .local v6, "sbiDecode":B
    :cond_c
    move p1, v6

    .end local v6    # "sbiDecode":B
    .local p1, "sbiDecode":B
    move p0, v1

    .end local v1    # "sbiCrop":B
    .local p0, "sbiCrop":B
    goto :goto_2
.end method

.method private static decode4to3([BI[BI[B)I
    .locals 3
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "destination"    # [B
    .param p3, "destOffset"    # I
    .param p4, "decodabet"    # [B

    .prologue
    const/16 v2, 0x3d

    .line 378
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_0

    .line 379
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int v0, v1, v2

    .line 383
    .local v0, "outBuff":I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 384
    const/4 v1, 0x1

    .line 406
    :goto_0
    return v1

    .line 385
    .end local v0    # "outBuff":I
    :cond_0
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_1

    .line 387
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x12

    or-int v0, v1, v2

    .line 392
    .restart local v0    # "outBuff":I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 393
    add-int/lit8 v1, p3, 0x1

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 394
    const/4 v1, 0x2

    goto :goto_0

    .line 397
    .end local v0    # "outBuff":I
    :cond_1
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 403
    .restart local v0    # "outBuff":I
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 404
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 405
    add-int/lit8 v1, p3, 0x2

    int-to-byte v2, v0

    aput-byte v2, p2, v1

    .line 406
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static decodeWebSafe(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 432
    .local v0, "bytes":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/android/vending/licensing/util/Base64;->decodeWebSafe([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decodeWebSafe([B)[B
    .locals 2
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 458
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/vending/licensing/util/Base64;->decodeWebSafe([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeWebSafe([BII)[B
    .locals 1
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 489
    sget-object v0, Lcom/android/vending/licensing/util/Base64;->WEBSAFE_DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/android/vending/licensing/util/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # [B

    .prologue
    .line 247
    const/4 v0, 0x0

    array-length v1, p0

    sget-object v2, Lcom/android/vending/licensing/util/Base64;->ALPHABET:[B

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/vending/licensing/util/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII[BZ)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "alphabet"    # [B
    .param p4, "doPadding"    # Z

    .prologue
    .line 274
    const v2, 0x7fffffff

    invoke-static {p0, p1, p2, p3, v2}, Lcom/android/vending/licensing/util/Base64;->encode([BII[BI)[B

    move-result-object v0

    .line 275
    .local v0, "outBuff":[B
    array-length v1, v0

    .line 279
    .local v1, "outLen":I
    :goto_0
    if-nez p4, :cond_0

    if-lez v1, :cond_0

    .line 280
    const/4 v2, 0x1

    sub-int v2, v1, v2

    aget-byte v2, v0, v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    .line 286
    :cond_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v2

    .line 283
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static encode([BII[BI)[B
    .locals 8
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "alphabet"    # [B
    .param p4, "maxLineLength"    # I

    .prologue
    .line 301
    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 302
    .local v0, "lenDiv3":I
    mul-int/lit8 v0, v0, 0x4

    .line 303
    .local v0, "len43":I
    div-int v1, v0, p4

    add-int/2addr v0, v1

    new-array v3, v0, [B

    .line 306
    .end local v0    # "len43":I
    .local v3, "outBuff":[B
    const/4 v0, 0x0

    .line 307
    .local v0, "d":I
    const/4 v4, 0x0

    .line 308
    .local v4, "e":I
    const/4 v1, 0x2

    sub-int v2, p2, v1

    .line 309
    .local v2, "len2":I
    const/4 v1, 0x0

    .local v1, "lineLength":I
    move v6, v1

    .line 310
    .end local v1    # "lineLength":I
    .local v6, "lineLength":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 315
    add-int v1, v0, p1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v0, 0x1

    add-int/2addr v5, p1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x18

    ushr-int/lit8 v5, v5, 0x10

    or-int/2addr v1, v5

    add-int/lit8 v5, v0, 0x2

    add-int/2addr v5, p1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x18

    ushr-int/lit8 v5, v5, 0x18

    or-int/2addr v1, v5

    .line 319
    .local v1, "inBuff":I
    ushr-int/lit8 v5, v1, 0x12

    aget-byte v5, p3, v5

    aput-byte v5, v3, v4

    .line 320
    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v7, v1, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, p3, v7

    aput-byte v7, v3, v5

    .line 321
    add-int/lit8 v5, v4, 0x2

    ushr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, p3, v7

    aput-byte v7, v3, v5

    .line 322
    add-int/lit8 v5, v4, 0x3

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p3, v1

    .end local v1    # "inBuff":I
    aput-byte v1, v3, v5

    .line 324
    add-int/lit8 v1, v6, 0x4

    .line 325
    .end local v6    # "lineLength":I
    .local v1, "lineLength":I
    if-ne v1, p4, :cond_0

    .line 326
    add-int/lit8 v1, v4, 0x4

    const/16 v5, 0xa

    aput-byte v5, v3, v1

    .line 327
    .end local v1    # "lineLength":I
    add-int/lit8 v4, v4, 0x1

    .line 328
    const/4 v1, 0x0

    .line 310
    .restart local v1    # "lineLength":I
    :cond_0
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v4, v4, 0x4

    move v6, v1

    .end local v1    # "lineLength":I
    .restart local v6    # "lineLength":I
    goto :goto_0

    .line 332
    :cond_1
    if-ge v0, p2, :cond_4

    .line 333
    add-int v1, v0, p1

    sub-int v2, p2, v0

    move-object v0, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/vending/licensing/util/Base64;->encode3to4([BII[BI[B)[B

    .line 335
    .end local v0    # "d":I
    .end local v2    # "len2":I
    add-int/lit8 p0, v6, 0x4

    .line 336
    .end local v6    # "lineLength":I
    .local p0, "lineLength":I
    if-ne p0, p4, :cond_2

    .line 338
    add-int/lit8 p1, v4, 0x4

    const/16 p2, 0xa

    aput-byte p2, v3, p1

    .line 339
    .end local p1    # "off":I
    .end local p2    # "len":I
    add-int/lit8 v4, v4, 0x1

    .line 341
    :cond_2
    add-int/lit8 v4, v4, 0x4

    .line 344
    :goto_1
    sget-boolean p0, Lcom/android/vending/licensing/util/Base64;->$assertionsDisabled:Z

    .end local p0    # "lineLength":I
    if-nez p0, :cond_3

    array-length p0, v3

    if-eq v4, p0, :cond_3

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 345
    :cond_3
    return-object v3

    .restart local v0    # "d":I
    .restart local v2    # "len2":I
    .restart local v6    # "lineLength":I
    .local p0, "source":[B
    .restart local p1    # "off":I
    .restart local p2    # "len":I
    :cond_4
    move p0, v6

    .end local v6    # "lineLength":I
    .local p0, "lineLength":I
    goto :goto_1
.end method

.method private static encode3to4([BII[BI[B)[B
    .locals 5
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I
    .param p5, "alphabet"    # [B

    .prologue
    const/16 v4, 0x3d

    const/4 v3, 0x0

    .line 209
    if-lez p2, :cond_0

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    const/4 v2, 0x2

    if-le p2, v2, :cond_2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    :goto_2
    or-int v0, v1, v2

    .line 214
    .local v0, "inBuff":I
    packed-switch p2, :pswitch_data_0

    .line 234
    :goto_3
    return-object p3

    .end local v0    # "inBuff":I
    :cond_0
    move v1, v3

    .line 209
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 216
    .restart local v0    # "inBuff":I
    :pswitch_0
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    aput-byte v1, p3, p4

    .line 217
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 218
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 219
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v2, v0, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    goto :goto_3

    .line 222
    :pswitch_1
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    aput-byte v1, p3, p4

    .line 223
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 224
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 225
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_3

    .line 228
    :pswitch_2
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    aput-byte v1, p3, p4

    .line 229
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 230
    add-int/lit8 v1, p4, 0x2

    aput-byte v4, p3, v1

    .line 231
    add-int/lit8 v1, p4, 0x3

    aput-byte v4, p3, v1

    goto :goto_3

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeWebSafe([BZ)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # [B
    .param p1, "doPadding"    # Z

    .prologue
    .line 258
    const/4 v0, 0x0

    array-length v1, p0

    sget-object v2, Lcom/android/vending/licensing/util/Base64;->WEBSAFE_ALPHABET:[B

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/vending/licensing/util/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
