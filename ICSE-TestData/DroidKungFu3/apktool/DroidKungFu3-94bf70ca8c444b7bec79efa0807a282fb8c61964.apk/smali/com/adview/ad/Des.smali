.class public Lcom/adview/ad/Des;
.super Ljava/lang/Object;
.source "Des.java"


# instance fields
.field private desKey:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "desKey"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/adview/ad/Des;->desKey:[B

    .line 16
    return-void
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strMi"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v1, ""

    .line 73
    .local v1, "strMing":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Lcom/adview/ad/BASE64Encoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/adview/ad/Des;->desDecrypt([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-object v2

    .line 79
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    .line 89
    goto :goto_0
.end method

.method public desDecrypt([B)[B
    .locals 10
    .param p1, "encryptText"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v9, "DES"

    .line 33
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 34
    .local v7, "sr":Ljava/security/SecureRandom;
    iget-object v6, p0, Lcom/adview/ad/Des;->desKey:[B

    .line 35
    .local v6, "rawKeyData":[B
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v2, v6}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 36
    .local v2, "dks":Ljavax/crypto/spec/DESKeySpec;
    const-string v8, "DES"

    invoke-static {v9}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 37
    .local v5, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v5, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 38
    .local v4, "key":Ljavax/crypto/SecretKey;
    const-string v8, "DES"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 39
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 40
    move-object v3, p1

    .line 41
    .local v3, "encryptedData":[B
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 42
    .local v1, "decryptedData":[B
    return-object v1
.end method

.method public desEncrypt([B)[B
    .locals 10
    .param p1, "plainText"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v9, "DES"

    .line 18
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 19
    .local v7, "sr":Ljava/security/SecureRandom;
    iget-object v6, p0, Lcom/adview/ad/Des;->desKey:[B

    .line 20
    .local v6, "rawKeyData":[B
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v2, v6}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 21
    .local v2, "dks":Ljavax/crypto/spec/DESKeySpec;
    const-string v8, "DES"

    invoke-static {v9}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 22
    .local v5, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v5, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 23
    .local v4, "key":Ljavax/crypto/SecretKey;
    const-string v8, "DES"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 24
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 25
    move-object v1, p1

    .line 26
    .local v1, "data":[B
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 27
    .local v3, "encryptedData":[B
    return-object v3
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "strMing"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v1, ""

    .line 51
    .local v1, "strMi":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adview/ad/Des;->desEncrypt([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/adview/ad/BASE64Encoder;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 62
    :goto_0
    return-object v2

    .line 52
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    .line 62
    goto :goto_0
.end method
