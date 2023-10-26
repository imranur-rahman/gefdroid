.class public final Lcom/keji/danti/util/ak;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/keji/danti/util/pc;->a:I

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, "3082019f30820108a00302010202044e1ecf7f300d06092a864886f70d010105050030133111300f060355040613086b656a69303030333020170d3131303731343131313430375a180f32313232303631373131313430375a30133111300f060355040613086b656a693030303330819f300d06092a864886f70d010101050003818d0030818902818100a06dca7a7f9b974cc03c7b8e6f528b6d5c2908916c4f6be2f248ceebd63862ca6230e8a15d3239f8b54634cf3ab4240d8a553c6ee9a207f1531526270f1c8e1ec9da8611c5268f1b7039f703c13ff5b057ce981825c87726c3246aa4e10804aa418ac12d6b9884d74e2115d1f2448bf3fefa14768ecc6a8b2c83d03942cd0a210203010001300d06092a864886f70d0101050500038181006159f326c78e8396019dac1aed37faf6419fb518b45935a56eafe612ba3d61ec0a1c067b3838e5f3d39931519daae990aaf1df217e316a6807423092be3aa9f29d200f9f8a16ec8da3b9033a2fa9ef21d861665e5695890508c08a4ad169ddfdd225b6a6d19e563925774392534009b59360c34d0d8e472824203fb374c2aaef"

    invoke-static {p0}, Lcom/keji/danti/util/ak;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
