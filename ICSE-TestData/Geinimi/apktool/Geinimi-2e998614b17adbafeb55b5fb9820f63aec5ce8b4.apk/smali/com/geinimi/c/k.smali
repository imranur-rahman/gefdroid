.class public final Lcom/geinimi/c/k;
.super Ljava/lang/Object;


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field private static J:Ljava/lang/String;

.field private static K:Landroid/content/Context;

.field private static L:Ljava/util/Vector;

.field private static M:Ljava/util/Vector;

.field public static a:[B

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/geinimi/c/k;->a:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->J:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/geinimi/c/k;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/geinimi/c/k;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icons"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/geinimi/c/k;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpapers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/geinimi/c/k;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->e:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->f:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->g:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->h:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->i:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->j:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->k:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->l:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->m:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->n:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->o:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->p:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->q:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->r:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->s:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->t:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->u:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->v:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->w:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->x:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->y:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->z:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->A:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->B:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->C:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->D:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->E:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->F:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->G:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->H:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->I:Ljava/lang/String;

    sput-object v2, Lcom/geinimi/c/k;->K:Landroid/content/Context;

    sput-object v2, Lcom/geinimi/c/k;->L:Ljava/util/Vector;

    sput-object v2, Lcom/geinimi/c/k;->M:Ljava/util/Vector;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>(Lcom/geinimi/AdService;)V
    .locals 3

    const-string v1, "1234567890"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/geinimi/c/k;->K:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/geinimi/AdService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "1234567890"

    sput-object v1, Lcom/geinimi/c/k;->f:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->g:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->h:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->i:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->j:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->k:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->l:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->m:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->n:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->o:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->p:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->q:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->r:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "1234567890"

    sput-object v1, Lcom/geinimi/c/k;->s:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->t:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->u:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->v:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->w:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->x:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->y:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->z:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->A:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->B:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->C:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->D:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->E:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->F:Ljava/lang/String;

    const-string v0, "yyyy-MM-dd kk:mm:ss"

    sget-wide v1, Landroid/os/Build;->TIME:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->G:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->H:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    sput-object v0, Lcom/geinimi/c/k;->I:Ljava/lang/String;

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/geinimi/c/k;->K:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0xb

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/geinimi/AdService;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/geinimi/AdService;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/geinimi/AdService;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/geinimi/AdService;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4"

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4"

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runmode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/geinimi/AdService;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/geinimi/AdService;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/geinimi/AdService;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i()V
    .locals 7

    invoke-static {}, Lcom/geinimi/c/b;->a()Ljava/util/Vector;

    move-result-object v0

    sput-object v0, Lcom/geinimi/c/k;->L:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/geinimi/c/k;->M:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/geinimi/c/k;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/geinimi/c/k;->L:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/geinimi/c/c;

    iget-object v2, v0, Lcom/geinimi/c/c;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/geinimi/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    sget-object v3, Lcom/geinimi/c/k;->M:Ljava/util/Vector;

    new-instance v4, Lcom/geinimi/c/c;

    iget-object v5, v0, Lcom/geinimi/c/c;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/geinimi/c/c;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/geinimi/c/c;->d:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v6, v0}, Lcom/geinimi/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static j()[Lcom/geinimi/c/c;
    .locals 2

    sget-object v0, Lcom/geinimi/c/k;->M:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/geinimi/c/c;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geinimi/c/c;

    return-object v0
.end method
