.class public final Lcom/adwo/adsdk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:[B

.field private static B:Ljava/lang/String;

.field private static C:I

.field protected static a:Ljava/lang/String;

.field protected static b:I

.field protected static c:I

.field protected static d:I

.field protected static e:I

.field protected static volatile f:I

.field protected static g:Ljava/lang/String;

.field protected static h:Ljava/util/Set;

.field private static i:Landroid/telephony/TelephonyManager;

.field private static j:Z

.field private static k:[B

.field private static l:[B

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Landroid/content/Context;

.field private static volatile p:Z

.field private static q:B

.field private static r:B

.field private static s:[B

.field private static t:[B

.field private static u:B

.field private static v:S

.field private static w:[B

.field private static x:B

.field private static y:B

.field private static z:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    sput-boolean v2, Lcom/adwo/adsdk/i;->j:Z

    .line 79
    sput-object v1, Lcom/adwo/adsdk/i;->k:[B

    .line 81
    sput-object v1, Lcom/adwo/adsdk/i;->l:[B

    .line 82
    sput-object v1, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    .line 86
    sput v4, Lcom/adwo/adsdk/i;->b:I

    .line 87
    sput v3, Lcom/adwo/adsdk/i;->c:I

    .line 88
    const/4 v0, 0x3

    sput v0, Lcom/adwo/adsdk/i;->d:I

    .line 89
    const/4 v0, 0x4

    sput v0, Lcom/adwo/adsdk/i;->e:I

    .line 90
    sput v4, Lcom/adwo/adsdk/i;->f:I

    .line 92
    sput-object v1, Lcom/adwo/adsdk/i;->n:Ljava/lang/String;

    .line 93
    sput-object v1, Lcom/adwo/adsdk/i;->o:Landroid/content/Context;

    .line 94
    sput-boolean v2, Lcom/adwo/adsdk/i;->p:Z

    .line 96
    sput-byte v2, Lcom/adwo/adsdk/i;->q:B

    .line 97
    sput-byte v2, Lcom/adwo/adsdk/i;->r:B

    .line 99
    sput-object v1, Lcom/adwo/adsdk/i;->s:[B

    .line 100
    sput-object v1, Lcom/adwo/adsdk/i;->t:[B

    .line 106
    sput-byte v2, Lcom/adwo/adsdk/i;->u:B

    .line 109
    sput-short v2, Lcom/adwo/adsdk/i;->v:S

    .line 111
    sput-object v1, Lcom/adwo/adsdk/i;->w:[B

    .line 113
    sput-byte v3, Lcom/adwo/adsdk/i;->x:B

    .line 114
    sput-byte v3, Lcom/adwo/adsdk/i;->y:B

    .line 115
    sput-byte v3, Lcom/adwo/adsdk/i;->z:B

    .line 116
    const-string v0, ""

    sput-object v0, Lcom/adwo/adsdk/i;->g:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/adwo/adsdk/i;->h:Ljava/util/Set;

    .line 638
    sput-object v1, Lcom/adwo/adsdk/i;->A:[B

    .line 1051
    sput-object v1, Lcom/adwo/adsdk/i;->B:Ljava/lang/String;

    .line 1118
    sput v2, Lcom/adwo/adsdk/i;->C:I

    .line 1121
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(IIZ)B
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/16 v4, 0xf0

    const/4 v3, 0x1

    const/16 v2, 0x280

    const/16 v1, 0x140

    .line 1592
    if-lt p0, v4, :cond_3

    if-ge p0, v1, :cond_3

    .line 1593
    if-ge p1, v1, :cond_1

    if-lt p1, v4, :cond_1

    .line 1594
    if-eqz p2, :cond_0

    .line 1595
    const/4 v0, 0x5

    .line 1705
    :goto_0
    return v0

    .line 1597
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    .line 1599
    :cond_1
    if-lt p1, v1, :cond_1d

    const/16 v0, 0x1e0

    if-ge p1, v0, :cond_1d

    .line 1600
    if-eqz p2, :cond_2

    move v0, v3

    .line 1601
    goto :goto_0

    .line 1603
    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 1607
    :cond_3
    if-lt p0, v1, :cond_9

    const/16 v0, 0x1e0

    if-ge p0, v0, :cond_9

    .line 1608
    if-ge p1, v1, :cond_5

    if-lt p1, v4, :cond_5

    .line 1609
    if-eqz p2, :cond_4

    move v0, v3

    .line 1610
    goto :goto_0

    .line 1612
    :cond_4
    const/4 v0, 0x6

    goto :goto_0

    .line 1614
    :cond_5
    if-lt p1, v1, :cond_7

    if-ge p1, v2, :cond_7

    .line 1615
    if-eqz p2, :cond_6

    move v0, v3

    .line 1616
    goto :goto_0

    .line 1618
    :cond_6
    const/4 v0, 0x6

    goto :goto_0

    .line 1620
    :cond_7
    if-lt p1, v2, :cond_1d

    .line 1621
    if-eqz p2, :cond_8

    .line 1622
    const/16 v0, 0x8

    goto :goto_0

    .line 1624
    :cond_8
    const/16 v0, 0x8

    goto :goto_0

    .line 1628
    :cond_9
    const/16 v0, 0x1e0

    if-lt p0, v0, :cond_f

    if-ge p0, v2, :cond_f

    .line 1629
    if-ge p1, v1, :cond_b

    if-lt p1, v4, :cond_b

    .line 1630
    if-eqz p2, :cond_a

    move v0, v3

    .line 1631
    goto :goto_0

    .line 1633
    :cond_a
    const/4 v0, 0x6

    goto :goto_0

    .line 1635
    :cond_b
    if-lt p1, v1, :cond_d

    if-ge p1, v2, :cond_d

    .line 1636
    if-eqz p2, :cond_c

    .line 1637
    const/4 v0, 0x2

    goto :goto_0

    .line 1639
    :cond_c
    const/4 v0, 0x7

    goto :goto_0

    .line 1641
    :cond_d
    if-lt p1, v2, :cond_1d

    .line 1642
    if-eqz p2, :cond_e

    .line 1643
    const/4 v0, 0x2

    goto :goto_0

    .line 1645
    :cond_e
    const/4 v0, 0x7

    goto :goto_0

    .line 1649
    :cond_f
    if-lt p0, v2, :cond_15

    const/16 v0, 0x2d0

    if-ge p0, v0, :cond_15

    .line 1650
    if-ge p1, v1, :cond_11

    if-lt p1, v4, :cond_11

    .line 1651
    if-eqz p2, :cond_10

    move v0, v3

    .line 1652
    goto :goto_0

    .line 1654
    :cond_10
    const/16 v0, 0x8

    goto :goto_0

    .line 1656
    :cond_11
    if-lt p1, v1, :cond_13

    if-ge p1, v2, :cond_13

    .line 1657
    if-eqz p2, :cond_12

    move v0, v5

    .line 1658
    goto :goto_0

    .line 1660
    :cond_12
    const/16 v0, 0x8

    goto :goto_0

    .line 1662
    :cond_13
    if-lt p1, v2, :cond_1d

    .line 1663
    if-eqz p2, :cond_14

    move v0, v5

    .line 1664
    goto :goto_0

    .line 1666
    :cond_14
    const/16 v0, 0x8

    goto :goto_0

    .line 1670
    :cond_15
    const/16 v0, 0x2d0

    if-lt p0, v0, :cond_1b

    const/16 v0, 0x400

    if-gt p0, v0, :cond_1b

    .line 1671
    if-ge p1, v1, :cond_17

    if-lt p1, v4, :cond_17

    .line 1672
    if-eqz p2, :cond_16

    move v0, v5

    .line 1673
    goto/16 :goto_0

    .line 1675
    :cond_16
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 1677
    :cond_17
    if-lt p1, v1, :cond_19

    if-ge p1, v2, :cond_19

    .line 1678
    if-eqz p2, :cond_18

    move v0, v5

    .line 1679
    goto/16 :goto_0

    .line 1681
    :cond_18
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 1683
    :cond_19
    if-lt p1, v2, :cond_1d

    .line 1684
    if-eqz p2, :cond_1a

    move v0, v5

    .line 1685
    goto/16 :goto_0

    .line 1687
    :cond_1a
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 1691
    :cond_1b
    const/16 v0, 0x400

    if-le p0, v0, :cond_1d

    .line 1692
    const/16 v0, 0x300

    if-le p1, v0, :cond_1d

    .line 1693
    if-eqz p2, :cond_1c

    .line 1694
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1696
    :cond_1c
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 1702
    :cond_1d
    if-nez p2, :cond_1e

    .line 1703
    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_1e
    move v0, v3

    .line 1705
    goto/16 :goto_0
.end method

.method protected static declared-synchronized a(Landroid/content/Context;BB)Lcom/adwo/adsdk/f;
    .locals 34

    .prologue
    .line 799
    const-class v31, Lcom/adwo/adsdk/i;

    monitor-enter v31

    .line 800
    :try_start_0
    const-string v3, "android.permission.INTERNET"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    .line 799
    if-ne v3, v4, :cond_0

    .line 802
    const-string v3, "Cannot request an ad without INTERNET permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v3}, Lcom/adwo/adsdk/i;->a(Ljava/lang/String;)V

    .line 809
    :cond_0
    const/16 v32, 0x0

    .line 811
    sget-boolean v8, Lcom/adwo/adsdk/i;->j:Z

    .line 818
    sget-object v3, Lcom/adwo/adsdk/i;->h:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    move v0, v3

    int-to-short v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v29, v0

    const/4 v3, 0x0

    sget-object v4, Lcom/adwo/adsdk/i;->h:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    sget-byte v3, Lcom/adwo/adsdk/i;->y:B

    sget-byte v4, Lcom/adwo/adsdk/i;->z:B

    sget-byte v5, Lcom/adwo/adsdk/i;->u:B

    sget-byte v7, Lcom/adwo/adsdk/i;->x:B

    sget-object v9, Lcom/adwo/adsdk/i;->k:[B

    const/4 v11, 0x0

    sget-object v12, Lcom/adwo/adsdk/i;->l:[B

    sget-object v13, Lcom/adwo/adsdk/i;->s:[B

    sget-object v14, Lcom/adwo/adsdk/i;->t:[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v6, Lcom/adwo/adsdk/i;->C:I

    move v0, v6

    int-to-short v0, v0

    move/from16 v17, v0

    sget-byte v18, Lcom/adwo/adsdk/i;->q:B

    sget-byte v19, Lcom/adwo/adsdk/i;->r:B

    sget-object v20, Lcom/adwo/adsdk/i;->A:[B

    sget-object v21, Lcom/adwo/adsdk/i;->w:[B

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    sget-short v30, Lcom/adwo/adsdk/i;->v:S

    move/from16 v6, p1

    move/from16 v10, p2

    invoke-static/range {v3 .. v30}, Lcom/adwo/adsdk/L;->a(BBBBBZ[BBS[B[B[BSSSBB[B[BZDDBS[Ljava/lang/Integer;S)[B

    move-result-object p2

    .line 824
    const/4 v3, 0x0

    .line 825
    const/4 v4, 0x0

    .line 827
    const/4 v5, 0x0

    .line 830
    sget p1, Lcom/adwo/adsdk/i;->b:I

    sput p1, Lcom/adwo/adsdk/i;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 834
    :try_start_1
    sget p1, Lcom/adwo/adsdk/i;->f:I

    sget v6, Lcom/adwo/adsdk/i;->b:I

    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_7

    .line 835
    sget-boolean p1, Lcom/adwo/adsdk/i;->j:Z

    if-eqz p1, :cond_4

    .line 836
    new-instance p1, Ljava/net/URL;

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/adwo/adsdk/M;->d:[B

    .line 837
    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 836
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 844
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 845
    :try_start_2
    sget v5, Lcom/adwo/adsdk/M;->a:I

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 846
    sget v5, Lcom/adwo/adsdk/M;->a:I

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 877
    :goto_2
    if-nez p1, :cond_f

    .line 932
    if-eqz p1, :cond_1

    .line 941
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 878
    :cond_1
    :goto_3
    const/16 p0, 0x0

    .line 948
    :cond_2
    :goto_4
    monitor-exit v31

    return-object p0

    .line 818
    :cond_3
    :try_start_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v29, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_0

    .line 839
    :cond_4
    :try_start_5
    new-instance p1, Ljava/net/URL;

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/adwo/adsdk/M;->c:[B

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 927
    :catch_0
    move-exception p0

    move-object/from16 p0, v5

    move-object/from16 p1, v4

    move-object/from16 p2, v32

    .line 929
    :goto_5
    :try_start_6
    const-string v4, "Adwo SDK"

    const-string v5, "Could not get ad from Adwo servers,Network Error!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 932
    if-eqz v3, :cond_5

    .line 933
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 934
    :cond_5
    if-eqz p1, :cond_6

    .line 937
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 938
    :cond_6
    if-eqz p0, :cond_16

    .line 941
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 p0, p2

    goto :goto_4

    .line 847
    :cond_7
    :try_start_8
    sget p1, Lcom/adwo/adsdk/i;->f:I

    sget v6, Lcom/adwo/adsdk/i;->c:I

    move/from16 v0, p1

    move v1, v6

    if-eq v0, v1, :cond_8

    .line 848
    sget p1, Lcom/adwo/adsdk/i;->f:I

    sget v6, Lcom/adwo/adsdk/i;->d:I

    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_d

    .line 849
    :cond_8
    sget-boolean p1, Lcom/adwo/adsdk/i;->j:Z

    if-eqz p1, :cond_9

    .line 850
    new-instance p1, Ljava/net/URL;

    new-instance v6, Ljava/lang/String;

    .line 851
    sget-object v7, Lcom/adwo/adsdk/M;->f:[B

    const-string v8, "utf-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 850
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 856
    :goto_6
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 857
    :try_start_9
    const-string v5, "X-Online-Host"

    new-instance v6, Ljava/lang/String;

    .line 858
    sget-object v7, Lcom/adwo/adsdk/M;->e:[B

    const-string v8, "utf-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 857
    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    sget v5, Lcom/adwo/adsdk/M;->a:I

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 860
    sget v5, Lcom/adwo/adsdk/M;->a:I

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_2

    .line 927
    :catch_1
    move-exception p0

    move-object/from16 p0, p1

    move-object/from16 p2, v32

    move-object/from16 p1, v4

    goto :goto_5

    .line 853
    :cond_9
    :try_start_a
    new-instance p1, Ljava/net/URL;

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/adwo/adsdk/M;->g:[B

    .line 854
    const-string v8, "utf-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 853
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    .line 930
    :catchall_0
    move-exception p0

    move-object/from16 p1, v5

    move-object/from16 p2, v4

    .line 932
    :goto_7
    if-eqz v3, :cond_a

    .line 933
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 934
    :cond_a
    if-eqz p2, :cond_b

    .line 937
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 938
    :cond_b
    if-eqz p1, :cond_c

    .line 941
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 947
    :cond_c
    :goto_8
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 799
    :catchall_1
    move-exception p0

    monitor-exit v31

    throw p0

    .line 861
    :cond_d
    :try_start_d
    sget p1, Lcom/adwo/adsdk/i;->f:I

    sget v6, Lcom/adwo/adsdk/i;->e:I

    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_17

    .line 862
    sget-boolean p1, Lcom/adwo/adsdk/i;->j:Z

    if-eqz p1, :cond_e

    .line 863
    new-instance p1, Ljava/net/URL;

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/adwo/adsdk/M;->d:[B

    .line 864
    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 863
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 869
    :goto_9
    new-instance v6, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 870
    new-instance v8, Ljava/net/InetSocketAddress;

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/adwo/adsdk/M;->h:[B

    .line 871
    const-string v11, "utf-8"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v10, 0x50

    .line 870
    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 869
    invoke-direct {v6, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 872
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 873
    :try_start_e
    sget v5, Lcom/adwo/adsdk/M;->a:I

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 874
    sget v5, Lcom/adwo/adsdk/M;->a:I

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_2

    .line 930
    :catchall_2
    move-exception p0

    move-object/from16 p2, v4

    goto :goto_7

    .line 866
    :cond_e
    :try_start_f
    new-instance p1, Ljava/net/URL;

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/adwo/adsdk/M;->c:[B

    .line 867
    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 866
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_9

    .line 880
    :cond_f
    :try_start_10
    const-string v5, "POST"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 881
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 882
    const-string v5, "Content-Type"

    .line 883
    const-string v6, "application/x-www-form-urlencoded"

    .line 882
    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    sget-boolean v5, Lcom/adwo/adsdk/i;->j:Z

    if-eqz v5, :cond_13

    .line 885
    const-string v5, "Content-Length"

    .line 886
    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 885
    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :goto_a
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 898
    sget-boolean v5, Lcom/adwo/adsdk/i;->j:Z

    .line 899
    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 904
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result-object p2

    .line 905
    :try_start_11
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 910
    :goto_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_14

    .line 914
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 917
    array-length v5, v4

    if-lez v5, :cond_15

    .line 918
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/adwo/adsdk/f;->a(Landroid/content/Context;[B)Lcom/adwo/adsdk/f;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-result-object p0

    .line 919
    if-eqz p0, :cond_10

    .line 920
    :try_start_12
    sget-short v4, Lcom/adwo/adsdk/i;->v:S

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    sput-short v4, Lcom/adwo/adsdk/i;->v:S
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 932
    :cond_10
    :goto_c
    if-eqz v3, :cond_11

    .line 933
    :try_start_13
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 934
    :cond_11
    if-eqz p2, :cond_12

    .line 937
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 938
    :cond_12
    if-eqz p1, :cond_2

    .line 941
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_4

    :catch_2
    move-exception p1

    goto/16 :goto_4

    .line 888
    :cond_13
    :try_start_14
    const-string v5, "Content-Length"

    .line 889
    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 888
    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_a

    .line 911
    :cond_14
    :try_start_15
    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_b

    .line 927
    :catch_3
    move-exception p0

    move-object/from16 p0, p1

    move-object/from16 p1, p2

    move-object/from16 p2, v32

    goto/16 :goto_5

    .line 922
    :cond_15
    const-string p0, "Adwo SDK"

    const-string v4, "Could not get ad from Adwo servers."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-object/from16 p0, v32

    goto :goto_c

    .line 944
    :catch_4
    move-exception p0

    move-object/from16 p0, p2

    goto/16 :goto_4

    :catch_5
    move-exception p0

    goto/16 :goto_3

    :catch_6
    move-exception p1

    goto/16 :goto_8

    .line 930
    :catchall_3
    move-exception p0

    goto/16 :goto_7

    :catchall_4
    move-exception p2

    move-object/from16 v33, p2

    move-object/from16 p2, p1

    move-object/from16 p1, p0

    move-object/from16 p0, v33

    goto/16 :goto_7

    .line 927
    :catch_7
    move-exception v4

    move-object/from16 v33, p1

    move-object/from16 p1, p2

    move-object/from16 p2, p0

    move-object/from16 p0, v33

    goto/16 :goto_5

    :cond_16
    move-object/from16 p0, p2

    goto/16 :goto_4

    :cond_17
    move-object/from16 p1, v5

    goto/16 :goto_2
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 423
    const/4 v0, 0x0

    .line 425
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 426
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 428
    if-eqz v1, :cond_0

    .line 429
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "Adwo_PID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 437
    :cond_0
    :goto_0
    return-object v0

    .line 431
    :catch_0
    move-exception v1

    .line 433
    const-string v1, "Adwo SDK"

    .line 434
    const-string v2, "Could not read Adwo_PID meta-data from AndroidManifest.xml."

    .line 433
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 634
    const-string v0, "Adwo SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static a(Z)V
    .locals 0

    .prologue
    .line 736
    sput-boolean p0, Lcom/adwo/adsdk/i;->j:Z

    .line 737
    return-void
.end method

.method protected static b(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/16 v8, 0x9

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 467
    .line 468
    sput-object p0, Lcom/adwo/adsdk/i;->o:Landroid/content/Context;

    .line 469
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 468
    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/adwo/adsdk/i;->i:Landroid/telephony/TelephonyManager;

    .line 470
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Cannot request an ad without READ_PHONE_STATE permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.READ_PHONE_STATE\" />"

    invoke-static {v0}, Lcom/adwo/adsdk/i;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/adwo/adsdk/i;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adwo/adsdk/i;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "00000000"

    sput-object v0, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    :cond_3
    :try_start_0
    sget-object v0, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/adwo/adsdk/i;->a:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/adwo/adsdk/i;->l:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_9

    .line 472
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v0, v6

    :goto_1
    sput-byte v0, Lcom/adwo/adsdk/i;->x:B

    .line 475
    sget-object v0, Lcom/adwo/adsdk/i;->n:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 476
    sget-object v0, Lcom/adwo/adsdk/i;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/adwo/adsdk/i;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adwo/adsdk/i;->m:Ljava/lang/String;

    :goto_2
    sput-object v0, Lcom/adwo/adsdk/i;->n:Ljava/lang/String;

    .line 478
    :cond_5
    sget-object v0, Lcom/adwo/adsdk/i;->A:[B

    if-nez v0, :cond_6

    .line 479
    sget-object v0, Lcom/adwo/adsdk/i;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/adwo/adsdk/i;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phoneNumber:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/adwo/adsdk/M;->a()V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/adwo/adsdk/i;->A:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_8

    .line 484
    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 489
    :try_start_2
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/adwo/adsdk/i;->w:[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 497
    :goto_4
    invoke-static {p0}, Lcom/adwo/adsdk/i;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 499
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "os.version"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 501
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v7, :cond_7

    .line 502
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 505
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double v0, v1, v3

    double-to-int v0, v0

    .line 506
    int-to-byte v0, v0

    sput-byte v0, Lcom/adwo/adsdk/i;->u:B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 517
    :cond_7
    :goto_5
    const-class v0, Landroid/os/Build;

    .line 519
    :try_start_4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/adwo/adsdk/i;->t:[B

    .line 521
    const-string v1, "MANUFACTURER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 522
    new-instance v1, Landroid/os/Build;

    invoke-direct {v1}, Landroid/os/Build;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 524
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 525
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/adwo/adsdk/i;->s:[B
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 546
    :cond_8
    :goto_6
    :try_start_5
    sget-object v0, Lcom/adwo/adsdk/i;->i:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_9

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/adwo/adsdk/i;->C:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 548
    :cond_9
    :goto_7
    sget v0, Lcom/adwo/adsdk/i;->C:I

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_d

    .line 549
    sget-object v0, Lcom/adwo/adsdk/i;->n:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 550
    sget-object v0, Lcom/adwo/adsdk/i;->n:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v9, :cond_c

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    :cond_a
    const/4 v3, 0x7

    if-lt v2, v3, :cond_c

    const/4 v3, 0x7

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    aput-byte v6, v1, v6

    :cond_b
    :goto_8
    const/16 v3, 0xa

    if-lt v2, v3, :cond_c

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    aput-byte v5, v1, v5

    .line 551
    :cond_c
    :goto_9
    aget-byte v0, v1, v6

    sput-byte v0, Lcom/adwo/adsdk/i;->q:B

    .line 552
    aget-byte v0, v1, v5

    sput-byte v0, Lcom/adwo/adsdk/i;->r:B

    .line 558
    :cond_d
    return-void

    .line 472
    :cond_e
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x5

    goto/16 :goto_1

    :cond_f
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v0, v7

    goto/16 :goto_1

    :cond_10
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v0, 0x8

    goto/16 :goto_1

    :cond_11
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v9

    goto/16 :goto_1

    :cond_12
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x7

    goto/16 :goto_1

    :cond_13
    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x4

    goto/16 :goto_1

    :cond_14
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v0, v8

    goto/16 :goto_1

    :cond_15
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v5

    goto/16 :goto_1

    :cond_16
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 476
    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 493
    :catch_0
    move-exception v0

    const-string v0, "Package Name ERROR:  Incorrect application pakage name.  "

    invoke-static {v0}, Lcom/adwo/adsdk/i;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 550
    :cond_18
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    aput-byte v5, v1, v6

    goto/16 :goto_8

    :cond_19
    const-string v4, "2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v3, 0x2

    aput-byte v3, v1, v6

    goto/16 :goto_8

    :cond_1a
    const-string v4, "3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    aput-byte v7, v1, v6

    goto/16 :goto_8

    :cond_1b
    const-string v4, "4"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v3, 0x4

    aput-byte v3, v1, v6

    goto/16 :goto_8

    :cond_1c
    const-string v4, "5"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v3, 0x5

    aput-byte v3, v1, v6

    goto/16 :goto_8

    :cond_1d
    const-string v4, "6"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    aput-byte v9, v1, v6

    goto/16 :goto_8

    :cond_1e
    const-string v4, "7"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v3, 0x7

    aput-byte v3, v1, v6

    goto/16 :goto_8

    :cond_1f
    const-string v4, "8"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/16 v3, 0x8

    aput-byte v3, v1, v6

    goto/16 :goto_8

    :cond_20
    const-string v4, "9"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    aput-byte v8, v1, v6

    goto/16 :goto_8

    :cond_21
    const-string v4, "A"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/16 v3, 0xa

    aput-byte v3, v1, v6

    goto/16 :goto_8

    :cond_22
    const-string v4, "B"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/16 v3, 0xb

    aput-byte v3, v1, v6

    goto/16 :goto_8

    :cond_23
    const-string v4, "C"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/16 v3, 0xc

    aput-byte v3, v1, v6

    goto/16 :goto_8

    :cond_24
    const-string v4, "D"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const/16 v3, 0xd

    aput-byte v3, v1, v6

    goto/16 :goto_8

    :cond_25
    const-string v4, "E"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v3, 0xe

    aput-byte v3, v1, v6

    goto/16 :goto_8

    :cond_26
    const-string v2, "02"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    aput-byte v7, v1, v5

    goto/16 :goto_9

    :cond_27
    const-string v2, "03"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    aput-byte v8, v1, v5

    goto/16 :goto_9

    :cond_28
    const-string v2, "04"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/16 v0, 0xc

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_29
    const-string v2, "05"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v0, 0x8

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_2a
    const-string v2, "06"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v0, 0x7

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_2b
    const-string v2, "07"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    aput-byte v9, v1, v5

    goto/16 :goto_9

    :cond_2c
    const-string v2, "08"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v0, 0x5

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_2d
    const-string v2, "09"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v0, 0x2

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_2e
    const-string v2, "10"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v0, 0xe

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_2f
    const-string v2, "11"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/16 v0, 0x12

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_30
    const-string v2, "12"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/16 v0, 0xd

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_31
    const-string v2, "13"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/16 v0, 0x13

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_32
    const-string v2, "14"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/16 v0, 0xf

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_33
    const-string v2, "15"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/16 v0, 0xb

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_34
    const-string v2, "16"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/16 v0, 0xa

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_35
    const-string v2, "17"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/16 v0, 0x11

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_36
    const-string v2, "18"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/16 v0, 0x10

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_37
    const-string v2, "19"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/16 v0, 0x14

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_38
    const-string v2, "20"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/16 v0, 0x1d

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_39
    const-string v2, "21"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/16 v0, 0x1b

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_3a
    const-string v2, "22"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/16 v0, 0x18

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_3b
    const-string v2, "23"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/16 v0, 0x19

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_3c
    const-string v2, "24"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/16 v0, 0x1a

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_3d
    const-string v2, "25"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/16 v0, 0x1e

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_3e
    const-string v2, "26"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/16 v0, 0x15

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_3f
    const-string v2, "27"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/16 v0, 0x16

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_40
    const-string v2, "28"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/16 v0, 0x17

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_41
    const-string v2, "29"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const/16 v0, 0x1c

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_42
    const-string v2, "30"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/16 v0, 0x1f

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_43
    const-string v2, "31"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_44
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_79

    if-lt v2, v8, :cond_c

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    const/16 v3, 0x18

    aput-byte v3, v1, v6

    :cond_45
    :goto_a
    const/16 v3, 0xd

    if-lt v2, v3, :cond_c

    const/16 v2, 0xa

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "010"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    aput-byte v5, v1, v5

    goto/16 :goto_9

    :cond_46
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const/16 v3, 0xf

    aput-byte v3, v1, v6

    goto :goto_a

    :cond_47
    const-string v4, "2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    const/16 v3, 0x10

    aput-byte v3, v1, v6

    goto :goto_a

    :cond_48
    const-string v4, "5"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    const/16 v3, 0x13

    aput-byte v3, v1, v6

    goto :goto_a

    :cond_49
    const-string v4, "6"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    const/16 v3, 0x14

    aput-byte v3, v1, v6

    goto :goto_a

    :cond_4a
    const-string v2, "022"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    aput-byte v7, v1, v5

    goto/16 :goto_9

    :cond_4b
    const-string v2, "31"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "33"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_4c
    aput-byte v8, v1, v5

    goto/16 :goto_9

    :cond_4d
    const-string v2, "35"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string v2, "34"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    :cond_4e
    const/16 v0, 0xc

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_4f
    const-string v2, "47"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_50

    const-string v2, "48"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    :cond_50
    const/16 v0, 0x8

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_51
    const-string v2, "024"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "41"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "42"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    :cond_52
    const/4 v0, 0x7

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_53
    const-string v2, "43"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    aput-byte v9, v1, v5

    goto/16 :goto_9

    :cond_54
    const-string v2, "45"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string v2, "46"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    :cond_55
    const/4 v0, 0x5

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_56
    const-string v2, "021"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const/4 v0, 0x2

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_57
    const-string v2, "025"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, "51"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_58

    const-string v2, "52"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    :cond_58
    const/16 v0, 0xe

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_59
    const-string v2, "57"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const/16 v0, 0x12

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_5a
    const-string v2, "55"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "56"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    :cond_5b
    const/16 v0, 0xd

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_5c
    const-string v2, "59"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const/16 v0, 0x13

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_5d
    const-string v2, "79"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v2, "70"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    :cond_5e
    const/16 v0, 0xf

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_5f
    const-string v2, "53"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_60

    const-string v2, "54"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_60

    const-string v2, "63"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    :cond_60
    const/16 v0, 0xb

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_61
    const-string v2, "37"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "39"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    :cond_62
    const/16 v0, 0xa

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_63
    const-string v2, "027"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    const-string v2, "71"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_64

    const-string v2, "72"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    :cond_64
    const/16 v0, 0x11

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_65
    const-string v2, "73"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "74"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    :cond_66
    const/16 v0, 0x10

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_67
    const-string v2, "020"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "75"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "76"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "66"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    :cond_68
    const/16 v0, 0x14

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_69
    const-string v2, "77"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const/16 v0, 0x1d

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_6a
    const-string v2, "898"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const/16 v0, 0x1b

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_6b
    const-string v2, "028"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "81"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "82"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, "83"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    :cond_6c
    const/16 v0, 0x18

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_6d
    const-string v2, "85"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "87"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "88"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "69"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    :cond_6e
    const/16 v0, 0x1a

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_6f
    const-string v2, "89"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    const/16 v0, 0x1e

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_70
    const-string v2, "029"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    const-string v2, "91"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    :cond_71
    const/16 v0, 0x15

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_72
    const-string v2, "93"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    const-string v2, "94"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    :cond_73
    const/16 v0, 0x16

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_74
    const-string v2, "97"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    const/16 v0, 0x17

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_75
    const-string v2, "95"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    const/16 v0, 0x1c

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_76
    const-string v2, "90"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_77

    const-string v2, "99"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    :cond_77
    const/16 v0, 0x1f

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_78
    const-string v2, "023"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_79
    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-lt v2, v8, :cond_c

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    const/16 v3, 0x11

    aput-byte v3, v1, v6

    :cond_7a
    :goto_b
    const/16 v3, 0xd

    if-lt v2, v3, :cond_c

    const/16 v2, 0xa

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "010"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    aput-byte v5, v1, v5

    goto/16 :goto_9

    :cond_7b
    const-string v4, "4"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    const/16 v3, 0x12

    aput-byte v3, v1, v6

    goto :goto_b

    :cond_7c
    const-string v4, "7"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    const/16 v3, 0x15

    aput-byte v3, v1, v6

    goto :goto_b

    :cond_7d
    const-string v4, "8"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    const/16 v3, 0x16

    aput-byte v3, v1, v6

    goto :goto_b

    :cond_7e
    const-string v4, "9"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const/16 v3, 0x17

    aput-byte v3, v1, v6

    goto :goto_b

    :cond_7f
    const-string v2, "022"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    aput-byte v7, v1, v5

    goto/16 :goto_9

    :cond_80
    const-string v2, "31"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_81

    const-string v2, "33"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_82

    :cond_81
    aput-byte v8, v1, v5

    goto/16 :goto_9

    :cond_82
    const-string v2, "35"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_83

    const-string v2, "34"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    :cond_83
    const/16 v0, 0xc

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_84
    const-string v2, "47"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_85

    const-string v2, "48"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    :cond_85
    const/16 v0, 0x8

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_86
    const-string v2, "024"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "41"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_87

    const-string v2, "42"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    :cond_87
    const/4 v0, 0x7

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_88
    const-string v2, "43"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    aput-byte v9, v1, v5

    goto/16 :goto_9

    :cond_89
    const-string v2, "45"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    const-string v2, "46"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    :cond_8a
    const/4 v0, 0x5

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_8b
    const-string v2, "021"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    const/4 v0, 0x2

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_8c
    const-string v2, "025"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8d

    const-string v2, "51"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8d

    const-string v2, "52"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8e

    :cond_8d
    const/16 v0, 0xe

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_8e
    const-string v2, "57"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8f

    const-string v2, "58"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    :cond_8f
    const/16 v0, 0x12

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_90
    const-string v2, "55"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_91

    const-string v2, "56"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    :cond_91
    const/16 v0, 0xd

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_92
    const-string v2, "59"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_93

    const/16 v0, 0x13

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_93
    const-string v2, "79"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_94

    const-string v2, "70"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    :cond_94
    const/16 v0, 0xf

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_95
    const-string v2, "53"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_96

    const-string v2, "54"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_96

    const-string v2, "63"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    :cond_96
    const/16 v0, 0xb

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_97
    const-string v2, "37"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_98

    const-string v2, "39"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    :cond_98
    const/16 v0, 0xa

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_99
    const-string v2, "027"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    const-string v2, "71"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9a

    const-string v2, "72"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    :cond_9a
    const/16 v0, 0x11

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_9b
    const-string v2, "73"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9c

    const-string v2, "74"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9d

    :cond_9c
    const/16 v0, 0x10

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_9d
    const-string v2, "020"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9e

    const-string v2, "75"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9e

    const-string v2, "76"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9e

    const-string v2, "66"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9f

    :cond_9e
    const/16 v0, 0x14

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_9f
    const-string v2, "77"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    const/16 v0, 0x1d

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_a0
    const-string v2, "898"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    const/16 v0, 0x1b

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_a1
    const-string v2, "028"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    const-string v2, "81"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a2

    const-string v2, "82"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a2

    const-string v2, "83"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a3

    :cond_a2
    const/16 v0, 0x18

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_a3
    const-string v2, "85"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a4

    const/16 v0, 0x19

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_a4
    const-string v2, "87"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a5

    const-string v2, "88"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a5

    const-string v2, "69"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a6

    :cond_a5
    const/16 v0, 0x1a

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_a6
    const-string v2, "89"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a7

    const/16 v0, 0x1e

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_a7
    const-string v2, "029"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a8

    const-string v2, "91"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a9

    :cond_a8
    const/16 v0, 0x15

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_a9
    const-string v2, "93"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_aa

    const-string v2, "94"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab

    :cond_aa
    const/16 v0, 0x16

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_ab
    const-string v2, "97"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    const/16 v0, 0x17

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_ac
    const-string v2, "95"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ad

    const/16 v0, 0x1c

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_ad
    const-string v2, "90"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ae

    const-string v2, "99"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    :cond_ae
    const/16 v0, 0x1f

    aput-byte v0, v1, v5

    goto/16 :goto_9

    :cond_af
    const-string v2, "023"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    aput-byte v0, v1, v5

    goto/16 :goto_9

    .line 546
    :catch_1
    move-exception v0

    goto/16 :goto_7

    .line 540
    :catch_2
    move-exception v0

    goto/16 :goto_6

    .line 537
    :catch_3
    move-exception v0

    goto/16 :goto_6

    .line 534
    :catch_4
    move-exception v0

    goto/16 :goto_6

    .line 531
    :catch_5
    move-exception v0

    goto/16 :goto_6

    .line 528
    :catch_6
    move-exception v0

    goto/16 :goto_6

    :catch_7
    move-exception v0

    goto/16 :goto_5

    :catch_8
    move-exception v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_0
.end method

.method protected static b(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-string v3, "CONFIGURATION ERROR:  Incorrect Adwo publisher ID.  Should 32 [a-z,0-9] characters:  "

    .line 708
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 709
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONFIGURATION ERROR:  Incorrect Adwo publisher ID.  Should 32 [a-z,0-9] characters:  "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 710
    sget-object v1, Lcom/adwo/adsdk/i;->k:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adwo/adsdk/i;->a(Ljava/lang/String;)V

    .line 712
    :cond_1
    const-string v0, "Adwo SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your Adwo PID is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/adwo/adsdk/i;->k:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    return-void

    .line 719
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONFIGURATION ERROR:  Incorrect Adwo publisher ID.  Should 32 [a-z,0-9] characters:  "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    sget-object v1, Lcom/adwo/adsdk/i;->k:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adwo/adsdk/i;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1742
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/webkit/WebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1743
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings;

    .line 1746
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 1747
    sput-object v0, Lcom/adwo/adsdk/i;->g:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1750
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1754
    :goto_0
    return-object v0

    .line 1749
    :catchall_0
    move-exception v0

    .line 1750
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1751
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1753
    :catch_0
    move-exception v0

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 1754
    sput-object v0, Lcom/adwo/adsdk/i;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static c(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1760
    .line 1764
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1765
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    :try_start_1
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1767
    sget v1, Lcom/adwo/adsdk/M;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1768
    const-string v1, "User-Agent"

    sget-object v2, Lcom/adwo/adsdk/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1770
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1771
    :try_start_2
    const-string v2, "adwo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connect to beacon: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1776
    if-eqz v1, :cond_0

    .line 1779
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1788
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1789
    :goto_1
    return-void

    .line 1773
    :catch_0
    move-exception v0

    move-object v0, v3

    move-object v1, v3

    .line 1776
    :goto_2
    if-eqz v0, :cond_1

    .line 1779
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1788
    :cond_1
    :goto_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 1775
    :catchall_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 1776
    :goto_4
    if-eqz v1, :cond_2

    .line 1779
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1788
    :cond_2
    :goto_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1789
    throw v0

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_0

    .line 1775
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_4

    .line 1773
    :catch_4
    move-exception v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method
