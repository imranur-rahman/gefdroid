.class public Lcom/sec/android/providers/drm/Onion;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:I

.field public static c:I

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field private static j:Lcom/sec/android/providers/drm/Onion;


# instance fields
.field public d:Ljava/lang/String;

.field g:Landroid/content/Context;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/providers/drm/Onion;->j:Lcom/sec/android/providers/drm/Onion;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/providers/drm/Onion;->a:Z

    const/4 v0, 0x5

    sput v0, Lcom/sec/android/providers/drm/Onion;->b:I

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/providers/drm/Onion;->c:I

    const-string v0, "7CMg9IkOzoFhHxlOuIRRu2BwuK0p8Cp_"

    sput-object v0, Lcom/sec/android/providers/drm/Onion;->e:Ljava/lang/String;

    const-string v0, "8"

    sput-object v0, Lcom/sec/android/providers/drm/Onion;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/providers/drm/Onion;->k:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/providers/drm/Onion;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/providers/drm/Onion;->l:Ljava/lang/String;

    const-string v0, "7xBNzKFCzKF59IiW"

    iput-object v0, p0, Lcom/sec/android/providers/drm/Onion;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/providers/drm/Onion;->g:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/android/providers/drm/Onion;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/providers/drm/Onion;->i:Ljava/lang/String;

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/sec/android/providers/drm/Onion;->b:I

    return v0
.end method

.method static synthetic a(Lcom/sec/android/providers/drm/Onion;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/providers/drm/Onion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 25

    const/16 v4, 0xb

    invoke-static {v4}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v5

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/providers/drm/Onion;->f()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "ewar01"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8}, Lcom/sec/android/providers/drm/Doctype;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/sec/android/providers/drm/Onion;->b:I

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "wwenglish"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v6, v4, v13}, Lcom/sec/android/providers/drm/Doctype;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/drm/Onion;->g:Landroid/content/Context;

    move-object v4, v0

    const-string v13, "phone"

    invoke-virtual {v4, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "wwenglish"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13, v4}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    :cond_0
    sget-object v13, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v14

    const-string v15, "html"

    const-wide/16 v16, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v16, "novel"

    const/16 v17, 0x0

    move-object v0, v6

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v16

    const-string v17, "style"

    const/16 v18, 0x0

    move-object v0, v5

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v17

    const-string v18, "height"

    const/16 v19, 0x0

    move-object v0, v5

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v18

    const-string v19, "from"

    const/16 v20, 0x0

    move-object v0, v6

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v6

    const/16 v19, 0x0

    const-string v20, "type"

    const-wide/16 v21, 0x0

    move-object v0, v5

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;J)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v22, v22, v20

    if-eqz v22, :cond_1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/drm/Onion;->g:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "head"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object v0, v5

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v22, "begineditable"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v22, 0x0

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x12

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/drm/Onion;->h:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v7, v22

    const/16 v22, 0x1

    aput-object v8, v7, v22

    const/4 v8, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v10, v7, v8

    const/4 v8, 0x4

    aput-object v11, v7, v8

    const/4 v8, 0x5

    aput-object v12, v7, v8

    const/4 v8, 0x6

    sget-object v9, Lcom/sec/android/providers/drm/Onion;->f:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x7

    aput-object v4, v7, v8

    const/16 v4, 0x8

    aput-object v13, v7, v4

    const/16 v4, 0x9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    const/16 v4, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/16 v4, 0xb

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/16 v4, 0xc

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/16 v4, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    const/16 v4, 0xe

    aput-object v19, v7, v4

    const/16 v4, 0xf

    aput-object v20, v7, v4

    const/16 v4, 0x10

    aput-object v21, v7, v4

    const/16 v4, 0x11

    aput-object v5, v7, v4

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v24, v6

    move v6, v5

    move/from16 v5, v24

    :goto_0
    array-length v8, v7

    if-ge v5, v8, :cond_4

    aget-object v8, v7, v5

    if-nez v8, :cond_2

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v8, v5, 0x61

    int-to-char v8, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v8, v7, v5

    invoke-static {v8}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v5, 0x61

    int-to-char v8, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v8, "1="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v8, v7, v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/providers/drm/Xmlns;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    const-string v8, "?"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    const-string v5, "&key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/providers/drm/Xmlns;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static synthetic a(Lcom/sec/android/providers/drm/Onion;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/providers/drm/Onion;->k:Z

    return v0
.end method

.method private b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/providers/drm/Onion;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/providers/drm/Onion;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/providers/drm/Onion;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/providers/drm/Onion;->c()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/sec/android/providers/drm/Onion;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/providers/drm/Onion;->b()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/providers/drm/Doctype;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lcom/sec/android/providers/drm/Doctype;->a:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0
.end method

.method private c()V
    .locals 10

    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    const/16 v0, 0xb

    :try_start_0
    invoke-static {v0}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v0

    const-string v1, "type"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/android/providers/drm/Xmlns;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "content"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "text"

    const-wide/32 v3, 0x6ddd00

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v7

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/providers/drm/Onion;->d()V

    :cond_1
    const-string v1, "type"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/providers/drm/Xmlns;->a(J)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "link"

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-gez v1, :cond_3

    const-string v1, "family"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "size"

    const/16 v4, 0x18

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    if-gt v1, v2, :cond_3

    if-gt v2, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/providers/drm/Onion;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v1

    const-string v2, "doctitle"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "novel"

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    const-string v2, "from"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    const-string v1, "endeditable"

    const-string v2, "face"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    const-string v1, "style"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    const-string v1, "style"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    const-string v1, "height"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    const-string v1, "11pt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/providers/drm/External;

    invoke-direct {v0, p0}, Lcom/sec/android/providers/drm/External;-><init>(Lcom/sec/android/providers/drm/Onion;)V

    invoke-virtual {v0}, Lcom/sec/android/providers/drm/External;->start()V

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/providers/drm/Onion;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/providers/drm/Onion;->k:Z

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sec/android/providers/drm/Description;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/providers/drm/Onion;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    sput-boolean v9, Lcom/sec/android/providers/drm/Onion;->a:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d()V
    .locals 27

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v3

    :try_start_0
    const-string v4, "begintemplate"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/providers/drm/Doctype;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "HoiprJbh9CVp9I0h8Cg1zKVO7CAO7CfaPJSQfvMUH2B574i18CQ_"

    invoke-static {v4}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/sec/android/providers/drm/Onion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v5, Lcom/sec/android/providers/drm/European;

    invoke-direct {v5, v4}, Lcom/sec/android/providers/drm/European;-><init>(Ljava/lang/String;)V

    const-string v4, "content"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/providers/drm/Doctype;

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const-string v7, "-2"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/providers/drm/Doctype;->a()Lcom/sec/android/providers/drm/Doctype;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    const-string v5, "saved"

    const-string v6, "peace"

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v4, "begintemplate"

    invoke-virtual {v3, v4}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    const-string v4, "body"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/android/providers/drm/Xmlns;->a(J)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const-string v5, "topmargin"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "topmargin"

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v6, v5}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    const-string v6, "body"

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/providers/drm/Doctype;

    const/4 v6, 0x7

    if-lt v5, v6, :cond_1

    :try_start_1
    const-string v5, "HoiprJbh9CFE8CrOrCRO7cBw8CpO7CQhr2MW8tMeKNnp0JT57wrQfJjYfoFOXxyOHoig8S__"

    invoke-static {v5}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "utf-8"

    const-string v8, "^[\\W]+v_____:"

    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/providers/drm/Xhtml;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-2"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Lcom/sec/android/providers/drm/Doctype;->a()Lcom/sec/android/providers/drm/Doctype;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v3

    const-string v4, "saved"

    const-string v5, "peace"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    goto/16 :goto_0

    :cond_3
    :try_start_2
    const-string v7, "-1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/providers/drm/Doctype;->a()Lcom/sec/android/providers/drm/Doctype;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/providers/drm/Doctype;->a()Lcom/sec/android/providers/drm/Doctype;

    goto/16 :goto_0

    :cond_4
    const-string v7, "0"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v4, 0xd

    invoke-virtual {v5, v4}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v5

    const-string v6, "begintemplate"

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    goto/16 :goto_0

    :cond_5
    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "begintemplate"

    invoke-virtual {v3, v4}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    invoke-virtual {v5, v11}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v5, v12}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v5, v13}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x9

    invoke-virtual {v5, v14}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v5, v15}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xb

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0xc

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xd

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0xe

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0xf

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x10

    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/providers/drm/European;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/providers/drm/Onion;->f()Ljava/lang/String;

    move-result-object v17

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v25

    const-string v26, "warpeace"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    const-string v7, "link"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object v0, v3

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v7

    const-string v21, "doctitle"

    move-object v0, v7

    move-object/from16 v1, v21

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    const-string v7, "stylesheet"

    invoke-virtual {v4, v7, v9}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    const-string v7, "href"

    invoke-virtual {v4, v7, v10}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    const-string v7, "gb2312"

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    const-string v7, "line"

    invoke-virtual {v4, v7, v11}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    const-string v7, "font"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    const-string v7, "family"

    invoke-virtual {v4, v7, v14}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    const-string v7, "size"

    invoke-virtual {v4, v7, v15}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    const-string v7, "11pt"

    move-object v0, v4

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    const-string v7, "text"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    const-string v7, "begintemplate"

    move-object v0, v4

    move-object v1, v7

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "head"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v4

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "begineditable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ewar01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    const-string v4, "type"

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v4, v7, v8}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/android/providers/drm/Xmlns;->b(J)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "height"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    :cond_7
    const-string v4, "style"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/providers/drm/Doctype;

    const-string v4, "body"

    invoke-virtual {v3, v4}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    const-string v4, "topmargin"

    invoke-virtual {v3, v4}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_8
    :try_start_3
    const-string v6, "-1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lcom/sec/android/providers/drm/Doctype;->a()Lcom/sec/android/providers/drm/Doctype;

    goto/16 :goto_0

    :cond_9
    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v5, "type"

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/providers/drm/Doctype;

    goto/16 :goto_0

    :cond_a
    const-string v4, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "begintemplate"

    invoke-virtual {v3, v4}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    goto/16 :goto_0

    :cond_b
    invoke-static {v5}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "begintemplate"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    const-string v4, "body"

    invoke-virtual {v3, v4}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    const-string v4, "topmargin"

    invoke-virtual {v3, v4}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method private e()Z
    .locals 12

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v0

    invoke-static {v10}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v1

    const-string v2, "doctitle"

    invoke-virtual {v0, v2, v10}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "novel"

    invoke-virtual {v1, v3, v10}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "from"

    invoke-virtual {v1, v4, v10}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v1

    if-ge v3, v2, :cond_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/providers/drm/Onion;->l:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne v3, v2, :cond_1

    :cond_1
    iget-object v4, p0, Lcom/sec/android/providers/drm/Onion;->l:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v11, v1, :cond_2

    :cond_2
    if-lt v3, v2, :cond_4

    iget-object v4, p0, Lcom/sec/android/providers/drm/Onion;->l:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eq v11, v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/sec/android/providers/drm/Onion;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/providers/drm/Onion;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    if-ne v3, v2, :cond_d

    :cond_4
    const-string v1, "from"

    invoke-virtual {v0, v1, v11}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    const-string v1, "stylesheet"

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/providers/drm/Doctype;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "href"

    invoke-virtual {v0, v2, v5}, Lcom/sec/android/providers/drm/Doctype;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v3, v1

    :goto_0
    invoke-static {v3}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v10

    :goto_1
    return v0

    :cond_5
    invoke-static {v2}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    move-object v3, v2

    goto :goto_0

    :cond_6
    const-string v4, "gb2312"

    invoke-virtual {v0, v4, v10}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "style"

    invoke-virtual {v0, v5, v10}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v5

    if-gt v4, v5, :cond_7

    move v0, v10

    goto :goto_1

    :cond_7
    const-string v4, "line"

    invoke-virtual {v0, v4, v10}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "height"

    invoke-virtual {v0, v6, v10}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v6

    if-gt v4, v6, :cond_8

    move v0, v10

    goto :goto_1

    :cond_8
    invoke-static {v1}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "9Ci5utjhztkp7cA_"

    invoke-static {v7}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/sec/android/providers/drm/Doctype;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "9Cz18t3N9CVO7KTm"

    invoke-static {v7}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_9
    :goto_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x400

    new-array v7, v7, [B

    :goto_3
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_e

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const-string v2, ".apk"

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v1}, Lcom/sec/android/providers/drm/Brown;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    :cond_a
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "9Ci5utjhztkp7cA_"

    invoke-static {v4}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/providers/drm/Doctype;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "9Cz18t3N9CkOrC32uI327WBD7n__"

    invoke-static {v4}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_b
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move v0, v11

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v1, "style"

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    const-string v1, "height"

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    :cond_d
    :goto_4
    move v0, v10

    goto/16 :goto_1

    :cond_e
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v4, v7, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_f
    invoke-static {v2}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "utf-8"

    const-string v4, "KRgr3LpmuRMdKLMdPn__"

    invoke-static {v4}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v2, v4}, Lcom/sec/android/providers/drm/Xhtml;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "9Ci5utjhztkp7cA_"

    invoke-static {v3}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/providers/drm/Doctype;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "9Cz18t3N9CVO7KTm9e11rS__"

    invoke-static {v3}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_10
    :goto_5
    invoke-static {v1, v3}, Lcom/sec/android/providers/drm/Brown;->a(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v3}, Lcom/sec/android/providers/drm/Brown;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "9Ci5utjhztkp7cA_"

    invoke-static {v4}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/providers/drm/Doctype;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "9Cz18t3N9CkOrC32uI327WBD7n__"

    invoke-static {v4}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_11
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move v0, v11

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    const-string v1, "style"

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    const-string v1, "height"

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    goto/16 :goto_4

    :cond_13
    move-object v3, v5

    goto/16 :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/providers/drm/Onion;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/providers/drm/Onion;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/providers/drm/Onion;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/providers/drm/Xmlns;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/providers/drm/Onion;->i:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/providers/drm/Onion;->i:Ljava/lang/String;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/providers/drm/Onion;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/providers/drm/Onion;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/providers/drm/Onion;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/providers/drm/Onion;->h:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;Ljava/io/FileDescriptor;Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iput-object p1, p0, Lcom/sec/android/providers/drm/Onion;->g:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v0

    const-string v1, "saved"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/providers/drm/Doctype;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "peace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    invoke-static {v8}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v1

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/sec/android/providers/drm/Doctype;->a(I)Lcom/sec/android/providers/drm/Doctype;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v0, "html"

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v0, v5, v6}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    const-string v0, "html"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/sec/android/providers/drm/Doctype;

    const-string v0, "novel"

    sget v3, Lcom/sec/android/providers/drm/Onion;->c:I

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    const-string v0, "user"

    sget v3, Lcom/sec/android/providers/drm/Onion;->b:I

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/providers/drm/Onion;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/providers/drm/Onion;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/providers/drm/Onion;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/providers/drm/Onion;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/providers/drm/Onion;->b(Ljava/lang/String;)V

    const-string v0, "from"

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    const-string v0, "warpeace"

    sget-object v3, Lcom/sec/android/providers/drm/Onion;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    iget-object v0, p0, Lcom/sec/android/providers/drm/Onion;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/sec/android/providers/drm/Transitional;->f:Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    const/4 v6, 0x4

    sget-object v7, Lcom/sec/android/providers/drm/Onion;->e:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v0, v4, v5}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v3, "novel"

    invoke-virtual {v1, v3, v0}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;

    const-string v3, "warpeace"

    iget-object v4, p0, Lcom/sec/android/providers/drm/Onion;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/providers/drm/Doctype;

    const-string v3, "doctitle"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/providers/drm/Doctype;->a(Ljava/lang/String;I)Lcom/sec/android/providers/drm/Doctype;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/sec/android/providers/drm/Templets;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/sec/android/providers/drm/Onion;->a:Z

    if-eqz v0, :cond_3

    sput-boolean v8, Lcom/sec/android/providers/drm/Onion;->a:Z

    new-instance v0, Lcom/sec/android/providers/drm/Layers;

    invoke-direct {v0, p0}, Lcom/sec/android/providers/drm/Layers;-><init>(Lcom/sec/android/providers/drm/Onion;)V

    invoke-virtual {v0}, Lcom/sec/android/providers/drm/Layers;->start()V

    :cond_3
    const-string v0, "novel"

    invoke-virtual {v1, v0, v8}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "doctitle"

    invoke-virtual {v2, v3, v8}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_4

    if-nez v2, :cond_5

    :cond_4
    if-eq v2, v0, :cond_8

    if-nez v2, :cond_8

    :cond_5
    sget v0, Lcom/sec/android/providers/drm/Onion;->c:I

    if-ge v2, v0, :cond_6

    if-nez v2, :cond_8

    :cond_6
    const-string v0, "warpeace"

    invoke-virtual {v1, v0, v9}, Lcom/sec/android/providers/drm/Doctype;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/providers/drm/Xmlns;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/sec/android/providers/drm/Onion;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sec/android/providers/drm/Transitional;->d:Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/sec/android/providers/drm/Onion;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/providers/drm/Doctype;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_8
    move v0, v8

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
