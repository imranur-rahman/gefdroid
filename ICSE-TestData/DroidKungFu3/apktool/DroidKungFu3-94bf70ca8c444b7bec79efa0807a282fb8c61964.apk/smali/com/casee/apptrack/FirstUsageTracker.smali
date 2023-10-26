.class public Lcom/casee/apptrack/FirstUsageTracker;
.super Ljava/lang/Object;
.source "FirstUsageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;
    }
.end annotation


# static fields
.field private static final D:Z


# instance fields
.field ctx:Landroid/content/Context;

.field private listener:Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;

.field util:Lcom/casee/apptrack/NotifyUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/casee/apptrack/FirstUsageTracker;->ctx:Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/casee/apptrack/FirstUsageTracker;->listener:Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;

    .line 41
    new-instance v0, Lcom/casee/apptrack/NotifyUtil;

    invoke-direct {v0, p1}, Lcom/casee/apptrack/NotifyUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/apptrack/FirstUsageTracker;->util:Lcom/casee/apptrack/NotifyUtil;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/casee/apptrack/FirstUsageTracker;->ctx:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/casee/apptrack/FirstUsageTracker;->listener:Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;

    .line 47
    new-instance v0, Lcom/casee/apptrack/NotifyUtil;

    invoke-direct {v0, p1}, Lcom/casee/apptrack/NotifyUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/apptrack/FirstUsageTracker;->util:Lcom/casee/apptrack/NotifyUtil;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/casee/apptrack/FirstUsageTracker;)Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;
    .locals 1
    .param p0, "x0"    # Lcom/casee/apptrack/FirstUsageTracker;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/casee/apptrack/FirstUsageTracker;->listener:Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;

    return-object v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareData(Ljava/util/Properties;)Ljava/util/Map;
    .locals 10
    .param p1, "ptProps"    # Ljava/util/Properties;

    .prologue
    const-string v8, "cid"

    const-string v7, "aid"

    const-string v9, "-"

    .line 136
    const-string v6, "aid"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "aid":Ljava/lang/String;
    const-string v6, "cid"

    invoke-virtual {p1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "cid":Ljava/lang/String;
    iget-object v6, p0, Lcom/casee/apptrack/FirstUsageTracker;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/casee/adsdk/AdFetcher;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "did":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/casee/apptrack/FirstUsageTracker;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Lcom/casee/apptrack/FirstUsageTracker;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v3}, Lcom/casee/apptrack/FirstUsageTracker;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 142
    :cond_0
    const/4 v6, 0x0

    .line 157
    :goto_0
    return-object v6

    .line 145
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 146
    .local v2, "data":Ljava/util/Map;
    const-string v6, "aid"

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v6, "cid"

    invoke-interface {v2, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v6, "did"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v6, "key"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 154
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "tm":Ljava/lang/String;
    const-string v6, "time"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v2

    .line 157
    goto :goto_0
.end method


# virtual methods
.method public doTrack(Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;)V
    .locals 11
    .param p1, "listener"    # Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;

    .prologue
    const-string v6, "pt.log"

    const-string v10, "fu"

    const-string v9, "1"

    const-string v8, "CASEE-TA"

    .line 67
    const/4 v3, 0x0

    .line 69
    .local v3, "ptProps":Ljava/util/Properties;
    :try_start_0
    iget-object v6, p0, Lcom/casee/apptrack/FirstUsageTracker;->util:Lcom/casee/apptrack/NotifyUtil;

    const-string v7, "casee_pt.txt"

    invoke-virtual {v6, v7}, Lcom/casee/apptrack/NotifyUtil;->getPropertiesFromAsset(Ljava/lang/String;)Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 73
    :goto_0
    if-nez v3, :cond_1

    .line 77
    invoke-interface {p1}, Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;->onFailed()V

    .line 127
    :cond_0
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 71
    .local v5, "t":Ljava/lang/Throwable;
    const-string v6, "CASEE-TA"

    const-string v6, "casee_pt.txt not found"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    .line 84
    .local v1, "logProps":Ljava/util/Properties;
    :try_start_1
    iget-object v6, p0, Lcom/casee/apptrack/FirstUsageTracker;->util:Lcom/casee/apptrack/NotifyUtil;

    const-string v7, "pt.log"

    invoke-virtual {v6, v7}, Lcom/casee/apptrack/NotifyUtil;->getCaseeProperties(Ljava/lang/String;)Ljava/util/Properties;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 88
    :goto_2
    if-nez v1, :cond_2

    .line 89
    new-instance v1, Ljava/util/Properties;

    .end local v1    # "logProps":Ljava/util/Properties;
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 93
    .restart local v1    # "logProps":Ljava/util/Properties;
    :cond_2
    const-string v6, "1"

    const-string v6, "fu"

    invoke-virtual {v1, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 104
    const-string v2, "http://wap.casee.cn/mo/fee.jsp"

    .line 107
    .local v2, "notifyURL":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/casee/apptrack/FirstUsageTracker;->prepareData(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v0

    .line 109
    .local v0, "data":Ljava/util/Map;
    iget-object v6, p0, Lcom/casee/apptrack/FirstUsageTracker;->util:Lcom/casee/apptrack/NotifyUtil;

    invoke-virtual {v6, v2, v0}, Lcom/casee/apptrack/NotifyUtil;->sendNotify(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    .line 116
    .local v4, "success":Z
    if-eqz v4, :cond_3

    .line 117
    const-string v6, "fu"

    const-string v6, "1"

    invoke-virtual {v1, v10, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    :try_start_2
    iget-object v6, p0, Lcom/casee/apptrack/FirstUsageTracker;->util:Lcom/casee/apptrack/NotifyUtil;

    const-string v7, "pt.log"

    invoke-virtual {v6, v7, v1}, Lcom/casee/apptrack/NotifyUtil;->saveCaseeProperties(Ljava/lang/String;Ljava/util/Properties;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    :goto_3
    invoke-interface {p1}, Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;->onSuccess()V

    goto :goto_1

    .line 85
    .end local v0    # "data":Ljava/util/Map;
    .end local v2    # "notifyURL":Ljava/lang/String;
    .end local v4    # "success":Z
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 86
    .restart local v5    # "t":Ljava/lang/Throwable;
    const-string v6, "CASEE-TA"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 120
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v0    # "data":Ljava/util/Map;
    .restart local v2    # "notifyURL":Ljava/lang/String;
    .restart local v4    # "success":Z
    :catch_2
    move-exception v6

    move-object v5, v6

    .line 121
    .restart local v5    # "t":Ljava/lang/Throwable;
    const-string v6, "CASEE-TA"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 126
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {p1}, Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;->onFailed()V

    goto :goto_1
.end method

.method public doTrackASync()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/casee/apptrack/FirstUsageTracker$1;

    invoke-direct {v0, p0}, Lcom/casee/apptrack/FirstUsageTracker$1;-><init>(Lcom/casee/apptrack/FirstUsageTracker;)V

    invoke-virtual {v0}, Lcom/casee/apptrack/FirstUsageTracker$1;->start()V

    .line 59
    return-void
.end method
