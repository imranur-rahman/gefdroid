.class public Lcom/waps/ads/AdGroupTargeting;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Lcom/waps/ads/g;

.field private static c:Ljava/util/GregorianCalendar;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/waps/ads/AdGroupTargeting;->a:Z

    invoke-static {}, Lcom/waps/ads/AdGroupTargeting;->resetData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addKeyword(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/waps/ads/AdGroupTargeting;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/waps/ads/AdGroupTargeting;->f:Ljava/util/Set;

    :cond_0
    sget-object v0, Lcom/waps/ads/AdGroupTargeting;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getAge()I
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/waps/ads/AdGroupTargeting;->c:Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/waps/ads/AdGroupTargeting;->c:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getBirthDate()Ljava/util/GregorianCalendar;
    .locals 1

    sget-object v0, Lcom/waps/ads/AdGroupTargeting;->c:Ljava/util/GregorianCalendar;

    return-object v0
.end method

.method public static getGender()Lcom/waps/ads/g;
    .locals 1

    sget-object v0, Lcom/waps/ads/AdGroupTargeting;->b:Lcom/waps/ads/g;

    return-object v0
.end method

.method public static getKeywordSet()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/waps/ads/AdGroupTargeting;->f:Ljava/util/Set;

    return-object v0
.end method

.method public static getKeywords()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/waps/ads/AdGroupTargeting;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getPostalCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/waps/ads/AdGroupTargeting;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getTestMode()Z
    .locals 1

    sget-boolean v0, Lcom/waps/ads/AdGroupTargeting;->a:Z

    return v0
.end method

.method public static resetData()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/waps/ads/AdGroupTargeting;->a:Z

    sget-object v0, Lcom/waps/ads/g;->a:Lcom/waps/ads/g;

    sput-object v0, Lcom/waps/ads/AdGroupTargeting;->b:Lcom/waps/ads/g;

    sput-object v1, Lcom/waps/ads/AdGroupTargeting;->c:Ljava/util/GregorianCalendar;

    sput-object v1, Lcom/waps/ads/AdGroupTargeting;->d:Ljava/lang/String;

    sput-object v1, Lcom/waps/ads/AdGroupTargeting;->e:Ljava/lang/String;

    sput-object v1, Lcom/waps/ads/AdGroupTargeting;->f:Ljava/util/Set;

    return-void
.end method

.method public static setAge(I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v0, Lcom/waps/ads/AdGroupTargeting;->c:Ljava/util/GregorianCalendar;

    return-void
.end method

.method public static setBirthDate(Ljava/util/GregorianCalendar;)V
    .locals 0

    sput-object p0, Lcom/waps/ads/AdGroupTargeting;->c:Ljava/util/GregorianCalendar;

    return-void
.end method

.method public static setGender(Lcom/waps/ads/g;)V
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/waps/ads/g;->a:Lcom/waps/ads/g;

    :goto_0
    sput-object v0, Lcom/waps/ads/AdGroupTargeting;->b:Lcom/waps/ads/g;

    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static setKeywordSet(Ljava/util/Set;)V
    .locals 0

    sput-object p0, Lcom/waps/ads/AdGroupTargeting;->f:Ljava/util/Set;

    return-void
.end method

.method public static setKeywords(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/waps/ads/AdGroupTargeting;->e:Ljava/lang/String;

    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/waps/ads/AdGroupTargeting;->d:Ljava/lang/String;

    return-void
.end method

.method public static setTestMode(Z)V
    .locals 2

    sput-boolean p0, Lcom/waps/ads/AdGroupTargeting;->a:Z

    sget-boolean v0, Lcom/waps/ads/AdGroupTargeting;->a:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/waps/ads/AdGroupManager;->setConfigExpireTimeout(J)V

    :cond_0
    return-void
.end method
