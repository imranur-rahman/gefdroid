.class public Lcn/domob/android/ads/DomobReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobReport$ActionType;,
        Lcn/domob/android/ads/DomobReport$IDType;,
        Lcn/domob/android/ads/DomobReport$ReportInfo;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcn/domob/android/ads/DomobReport;->a:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobReport;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcn/domob/android/ads/DomobReport;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobReport;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "download"

    goto :goto_0

    :pswitch_1
    const-string v0, "download_finish"

    goto :goto_0

    :pswitch_2
    const-string v0, "download_failed"

    goto :goto_0

    :pswitch_3
    const-string v0, "download_cancel"

    goto :goto_0

    :pswitch_4
    const-string v0, "load_success"

    goto :goto_0

    :pswitch_5
    const-string v0, "load_failed"

    goto :goto_0

    :pswitch_6
    const-string v0, "close_lp"

    goto :goto_0

    :pswitch_7
    const-string v0, "install_success"

    goto :goto_0

    :pswitch_8
    const-string v0, "run"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobReport;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-static {p1}, Lcn/domob/android/ads/DomobReport;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const-string v6, "DomobSDK"

    const-string v0, "="

    const-string v0, "UTF-8"

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "post params string:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_1
    return-object v0

    .line 139
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 140
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 142
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    if-eqz p0, :cond_3

    if-eqz v3, :cond_4

    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 145
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    .line 142
    :cond_4
    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobReport;Lcn/domob/android/ads/DomobReport$ReportInfo;)Ljava/util/HashMap;
    .locals 5

    .prologue
    const-string v4, "DomobSDK"

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "rt"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/domob/android/ads/DomobReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/DomobUtility;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Android,,,,,,,,"

    :cond_0
    const-string v2, "ua"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/domob/android/ads/DomobReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/DomobAdManager;->getCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcn/domob/android/ads/DomobReport;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/DomobAdManager;->getPublisherId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "ipb"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcn/domob/android/ads/DomobUtility;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "rp_md5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0

    :cond_4
    const-string v1, "DomobSDK"

    const-string v1, "publisher id is null or empty!"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public reportAction(Lcn/domob/android/ads/DomobReport$ReportInfo;)V
    .locals 1
    .param p1, "reportInfo"    # Lcn/domob/android/ads/DomobReport$ReportInfo;

    .prologue
    .line 112
    new-instance v0, Lcn/domob/android/ads/DomobReport$1;

    invoke-direct {v0, p0, p1}, Lcn/domob/android/ads/DomobReport$1;-><init>(Lcn/domob/android/ads/DomobReport;Lcn/domob/android/ads/DomobReport$ReportInfo;)V

    .line 131
    invoke-virtual {v0}, Lcn/domob/android/ads/DomobReport$1;->start()V

    .line 132
    return-void
.end method
