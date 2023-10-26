.class public Lcn/domob/android/ads/DomobAdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobAdManager$DomobLocationListener;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO:Ljava/lang/String; = "audio"

.field public static final ACTION_CALL:Ljava/lang/String; = "call"

.field public static final ACTION_IN_APP:Ljava/lang/String; = "inapp"

.field public static final ACTION_MAIL:Ljava/lang/String; = "mail"

.field public static final ACTION_MAP:Ljava/lang/String; = "map"

.field public static final ACTION_MARKET:Ljava/lang/String; = "market"

.field public static final ACTION_SMS:Ljava/lang/String; = "sms"

.field public static final ACTION_URL:Ljava/lang/String; = "url"

.field public static final ACTION_VIDEO:Ljava/lang/String; = "video"

.field public static final GENDER_FEMALE:Ljava/lang/String; = "f"

.field public static final GENDER_MALE:Ljava/lang/String; = "m"

.field public static final TEST_EMULATOR:Ljava/lang/String; = "emulator"

.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/Boolean;

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Landroid/location/Location;

.field private static k:Z

.field private static l:Z

.field private static m:J

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/util/GregorianCalendar;

.field private static q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/ads/DomobAdManager;->e:Ljava/lang/Boolean;

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcn/domob/android/ads/DomobAdManager;->f:Z

    .line 94
    sput-boolean v2, Lcn/domob/android/ads/DomobAdManager;->k:Z

    .line 95
    sput-boolean v2, Lcn/domob/android/ads/DomobAdManager;->l:Z

    .line 96
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/domob/android/ads/DomobAdManager;->m:J

    .line 100
    sput-boolean v2, Lcn/domob/android/ads/DomobAdManager;->q:Z

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, ""

    .line 193
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 194
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/DomobAdManager;->i:Ljava/lang/String;

    .line 196
    :cond_0
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 198
    if-nez v0, :cond_1

    move v0, v3

    .line 204
    :goto_0
    sget-object v1, Lcn/domob/android/ads/DomobAdManager;->i:Ljava/lang/String;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_1
    return v0

    .line 202
    :cond_1
    const-string v1, "0"

    const-string v2, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 204
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 250
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const-string v0, ","

    const-string v7, "-1"

    const-string v6, "DomobSDK"

    .line 255
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 259
    :try_start_0
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    :goto_0
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 268
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_3

    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    :goto_1
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-static {p0}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcn/domob/android/ads/DBHelper;->b()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 281
    :cond_0
    const-string v2, "DomobSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 282
    const-string v2, "DomobSDK"

    const-string v3, "conf db is empty!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v0

    move-object v0, v4

    .line 299
    :goto_2
    if-eqz v2, :cond_1

    .line 300
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_1
    if-eqz v0, :cond_5

    .line 304
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 263
    :cond_2
    :try_start_2
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    move-object v0, v4

    move-object v2, v4

    .line 293
    :goto_4
    const-string v3, "DomobSDK"

    const-string v3, "you must set READ_PHONE_STATE permisson in AndroidManifest.xml"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 272
    :cond_3
    :try_start_3
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 295
    :catch_1
    move-exception v0

    move-object v2, v4

    move-object v3, v4

    .line 296
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    .line 285
    :cond_4
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 286
    const-string v2, "_uuid"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    .line 287
    :try_start_5
    const-string v3, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 288
    const-string v3, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get UUID from conf db:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_2

    .line 306
    :cond_5
    const-string v0, "-1"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 295
    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v4

    goto :goto_5

    :catch_3
    move-exception v3

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_5

    .line 292
    :catch_4
    move-exception v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_4

    :catch_5
    move-exception v3

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_4

    :cond_6
    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_2

    :cond_7
    move-object v2, v0

    move-object v0, v4

    goto :goto_2
.end method

.method protected static getApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 790
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 791
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->init(Landroid/content/Context;)V

    .line 793
    :cond_0
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected static getApplicationVersion(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 797
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 798
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->init(Landroid/content/Context;)V

    .line 800
    :cond_0
    sget v0, Lcn/domob/android/ads/DomobAdManager;->b:I

    return v0
.end method

.method public static getBirthday()Ljava/util/GregorianCalendar;
    .locals 1

    .prologue
    .line 562
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->p:Ljava/util/GregorianCalendar;

    return-object v0
.end method

.method protected static getBirthdayOfString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 566
    const/4 v0, 0x0

    .line 568
    invoke-static {}, Lcn/domob/android/ads/DomobAdManager;->getBirthday()Ljava/util/GregorianCalendar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 569
    const-string v0, "%04d%02d%02d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 570
    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    .line 569
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 573
    :cond_0
    return-object v0
.end method

.method protected static getCID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "DomobSDK"

    .line 761
    const/4 v0, 0x0

    .line 763
    :try_start_0
    invoke-static {p0}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v1

    .line 764
    invoke-virtual {v1}, Lcn/domob/android/ads/DBHelper;->b()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 765
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 766
    :cond_0
    const-string v1, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    const-string v1, "DomobSDK"

    const-string v2, "conf db is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 782
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 783
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 786
    :cond_2
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->g:Ljava/lang/String;

    return-object v0

    .line 770
    :cond_3
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 771
    const-string v1, "_cid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 772
    sput-object v1, Lcn/domob/android/ads/DomobAdManager;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 773
    const-string v1, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    const-string v1, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get cid from conf db:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/domob/android/ads/DomobAdManager;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 779
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 778
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method protected static getCoord(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v4, "DomobSDK"

    .line 497
    const/4 v0, 0x0

    .line 498
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->getCoordinates(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 499
    if-eqz v1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    const-string v1, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User coordinates are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    return-object v0
.end method

.method protected static getCoordTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 514
    sget-wide v0, Lcn/domob/android/ads/DomobAdManager;->m:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getCoordinates(Landroid/content/Context;)Landroid/location/Location;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v1, "DomobSDK"

    .line 432
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcn/domob/android/ads/DomobAdManager;->k:Z

    if-nez v0, :cond_1

    .line 433
    :cond_0
    const-string v0, "DomobSDK"

    const-string v0, "Location information is not being used for ad requests."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 489
    :goto_0
    return-object v0

    .line 437
    :cond_1
    sget-boolean v0, Lcn/domob/android/ads/DomobAdManager;->k:Z

    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->j:Landroid/location/Location;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/domob/android/ads/DomobAdManager;->m:J

    const-wide/32 v4, 0x895440

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 438
    :cond_2
    monitor-enter p0

    .line 439
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/domob/android/ads/DomobAdManager;->m:J

    .line 444
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 445
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    const-string v0, "DomobSDK"

    const-string v1, "Trying to get locations from the network."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_3
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_c

    .line 452
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 453
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 454
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v6

    .line 458
    :goto_1
    if-nez v2, :cond_b

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_b

    .line 459
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 460
    const-string v0, "DomobSDK"

    const-string v1, "Trying to get locations from GPS."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_4
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_a

    .line 465
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 466
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 467
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    move v2, v6

    .line 471
    :goto_2
    if-nez v2, :cond_7

    .line 472
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 473
    const-string v0, "DomobSDK"

    const-string v1, "Cannot access user\'s location.  Permissions are not set."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_5
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :cond_6
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->j:Landroid/location/Location;

    goto/16 :goto_0

    .line 475
    :cond_7
    if-nez v1, :cond_8

    .line 476
    :try_start_1
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 477
    const-string v0, "DomobSDK"

    const-string v1, "No location providers are available.  Ads will not be geotargeted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 480
    :cond_8
    :try_start_2
    const-string v2, "DomobSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 481
    const-string v2, "DomobSDK"

    const-string v3, "Location provider setup successfully."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_9
    new-instance v5, Lcn/domob/android/ads/DomobAdManager$DomobLocationListener;

    invoke-direct {v5, v0}, Lcn/domob/android/ads/DomobAdManager$DomobLocationListener;-><init>(Landroid/location/LocationManager;)V

    .line 484
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_a
    move-object v1, v2

    move v2, v6

    goto :goto_2

    :cond_b
    move v9, v1

    move-object v1, v2

    move v2, v9

    goto :goto_2

    :cond_c
    move v1, v6

    move-object v2, v8

    goto/16 :goto_1

    :cond_d
    move-object v0, v8

    move v1, v7

    move-object v2, v8

    goto/16 :goto_1
.end method

.method protected static getCurrentApn(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const-string v3, "DomobSDK"

    .line 804
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 805
    if-eqz v0, :cond_1

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    const-string v0, "DomobSDK"

    const-string v0, "network is wifi, don\'t read apn."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v2

    .line 816
    :goto_0
    return-object v0

    .line 812
    :cond_1
    const-string v0, "content://telephony/carriers/preferapn"

    .line 813
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 814
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getCurrentDensity(Landroid/content/Context;Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 336
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method protected static getDeviceDensity(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 326
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 327
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 328
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method protected static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 210
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const-string v0, "-1,-1,emulator"

    sput-object v0, Lcn/domob/android/ads/DomobAdManager;->h:Ljava/lang/String;

    .line 217
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->h:Ljava/lang/String;

    return-object v0

    .line 213
    :cond_1
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/DomobAdManager;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 824
    invoke-static {}, Lcn/domob/android/ads/j;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->n:Ljava/lang/String;

    return-object v0
.end method

.method protected static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v2, "unknown"

    .line 221
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 222
    const-string v0, "DomobSDK"

    const-string v1, "Cannot access user\'s network type.  Permissions are not set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v0, "unknown"

    move-object v0, v2

    .line 237
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 226
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 227
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 231
    if-nez v0, :cond_1

    .line 232
    const-string v0, "gprs"

    goto :goto_0

    .line 233
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 234
    const-string v0, "wifi"

    goto :goto_0

    .line 237
    :cond_2
    const-string v0, "unknown"

    move-object v0, v2

    goto :goto_0
.end method

.method protected static getOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    const-string v0, "v"

    .line 314
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 316
    const-string v0, "h"

    .line 318
    :cond_0
    return-object v0
.end method

.method public static getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static getPublisherId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 187
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->init(Landroid/content/Context;)V

    .line 189
    :cond_0
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected static getScreenCurrentHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 395
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 396
    const/4 v1, 0x0

    .line 397
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 400
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected static getScreenCurrentWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "context":Landroid/content/Context;
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 381
    const/4 v1, 0x0

    .line 382
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 385
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected static getScreenHeight(Landroid/content/Context;Landroid/view/View;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 363
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 364
    const/4 v1, 0x0

    .line 365
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 368
    :goto_0
    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->getDeviceDensity(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0, p1}, Lcn/domob/android/ads/DomobAdManager;->getCurrentDensity(Landroid/content/Context;Landroid/view/View;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 369
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected static getScreenWidth(Landroid/content/Context;Landroid/view/View;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 346
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 347
    const/4 v1, 0x0

    .line 348
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 351
    :goto_0
    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->getDeviceDensity(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0, p1}, Lcn/domob/android/ads/DomobAdManager;->getCurrentDensity(Landroid/content/Context;Landroid/view/View;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 352
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getTestAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected static declared-synchronized init(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "DOMOB_TEST_MODE"

    const-string v0, "DomobSDK"

    .line 103
    const-class v0, Lcn/domob/android/ads/DomobAdManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcn/domob/android/ads/DomobAdManager;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 106
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcn/domob/android/ads/DomobAdManager;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 111
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    .line 113
    :try_start_3
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "DOMOB_PID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    sget-object v4, Lcn/domob/android/ads/DomobAdManager;->c:Ljava/lang/String;

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    .line 115
    const-string v4, "DomobSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Publisher ID read from AndroidManifest.xml is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v3}, Lcn/domob/android/ads/DomobAdManager;->setPublisherId(Ljava/lang/String;)V

    .line 119
    :cond_2
    sget-object v3, Lcn/domob/android/ads/DomobAdManager;->e:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "DOMOB_TEST_MODE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "DOMOB_TEST_MODE"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 122
    const-string v4, "DomobSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Test Mode read from AndroidManifest.xml is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcn/domob/android/ads/DomobAdManager;->setIsTestMode(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :cond_3
    :try_start_4
    sget-boolean v3, Lcn/domob/android/ads/DomobAdManager;->l:Z

    if-nez v3, :cond_4

    .line 131
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "DOMOB_ALLOW_LOCATION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcn/domob/android/ads/DomobAdManager;->k:Z

    .line 137
    :cond_4
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcn/domob/android/ads/DomobAdManager;->a:Ljava/lang/String;

    .line 138
    const-string v2, "DomobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application\'s package name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/domob/android/ads/DomobAdManager;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_5
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcn/domob/android/ads/DomobAdManager;->b:I

    .line 144
    const-string v1, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application\'s version number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/domob/android/ads/DomobAdManager;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    :try_start_5
    const-string v2, "DomobSDK"

    const-string v3, "failed to init DomobAdManager!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 126
    :catch_1
    move-exception v1

    :try_start_6
    const-string v1, "DomobSDK"

    const-string v2, "Failed to initialize DomobAdManager! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v1, "DomobSDK"

    const-string v2, "DOMOB_PID is missed in AndroidManifest.xml!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public static isTestAllowed(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "DomobSDK"

    .line 727
    const/4 v0, 0x0

    .line 729
    :try_start_0
    invoke-static {p0}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v1

    .line 730
    invoke-virtual {v1}, Lcn/domob/android/ads/DBHelper;->b()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 731
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 732
    :cond_0
    const-string v1, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 733
    const-string v1, "DomobSDK"

    const-string v2, "conf db is empty!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 753
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 754
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 757
    :cond_2
    sget-boolean v0, Lcn/domob/android/ads/DomobAdManager;->f:Z

    return v0

    .line 736
    :cond_3
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 737
    const-string v1, "_test_flag"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 738
    const-string v2, "DomobSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 739
    const-string v2, "DomobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get test flag from conf db:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_4
    if-nez v1, :cond_5

    .line 743
    const-string v1, "DomobSDK"

    const-string v2, "test mode is disabled by server!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/4 v1, 0x0

    sput-boolean v1, Lcn/domob/android/ads/DomobAdManager;->f:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 749
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 750
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 746
    :cond_5
    const/4 v1, 0x1

    :try_start_3
    sput-boolean v1, Lcn/domob/android/ads/DomobAdManager;->f:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 749
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public static isTestMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 650
    const/4 v0, 0x1

    .line 652
    sget-object v1, Lcn/domob/android/ads/DomobAdManager;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 653
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->init(Landroid/content/Context;)V

    .line 656
    :cond_0
    sget-object v1, Lcn/domob/android/ads/DomobAdManager;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 657
    sget-object v0, Lcn/domob/android/ads/DomobAdManager;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 660
    :cond_1
    return v0
.end method

.method public static setAllowUseOfLocation(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 160
    const/4 v0, 0x1

    sput-boolean v0, Lcn/domob/android/ads/DomobAdManager;->l:Z

    .line 161
    sput-boolean p0, Lcn/domob/android/ads/DomobAdManager;->k:Z

    .line 162
    return-void
.end method

.method public static setBirthday(III)V
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 552
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-virtual {v0, p0, v1, p2}, Ljava/util/GregorianCalendar;->set(III)V

    .line 553
    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->setBirthday(Ljava/util/GregorianCalendar;)V

    .line 554
    return-void
.end method

.method public static setBirthday(Ljava/util/GregorianCalendar;)V
    .locals 0
    .param p0, "birthday"    # Ljava/util/GregorianCalendar;

    .prologue
    .line 541
    sput-object p0, Lcn/domob/android/ads/DomobAdManager;->p:Ljava/util/GregorianCalendar;

    .line 542
    return-void
.end method

.method protected static setCoordTimestamp(J)J
    .locals 0
    .param p0, "ts"    # J

    .prologue
    .line 510
    sput-wide p0, Lcn/domob/android/ads/DomobAdManager;->m:J

    return-wide p0
.end method

.method public static setEndpoint(Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 820
    invoke-static {p0}, Lcn/domob/android/ads/j;->a(Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method public static setGender(Ljava/lang/String;)V
    .locals 0
    .param p0, "gender"    # Ljava/lang/String;

    .prologue
    .line 588
    sput-object p0, Lcn/domob/android/ads/DomobAdManager;->n:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public static setIsTestMode(Z)V
    .locals 1
    .param p0, "isTestMode"    # Z

    .prologue
    .line 672
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/DomobAdManager;->e:Ljava/lang/Boolean;

    .line 673
    return-void
.end method

.method protected static setLocation(Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 493
    sput-object p0, Lcn/domob/android/ads/DomobAdManager;->j:Landroid/location/Location;

    return-object p0
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p0, "pc"    # Ljava/lang/String;

    .prologue
    .line 523
    sput-object p0, Lcn/domob/android/ads/DomobAdManager;->o:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public static setPublisherId(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 170
    if-eqz p0, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    const-string v0, "DomobSDK"

    const-string v1, "Incorrect Domob publisher ID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_1
    sput-object p0, Lcn/domob/android/ads/DomobAdManager;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setTestAction(Ljava/lang/String;)V
    .locals 0
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 702
    if-eqz p0, :cond_0

    .line 703
    sput-object p0, Lcn/domob/android/ads/DomobAdManager;->d:Ljava/lang/String;

    .line 705
    :cond_0
    return-void
.end method
