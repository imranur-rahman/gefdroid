.class public Lcom/waps/ads/c/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http://ads.waps.cn/action/adgroup/config?"

    sput-object v0, Lcom/waps/ads/c/a;->a:Ljava/lang/String;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/waps/ads/c/a;->b:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DD)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_0

    mul-double v0, p0, p2

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)D
    .locals 4

    sget-wide v0, Lcom/waps/ads/c/a;->b:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    sput-wide v0, Lcom/waps/ads/c/a;->b:D

    :cond_0
    sget-wide v0, Lcom/waps/ads/c/a;->b:D

    return-wide v0
.end method

.method public static a(ID)I
    .locals 2

    int-to-double v0, p0

    invoke-static {v0, v1, p1, p2}, Lcom/waps/ads/c/a;->a(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v1, p0

    move v2, v8

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    move v5, v4

    move v4, v8

    :goto_1
    if-ltz v5, :cond_0

    const/16 v6, 0x9

    if-gt v5, v6, :cond_0

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    and-int/lit8 v5, v3, 0xf

    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x1

    if-lt v4, v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v6, 0xa

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v4, v6

    goto :goto_1
.end method
