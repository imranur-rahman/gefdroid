.class public Lcom/adview/AdViewTargeting;
.super Ljava/lang/Object;
.source "AdViewTargeting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adview/AdViewTargeting$AdArea;,
        Lcom/adview/AdViewTargeting$Gender;
    }
.end annotation


# static fields
.field private static adArea:Lcom/adview/AdViewTargeting$AdArea;

.field private static birthDate:Ljava/util/GregorianCalendar;

.field private static gender:Lcom/adview/AdViewTargeting$Gender;

.field private static keywords:Ljava/lang/String;

.field private static postalCode:Ljava/lang/String;

.field private static testMode:Z

.field private static youmi_apppwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lcom/adview/AdViewTargeting;->resetData()V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdArea()Lcom/adview/AdViewTargeting$AdArea;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/adview/AdViewTargeting;->adArea:Lcom/adview/AdViewTargeting$AdArea;

    return-object v0
.end method

.method public static getAge()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 71
    sget-object v0, Lcom/adview/AdViewTargeting;->birthDate:Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lcom/adview/AdViewTargeting;->birthDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getBirthDate()Ljava/util/GregorianCalendar;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/adview/AdViewTargeting;->birthDate:Ljava/util/GregorianCalendar;

    return-object v0
.end method

.method public static getGender()Lcom/adview/AdViewTargeting$Gender;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/adview/AdViewTargeting;->gender:Lcom/adview/AdViewTargeting$Gender;

    return-object v0
.end method

.method public static getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/adview/AdViewTargeting;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public static getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/adview/AdViewTargeting;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getTestMode()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/adview/AdViewTargeting;->testMode:Z

    return v0
.end method

.method public static getYoumi_apppwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/adview/AdViewTargeting;->youmi_apppwd:Ljava/lang/String;

    return-object v0
.end method

.method public static resetData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adview/AdViewTargeting;->testMode:Z

    .line 21
    sget-object v0, Lcom/adview/AdViewTargeting$Gender;->UNKNOWN:Lcom/adview/AdViewTargeting$Gender;

    sput-object v0, Lcom/adview/AdViewTargeting;->gender:Lcom/adview/AdViewTargeting$Gender;

    .line 22
    sput-object v1, Lcom/adview/AdViewTargeting;->birthDate:Ljava/util/GregorianCalendar;

    .line 23
    sput-object v1, Lcom/adview/AdViewTargeting;->postalCode:Ljava/lang/String;

    .line 24
    sput-object v1, Lcom/adview/AdViewTargeting;->keywords:Ljava/lang/String;

    .line 25
    sput-object v1, Lcom/adview/AdViewTargeting;->youmi_apppwd:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/adview/AdViewTargeting$AdArea;->TOP:Lcom/adview/AdViewTargeting$AdArea;

    sput-object v0, Lcom/adview/AdViewTargeting;->adArea:Lcom/adview/AdViewTargeting$AdArea;

    .line 27
    return-void
.end method

.method public static setAdArea(Lcom/adview/AdViewTargeting$AdArea;)V
    .locals 0
    .param p0, "area"    # Lcom/adview/AdViewTargeting$AdArea;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    sget-object p0, Lcom/adview/AdViewTargeting$AdArea;->TOP:Lcom/adview/AdViewTargeting$AdArea;

    .line 49
    :cond_0
    sput-object p0, Lcom/adview/AdViewTargeting;->adArea:Lcom/adview/AdViewTargeting$AdArea;

    .line 50
    return-void
.end method

.method public static setAge(I)V
    .locals 4
    .param p0, "age"    # I

    .prologue
    const/4 v3, 0x1

    .line 87
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    sput-object v0, Lcom/adview/AdViewTargeting;->birthDate:Ljava/util/GregorianCalendar;

    .line 88
    return-void
.end method

.method public static setBirthDate(Ljava/util/GregorianCalendar;)V
    .locals 0
    .param p0, "birthDate"    # Ljava/util/GregorianCalendar;

    .prologue
    .line 83
    sput-object p0, Lcom/adview/AdViewTargeting;->birthDate:Ljava/util/GregorianCalendar;

    .line 84
    return-void
.end method

.method public static setGender(Lcom/adview/AdViewTargeting$Gender;)V
    .locals 0
    .param p0, "gender"    # Lcom/adview/AdViewTargeting$Gender;

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    sget-object p0, Lcom/adview/AdViewTargeting$Gender;->UNKNOWN:Lcom/adview/AdViewTargeting$Gender;

    .line 67
    :cond_0
    sput-object p0, Lcom/adview/AdViewTargeting;->gender:Lcom/adview/AdViewTargeting$Gender;

    .line 68
    return-void
.end method

.method public static setKeywords(Ljava/lang/String;)V
    .locals 0
    .param p0, "keywords"    # Ljava/lang/String;

    .prologue
    .line 103
    sput-object p0, Lcom/adview/AdViewTargeting;->keywords:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p0, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 95
    sput-object p0, Lcom/adview/AdViewTargeting;->postalCode:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0
    .param p0, "testMode"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lcom/adview/AdViewTargeting;->testMode:Z

    .line 40
    return-void
.end method

.method public static setYoumi_apppwd(Ljava/lang/String;)V
    .locals 0
    .param p0, "youmi_apppwd"    # Ljava/lang/String;

    .prologue
    .line 32
    sput-object p0, Lcom/adview/AdViewTargeting;->youmi_apppwd:Ljava/lang/String;

    .line 33
    return-void
.end method
