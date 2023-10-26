.class public Lcom/adview/AdViewManager;
.super Ljava/lang/Object;
.source "AdViewManager.java"


# static fields
.field private static final PREFS_STRING_CONFIG:Ljava/lang/String; = "config"

.field private static final PREFS_STRING_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static configExpireTimeout:J


# instance fields
.field private contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public deviceIDHash:Ljava/lang/String;

.field private extra:Lcom/adview/obj/Extra;

.field public keyAdView:Ljava/lang/String;

.field public localeString:Ljava/lang/String;

.field public location:Landroid/location/Location;

.field private rationsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adview/obj/Ration;",
            ">;"
        }
    .end annotation
.end field

.field private rationsList_pri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adview/obj/Ration;",
            ">;"
        }
    .end annotation
.end field

.field rollover_pri:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/adview/obj/Ration;",
            ">;"
        }
    .end annotation
.end field

.field rollovers:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/adview/obj/Ration;",
            ">;"
        }
    .end annotation
.end field

.field private totalWeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/adview/AdViewManager;->configExpireTimeout:J

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 5
    .param p2, "keyAdView"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "contextReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/adview/AdViewManager;->totalWeight:D

    .line 67
    const-string v3, "Android"

    const-string v4, "Creating weivda reganam..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-object p1, p0, Lcom/adview/AdViewManager;->contextReference:Ljava/lang/ref/WeakReference;

    .line 69
    iput-object p2, p0, Lcom/adview/AdViewManager;->keyAdView:Ljava/lang/String;

    .line 74
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 75
    .local v2, "md":Ljava/security/MessageDigest;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "android_id"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "deviceIDString":Ljava/lang/StringBuffer;
    const-string v3, "AdWhirl"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/adview/util/AdViewUtil;->convertToHex([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adview/AdViewManager;->deviceIDHash:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "deviceIDString":Ljava/lang/StringBuffer;
    .end local v2    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 79
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "00000000000000000000000000000000"

    iput-object v3, p0, Lcom/adview/AdViewManager;->deviceIDHash:Ljava/lang/String;

    goto :goto_0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 220
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x2000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 221
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 225
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 235
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 242
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    .line 226
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 235
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v6

    .line 231
    goto :goto_1

    .line 236
    :catch_1
    move-exception v0

    move-object v4, v6

    .line 238
    goto :goto_1

    .line 233
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 235
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 240
    throw v4

    .line 236
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v6

    .line 238
    goto :goto_1

    .line 236
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v6

    .line 238
    goto :goto_1
.end method

.method private parseConfigurationString(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const-string v2, "AdView SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received jsonString: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "extra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adview/AdViewManager;->parseExtraJson(Lorg/json/JSONObject;)V

    .line 253
    const-string v2, "rations"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adview/AdViewManager;->parseRationsJson(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 257
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/adview/obj/Extra;

    invoke-direct {v2}, Lcom/adview/obj/Extra;-><init>()V

    iput-object v2, p0, Lcom/adview/AdViewManager;->extra:Lcom/adview/obj/Extra;

    goto :goto_0

    .line 259
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 261
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Lcom/adview/obj/Extra;

    invoke-direct {v2}, Lcom/adview/obj/Extra;-><init>()V

    iput-object v2, p0, Lcom/adview/AdViewManager;->extra:Lcom/adview/obj/Extra;

    goto :goto_0
.end method

.method private parseExtraJson(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const-string v3, "red"

    const-string v3, "http://"

    const-string v3, "green"

    const-string v3, "blue"

    const-string v3, "alpha"

    .line 266
    new-instance v1, Lcom/adview/obj/Extra;

    invoke-direct {v1}, Lcom/adview/obj/Extra;-><init>()V

    .line 269
    .local v1, "extra":Lcom/adview/obj/Extra;
    :try_start_0
    const-string v3, "cycle_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->cycleTime:I

    .line 271
    const-string v3, "transition"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->transition:I

    .line 272
    const-string v3, "report"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/adview/obj/Extra;->report:Ljava/lang/String;

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/adview/obj/Extra;->report:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/agent/agent2.php?appid=%s&nid=%s&type=%d&uuid=%s&country_code=%s&appver=%d&client=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/adview/util/AdViewUtil;->urlImpression:Ljava/lang/String;

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/adview/obj/Extra;->report:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/agent/agent3.php?appid=%s&nid=%s&type=%d&uuid=%s&country_code=%s&appver=%d&client=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/adview/util/AdViewUtil;->urlClick:Ljava/lang/String;

    .line 276
    const-string v3, "background_color_rgb"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 277
    .local v0, "backgroundColor":Lorg/json/JSONObject;
    const-string v3, "red"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->bgRed:I

    .line 278
    const-string v3, "green"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->bgGreen:I

    .line 279
    const-string v3, "blue"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->bgBlue:I

    .line 280
    const-string v3, "alpha"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0xff

    iput v3, v1, Lcom/adview/obj/Extra;->bgAlpha:I

    .line 282
    const-string v3, "text_color_rgb"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 283
    .local v2, "textColor":Lorg/json/JSONObject;
    const-string v3, "red"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->fgRed:I

    .line 284
    const-string v3, "green"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->fgGreen:I

    .line 285
    const-string v3, "blue"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/adview/obj/Extra;->fgBlue:I

    .line 286
    const-string v3, "alpha"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0xff

    iput v3, v1, Lcom/adview/obj/Extra;->fgAlpha:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v0    # "backgroundColor":Lorg/json/JSONObject;
    .end local v2    # "textColor":Lorg/json/JSONObject;
    :goto_0
    iput-object v1, p0, Lcom/adview/AdViewManager;->extra:Lcom/adview/obj/Extra;

    .line 293
    return-void

    .line 289
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private parseRationsJson(Lorg/json/JSONArray;)V
    .locals 9
    .param p1, "json"    # Lorg/json/JSONArray;

    .prologue
    const-string v5, "key2"

    const-string v5, "key"

    .line 296
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v3, "rationsList":Ljava/util/List;, "Ljava/util/List<Lcom/adview/obj/Ration;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v4, "rationsList_pri":Ljava/util/List;, "Ljava/util/List<Lcom/adview/obj/Ration;>;"
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/adview/AdViewManager;->totalWeight:D

    .line 304
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v0, v5, :cond_0

    .line 349
    :goto_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 350
    iput-object v3, p0, Lcom/adview/AdViewManager;->rationsList:Ljava/util/List;

    .line 351
    iget-object v5, p0, Lcom/adview/AdViewManager;->rationsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    iput-object v5, p0, Lcom/adview/AdViewManager;->rollovers:Ljava/util/Iterator;

    .line 353
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 354
    iput-object v4, p0, Lcom/adview/AdViewManager;->rationsList_pri:Ljava/util/List;

    .line 355
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    iput-object v5, p0, Lcom/adview/AdViewManager;->rollover_pri:Ljava/util/Iterator;

    .line 358
    return-void

    .line 305
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 306
    .local v1, "jsonRation":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 304
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_2
    new-instance v2, Lcom/adview/obj/Ration;

    invoke-direct {v2}, Lcom/adview/obj/Ration;-><init>()V

    .line 312
    .local v2, "ration":Lcom/adview/obj/Ration;
    const-string v5, "nid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->nid:Ljava/lang/String;

    .line 313
    const-string v5, "type"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/adview/obj/Ration;->type:I

    .line 314
    const-string v5, "nname"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->name:Ljava/lang/String;

    .line 315
    const-string v5, "weight"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v5, v5

    iput-wide v5, v2, Lcom/adview/obj/Ration;->weight:D

    .line 316
    const-string v5, "priority"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/adview/obj/Ration;->priority:I

    .line 319
    iget v5, v2, Lcom/adview/obj/Ration;->type:I

    sparse-switch v5, :sswitch_data_0

    .line 334
    const-string v5, "key"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    .line 338
    :goto_3
    iget-wide v5, p0, Lcom/adview/AdViewManager;->totalWeight:D

    iget-wide v7, v2, Lcom/adview/obj/Ration;->weight:D

    add-double/2addr v5, v7

    iput-wide v5, p0, Lcom/adview/AdViewManager;->totalWeight:D

    .line 340
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget v5, v2, Lcom/adview/obj/Ration;->priority:I

    if-lez v5, :cond_1

    .line 342
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 345
    .end local v1    # "jsonRation":Lorg/json/JSONObject;
    .end local v2    # "ration":Lcom/adview/obj/Ration;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 322
    .restart local v1    # "jsonRation":Lorg/json/JSONObject;
    .restart local v2    # "ration":Lcom/adview/obj/Ration;
    :sswitch_0
    const-string v5, "key"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    .line 323
    const-string v5, "key2"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->key2:Ljava/lang/String;

    goto :goto_3

    .line 327
    :sswitch_1
    const-string v5, "key"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->key:Ljava/lang/String;

    .line 328
    const-string v5, "key2"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->key2:Ljava/lang/String;

    .line 329
    const-string v5, "type2"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/adview/obj/Ration;->type2:I

    .line 330
    const-string v5, "logo"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/adview/obj/Ration;->logo:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x1c -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public static setConfigExpireTimeout(J)V
    .locals 0
    .param p0, "configExpireTimeout"    # J

    .prologue
    .line 87
    sput-wide p0, Lcom/adview/AdViewManager;->configExpireTimeout:J

    .line 88
    return-void
.end method


# virtual methods
.method public fetchConfig()V
    .locals 20

    .prologue
    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adview/AdViewManager;->contextReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 171
    .local v5, "context":Landroid/content/Context;
    if-nez v5, :cond_0

    .line 217
    :goto_0
    return-void

    .line 175
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adview/AdViewManager;->keyAdView:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object v0, v5

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 176
    .local v4, "adViewPrefs":Landroid/content/SharedPreferences;
    const-string v16, "config"

    const/16 v17, 0x0

    move-object v0, v4

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 177
    .local v12, "jsonString":Ljava/lang/String;
    const-string v16, "timestamp"

    const-wide/16 v17, -0x1

    move-object v0, v4

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 181
    .local v13, "timestamp":J
    if-eqz v12, :cond_1

    sget-wide v16, Lcom/adview/AdViewManager;->configExpireTimeout:J

    const-wide/16 v18, -0x1

    cmp-long v16, v16, v18

    if-eqz v16, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sget-wide v18, Lcom/adview/AdViewManager;->configExpireTimeout:J

    add-long v18, v18, v13

    cmp-long v16, v16, v18

    if-ltz v16, :cond_2

    .line 184
    :cond_1
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 186
    .local v8, "httpClient":Lorg/apache/http/client/HttpClient;
    const-string v16, "http://www.adview.cn/agent/agent1_android.php?appid=%s&appver=%d&client=0"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adview/AdViewManager;->keyAdView:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0xff

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 187
    .local v15, "url":Ljava/lang/String;
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v9, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 191
    .local v9, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v8, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 195
    .local v10, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 197
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v7, :cond_2

    .line 198
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 199
    .local v11, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/adview/AdViewManager;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 201
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 202
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v16, "config"

    move-object v0, v6

    move-object/from16 v1, v16

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    const-string v16, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v0, v6

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v9    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v10    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/adview/AdViewManager;->parseConfigurationString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    .restart local v8    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v9    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v15    # "url":Ljava/lang/String;
    :catch_0
    move-exception v16

    goto :goto_1

    .line 206
    :catch_1
    move-exception v16

    goto :goto_1
.end method

.method public getExtra()Lcom/adview/obj/Extra;
    .locals 4

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/adview/AdViewManager;->totalWeight:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adview/AdViewManager;->extra:Lcom/adview/obj/Extra;

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "location"

    .line 364
    iget-object v3, p0, Lcom/adview/AdViewManager;->contextReference:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 382
    :goto_0
    return-object v3

    .line 368
    :cond_0
    iget-object v3, p0, Lcom/adview/AdViewManager;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 369
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    move-object v3, v4

    .line 370
    goto :goto_0

    .line 373
    :cond_1
    const/4 v2, 0x0

    .line 375
    .local v2, "location":Landroid/location/Location;
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 376
    const-string v3, "location"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 377
    .local v1, "lm":Landroid/location/LocationManager;
    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .end local v1    # "lm":Landroid/location/LocationManager;
    :cond_2
    :goto_1
    move-object v3, v2

    .line 382
    goto :goto_0

    .line 378
    :cond_3
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 379
    const-string v3, "location"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 380
    .restart local v1    # "lm":Landroid/location/LocationManager;
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    goto :goto_1
.end method

.method public getRation()Lcom/adview/obj/Ration;
    .locals 11

    .prologue
    .line 101
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 103
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    iget-wide v9, p0, Lcom/adview/AdViewManager;->totalWeight:D

    mul-double v1, v7, v9

    .line 104
    .local v1, "r":D
    const-wide/16 v5, 0x0

    .line 108
    .local v5, "s":D
    iget-object v7, p0, Lcom/adview/AdViewManager;->rationsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 109
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/adview/obj/Ration;>;"
    const/4 v4, 0x0

    .line 110
    .local v4, "ration":Lcom/adview/obj/Ration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 119
    :goto_0
    return-object v4

    .line 111
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ration":Lcom/adview/obj/Ration;
    check-cast v4, Lcom/adview/obj/Ration;

    .line 112
    .restart local v4    # "ration":Lcom/adview/obj/Ration;
    iget-wide v7, v4, Lcom/adview/obj/Ration;->weight:D

    add-double/2addr v5, v7

    .line 114
    cmpl-double v7, v5, v1

    if-ltz v7, :cond_0

    goto :goto_0
.end method

.method public getRollover()Lcom/adview/obj/Ration;
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/adview/AdViewManager;->rollovers:Ljava/util/Iterator;

    if-nez v1, :cond_0

    .line 124
    const/4 v1, 0x0

    .line 132
    :goto_0
    return-object v1

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 128
    .local v0, "ration":Lcom/adview/obj/Ration;
    iget-object v1, p0, Lcom/adview/AdViewManager;->rollovers:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/adview/AdViewManager;->rollovers:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ration":Lcom/adview/obj/Ration;
    check-cast v0, Lcom/adview/obj/Ration;

    .restart local v0    # "ration":Lcom/adview/obj/Ration;
    :cond_1
    move-object v1, v0

    .line 132
    goto :goto_0
.end method

.method public getRollover_pri()Lcom/adview/obj/Ration;
    .locals 4

    .prologue
    .line 136
    const v0, 0x5f5e100

    .line 137
    .local v0, "max":I
    iget-object v3, p0, Lcom/adview/AdViewManager;->rollover_pri:Ljava/util/Iterator;

    if-nez v3, :cond_0

    .line 138
    const/4 v3, 0x0

    .line 155
    :goto_0
    return-object v3

    .line 141
    :cond_0
    const/4 v1, 0x0

    .line 142
    .local v1, "ration":Lcom/adview/obj/Ration;
    const/4 v2, 0x0

    .line 143
    .local v2, "ration_pri":Lcom/adview/obj/Ration;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/adview/AdViewManager;->rollover_pri:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    .line 155
    goto :goto_0

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/adview/AdViewManager;->rollover_pri:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ration":Lcom/adview/obj/Ration;
    check-cast v1, Lcom/adview/obj/Ration;

    .line 147
    .restart local v1    # "ration":Lcom/adview/obj/Ration;
    iget v3, v1, Lcom/adview/obj/Ration;->priority:I

    if-ge v3, v0, :cond_1

    .line 149
    move-object v2, v1

    .line 150
    iget v0, v1, Lcom/adview/obj/Ration;->priority:I

    goto :goto_1
.end method

.method public resetRollover()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/adview/AdViewManager;->rationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewManager;->rollovers:Ljava/util/Iterator;

    .line 164
    return-void
.end method

.method public resetRollover_pri()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/adview/AdViewManager;->rationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewManager;->rollovers:Ljava/util/Iterator;

    .line 160
    iget-object v0, p0, Lcom/adview/AdViewManager;->rationsList_pri:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/adview/AdViewManager;->rollover_pri:Ljava/util/Iterator;

    .line 161
    return-void
.end method
