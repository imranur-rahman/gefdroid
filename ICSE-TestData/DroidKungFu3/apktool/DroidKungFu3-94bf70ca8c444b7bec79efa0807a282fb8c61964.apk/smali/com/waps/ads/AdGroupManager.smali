.class public Lcom/waps/ads/AdGroupManager;
.super Ljava/lang/Object;


# static fields
.field private static j:J


# instance fields
.field public a:Ljava/lang/String;

.field b:Ljava/util/Iterator;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroid/location/Location;

.field private f:Lcom/waps/ads/b/b;

.field private g:Ljava/util/List;

.field private h:D

.field private i:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x927c0

    sput-wide v0, Lcom/waps/ads/AdGroupManager;->j:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 4

    const-string v3, "AdGroup_SDK"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/waps/ads/AdGroupManager;->h:D

    const-string v0, "AdGroup_SDK"

    const-string v0, "Creating adManager..."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/waps/ads/AdGroupManager;->i:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/waps/ads/AdGroupManager;->a:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupManager;->c:Ljava/lang/String;

    const-string v0, "AdGroup_SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locale is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/ads/AdGroupManager;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "android_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "AdGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/waps/ads/c/a;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupManager;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "AdGroup_SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hashed device ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/ads/AdGroupManager;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AdGroup_SDK"

    const-string v0, "Finished creating adManager"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v0, "00000000000000000000000000000000"

    iput-object v0, p0, Lcom/waps/ads/AdGroupManager;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    const-string v6, "Caught IOException in convertStreamToString()"

    const-string v5, "AdGroup_SDK"

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AdGroup_SDK"

    const-string v2, "Caught IOException in convertStreamToString()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v1, "Caught IOException in convertStreamToString()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v1, "Caught IOException in convertStreamToString()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    throw v0

    :catch_3
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v1, "Caught IOException in convertStreamToString()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    goto :goto_1
.end method

.method private fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    const-string v0, "src"

    invoke-static {p0, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v2, "Unable to fetchImage(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseConfigurationString(Ljava/lang/String;)V
    .locals 4

    const-string v3, "Unable to parse response from JSON. This may or may not be fatal."

    const-string v2, "AdGroup_SDK"

    const-string v0, "AdGroup_SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received jsonString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/ads/AdGroupManager;->parseExtraJson(Lorg/json/JSONObject;)V

    const-string v1, "rations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/ads/AdGroupManager;->parseRationsJson(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v1, "Unable to parse response from JSON. This may or may not be fatal."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/waps/ads/b/b;

    invoke-direct {v0}, Lcom/waps/ads/b/b;-><init>()V

    iput-object v0, p0, Lcom/waps/ads/AdGroupManager;->f:Lcom/waps/ads/b/b;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v1, "Unable to parse response from JSON. This may or may not be fatal."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/waps/ads/b/b;

    invoke-direct {v0}, Lcom/waps/ads/b/b;-><init>()V

    iput-object v0, p0, Lcom/waps/ads/AdGroupManager;->f:Lcom/waps/ads/b/b;

    goto :goto_0
.end method

.method private parseCustomJsonString(Ljava/lang/String;)Lcom/waps/ads/b/a;
    .locals 8

    const/4 v6, 0x0

    const-string v7, "AdGroup_SDK"

    const-string v0, "AdGroup_SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received custom jsonString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/waps/ads/b/a;

    invoke-direct {v1}, Lcom/waps/ads/b/a;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ad_type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/waps/ads/b/a;->a:I

    const-string v2, "img_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waps/ads/b/a;->d:Ljava/lang/String;

    const-string v2, "redirect_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waps/ads/b/a;->b:Ljava/lang/String;

    const-string v2, "ad_text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/waps/ads/b/a;->f:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "img_url_480x75"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/waps/ads/b/a;->e:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/waps/ads/AdGroupManager;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget v0, v1, Lcom/waps/ads/b/a;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lcom/waps/ads/b/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/waps/ads/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/waps/ads/b/a;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/waps/ads/AdGroupManager;->fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/waps/ads/b/a;->c:Landroid/graphics/drawable/Drawable;

    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/waps/ads/b/a;->e:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v1, "Caught JSONException in parseCustomJsonString()"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto :goto_2

    :cond_0
    :try_start_3
    iget-object v0, v1, Lcom/waps/ads/b/a;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/waps/ads/AdGroupManager;->fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/waps/ads/b/a;->c:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method private parseExtraJson(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "red"

    const-string v0, "green"

    const-string v0, "blue"

    const-string v0, "alpha"

    new-instance v0, Lcom/waps/ads/b/b;

    invoke-direct {v0}, Lcom/waps/ads/b/b;-><init>()V

    :try_start_0
    const-string v1, "cycle_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/waps/ads/b/b;->i:I

    const-string v1, "transition"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/waps/ads/b/b;->k:I

    const-string v1, "background_color_rgb"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "red"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/waps/ads/b/b;->e:I

    const-string v2, "green"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/waps/ads/b/b;->f:I

    const-string v2, "blue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/waps/ads/b/b;->g:I

    const-string v2, "alpha"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/waps/ads/b/b;->h:I

    const-string v1, "text_color_rgb"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "red"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/waps/ads/b/b;->a:I

    const-string v2, "green"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/waps/ads/b/b;->b:I

    const-string v2, "blue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/waps/ads/b/b;->c:I

    const-string v2, "alpha"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/waps/ads/b/b;->d:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v0, p0, Lcom/waps/ads/AdGroupManager;->f:Lcom/waps/ads/b/b;

    return-void

    :catch_0
    move-exception v1

    const-string v2, "AdGroup_SDK"

    const-string v3, "Exception in parsing config.extra JSON. This may or may not be fatal."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private parseRationsJson(Lorg/json/JSONArray;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/waps/ads/AdGroupManager;->h:D

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/waps/ads/b/c;

    invoke-direct {v4}, Lcom/waps/ads/b/c;-><init>()V

    const-string v5, "nid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/waps/ads/b/c;->a:Ljava/lang/String;

    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/waps/ads/b/c;->b:I

    const-string v5, "nname"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/waps/ads/b/c;->c:Ljava/lang/String;

    const-string v5, "weight"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v5, v5

    iput-wide v5, v4, Lcom/waps/ads/b/c;->d:D

    const-string v5, "priority"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/waps/ads/b/c;->g:I

    const-string v5, "key"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/waps/ads/b/c;->e:Ljava/lang/String;

    const-string v5, "key2"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/waps/ads/b/c;->f:Ljava/lang/String;

    iget-wide v5, p0, Lcom/waps/ads/AdGroupManager;->h:D

    iget-wide v7, v4, Lcom/waps/ads/b/c;->d:D

    add-double/2addr v5, v7

    iput-wide v5, p0, Lcom/waps/ads/AdGroupManager;->h:D

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v4, Lcom/waps/ads/b/c;->g:I

    if-lez v3, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iput-object v0, p0, Lcom/waps/ads/AdGroupManager;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/waps/ads/AdGroupManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupManager;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static setConfigExpireTimeout(J)V
    .locals 0

    sput-wide p0, Lcom/waps/ads/AdGroupManager;->j:J

    return-void
.end method


# virtual methods
.method public fetchConfig()V
    .locals 12

    const-string v0, "http"

    const-string v7, "config"

    const-string v0, ""

    const-string v10, "AdGroup_SDK"

    iget-object v0, p0, Lcom/waps/ads/AdGroupManager;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/waps/ads/AdGroupManager;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v1, "config"

    const/4 v1, 0x0

    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "AdLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonString=  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "timestamp"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "AdGroup_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prefs{"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/waps/ads/AdGroupManager;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "}: {\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "config"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\": \""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\", \""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "timestamp"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "}"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    sget-wide v6, Lcom/waps/ads/AdGroupManager;->j:J

    const-wide/16 v8, -0x1

    cmp-long v1, v6, v8

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/waps/ads/AdGroupManager;->j:J

    add-long/2addr v4, v8

    cmp-long v1, v6, v4

    if-ltz v1, :cond_5

    :cond_1
    const-string v1, "AdGroup_SDK"

    const-string v1, "Stored config info not present or expired, fetching fresh data"

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    const-string v1, ""

    new-instance v5, Lcom/waps/n;

    invoke-direct {v5}, Lcom/waps/n;-><init>()V

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    const-string v6, "cmwap"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/waps/n;->a(Z)V

    :cond_2
    invoke-virtual {v5}, Lcom/waps/n;->a()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/waps/ads/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v5, Lcom/waps/AppConnect;

    invoke-direct {v5}, Lcom/waps/AppConnect;-><init>()V

    invoke-virtual {v5, v0}, Lcom/waps/AppConnect;->getParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :goto_1
    const-string v1, "AdGroup_SDK"

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/ads/AdGroupManager;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "config"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    invoke-direct {p0, v0}, Lcom/waps/ads/AdGroupManager;->parseConfigurationString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/waps/ads/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Lcom/waps/AppConnect;

    invoke-direct {v4}, Lcom/waps/AppConnect;-><init>()V

    invoke-virtual {v4, v0}, Lcom/waps/AppConnect;->getParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/HttpHost;

    const-string v4, "10.0.0.172"

    const/16 v5, 0x50

    const-string v6, "http"

    invoke-direct {v1, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "http://app"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v5, "ads.waps.cn"

    const/16 v6, 0x50

    const-string v7, "http"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v5, " "

    const-string v6, "%20"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "http://app.waps.cn"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    :goto_3
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v6, 0x3a98

    invoke-static {v4, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v6, 0x7530

    invoke-static {v4, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v7, "http.route.default-proxy"

    invoke-interface {v4, v7, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-interface {v6, v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    const-string v5, "http://ads"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v4, Lorg/apache/http/HttpHost;

    const-string v5, "ads.waps.cn"

    const/16 v6, 0x50

    const-string v7, "http"

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v5, " "

    const-string v6, "%20"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "http://ads.waps.cn"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_4
    const-string v2, "AdGroup_SDK"

    const-string v2, "Caught ClientProtocolException in fetchConfig()"

    invoke-static {v10, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v1, v3

    :goto_5
    const-string v2, "AdGroup_SDK"

    const-string v2, "Caught IOException in fetchConfig()"

    invoke-static {v10, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto/16 :goto_2

    :cond_5
    const-string v0, "AdGroup_SDK"

    const-string v0, "Using stored config data"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v0, v3

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_4

    :cond_7
    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_3
.end method

.method public getCustom(Ljava/lang/String;)Lcom/waps/ads/b/a;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "AdGroup_SDK"

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v1, p0, Lcom/waps/ads/AdGroupManager;->f:Lcom/waps/ads/b/b;

    iget v1, v1, Lcom/waps/ads/b/b;->j:I

    if-ne v1, v5, :cond_1

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupManager;->getLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/waps/ads/AdGroupManager;->e:Landroid/location/Location;

    iget-object v1, p0, Lcom/waps/ads/AdGroupManager;->e:Landroid/location/Location;

    if-eqz v1, :cond_0

    const-string v1, "&location=%f,%f&location_timestamp=%d"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/waps/ads/AdGroupManager;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/waps/ads/AdGroupManager;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/waps/ads/AdGroupManager;->e:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "http://ads.waps.cn/action/adgroup/ad_custom?"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/waps/ads/AdGroupManager;->a:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object p1, v3, v5

    iget-object v4, p0, Lcom/waps/ads/AdGroupManager;->d:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/waps/ads/AdGroupManager;->c:Ljava/lang/String;

    aput-object v4, v3, v9

    const/4 v4, 0x4

    aput-object v1, v3, v4

    const/4 v1, 0x5

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    const-string v1, "AdGroup_SDK"

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/ads/AdGroupManager;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/ads/AdGroupManager;->parseCustomJsonString(Ljava/lang/String;)Lcom/waps/ads/b/a;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v1, ""

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waps/ads/AdGroupManager;->e:Landroid/location/Location;

    const-string v1, ""

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v1, "Caught ClientProtocolException in getCustom()"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v1, "Caught IOException in getCustom()"

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public getExtra()Lcom/waps/ads/b/b;
    .locals 4

    iget-wide v0, p0, Lcom/waps/ads/AdGroupManager;->h:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const-string v0, "AdGroup_SDK"

    const-string v1, "Sum of ration weights is 0 - no ads to be shown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waps/ads/AdGroupManager;->f:Lcom/waps/ads/b/b;

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 3

    const/4 v1, 0x0

    const-string v2, "location"

    iget-object v0, p0, Lcom/waps/ads/AdGroupManager;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waps/ads/AdGroupManager;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-nez p0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getRation()Lcom/waps/ads/b/c;
    .locals 9

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/waps/ads/AdGroupManager;->h:D

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    const-string v4, "AdGroup_SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dart is <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> of <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/waps/ads/AdGroupManager;->h:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/waps/ads/AdGroupManager;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v8, v5

    move-wide v5, v2

    move-object v2, v8

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/waps/ads/b/c;

    iget v2, p0, Lcom/waps/ads/b/c;->b:I

    iget-wide v2, p0, Lcom/waps/ads/b/c;->d:D

    add-double/2addr v2, v5

    cmpl-double v5, v2, v0

    if-ltz v5, :cond_0

    move-object v0, p0

    :goto_1
    return-object v0

    :cond_0
    move-wide v5, v2

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method public getRollover()Lcom/waps/ads/b/c;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/waps/ads/AdGroupManager;->b:Ljava/util/Iterator;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waps/ads/AdGroupManager;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waps/ads/AdGroupManager;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/waps/ads/b/c;

    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public resetRollover()V
    .locals 1

    iget-object v0, p0, Lcom/waps/ads/AdGroupManager;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupManager;->b:Ljava/util/Iterator;

    return-void
.end method
