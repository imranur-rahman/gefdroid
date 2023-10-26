.class public Lcom/casee/apptrack/VersionTracker;
.super Ljava/lang/Object;
.source "VersionTracker.java"


# static fields
.field private static final D:Z = false

.field private static final ONEDAY_MS:I = 0x5265c00


# instance fields
.field ai:Lcom/casee/apptrack/AppInfo;

.field appId:Ljava/lang/String;

.field ctx:Landroid/content/Context;

.field util:Lcom/casee/apptrack/NotifyUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/casee/apptrack/VersionTracker;->ctx:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/casee/apptrack/NotifyUtil;

    invoke-direct {v0, p1}, Lcom/casee/apptrack/NotifyUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/casee/apptrack/VersionTracker;->util:Lcom/casee/apptrack/NotifyUtil;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/apptrack/VersionTracker;->appId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private checkVersion()Lcom/casee/apptrack/AppInfo;
    .locals 18

    .prologue
    .line 55
    const/4 v6, 0x0

    .line 57
    .local v6, "ptProps":Ljava/util/Properties;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/apptrack/VersionTracker;->util:Lcom/casee/apptrack/NotifyUtil;

    move-object v14, v0

    const-string v15, "casee_au.txt"

    invoke-virtual {v14, v15}, Lcom/casee/apptrack/NotifyUtil;->getPropertiesFromAsset(Ljava/lang/String;)Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 61
    :goto_0
    if-nez v6, :cond_0

    .line 65
    const/4 v14, 0x0

    .line 128
    :goto_1
    return-object v14

    .line 58
    :catch_0
    move-exception v14

    move-object v8, v14

    .line 59
    .local v8, "t":Ljava/lang/Throwable;
    const-string v14, "CASEE-TA"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v4, 0x0

    .line 71
    .local v4, "logProps":Ljava/util/Properties;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/apptrack/VersionTracker;->util:Lcom/casee/apptrack/NotifyUtil;

    move-object v14, v0

    const-string v15, "version.log"

    invoke-virtual {v14, v15}, Lcom/casee/apptrack/NotifyUtil;->getCaseeProperties(Ljava/lang/String;)Ljava/util/Properties;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 75
    :goto_2
    if-nez v4, :cond_1

    .line 76
    new-instance v4, Ljava/util/Properties;

    .end local v4    # "logProps":Ljava/util/Properties;
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 80
    .restart local v4    # "logProps":Ljava/util/Properties;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 81
    .local v11, "tm1":J
    const-string v14, "lastTm"

    invoke-virtual {v4, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "s":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 83
    const-wide/16 v9, -0x1

    .line 85
    .local v9, "tm":J
    :try_start_2
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-wide v9

    .line 88
    :goto_3
    sub-long v14, v11, v9

    const-wide/32 v16, 0x5265c00

    cmp-long v14, v14, v16

    if-gez v14, :cond_2

    .line 90
    const/4 v14, 0x0

    goto :goto_1

    .line 72
    .end local v7    # "s":Ljava/lang/String;
    .end local v9    # "tm":J
    .end local v11    # "tm1":J
    :catch_1
    move-exception v14

    move-object v8, v14

    .line 73
    .restart local v8    # "t":Ljava/lang/Throwable;
    const-string v14, "CASEE-TA"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 95
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v7    # "s":Ljava/lang/String;
    .restart local v11    # "tm1":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/apptrack/VersionTracker;->appId:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/casee/apptrack/VersionTracker;->queryVersion(Ljava/lang/String;)Lcom/casee/apptrack/AppInfo;

    move-result-object v2

    .line 101
    .local v2, "ai":Lcom/casee/apptrack/AppInfo;
    if-eqz v2, :cond_3

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/apptrack/VersionTracker;->ctx:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 104
    .local v5, "manager":Landroid/content/pm/PackageManager;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/apptrack/VersionTracker;->appId:Ljava/lang/String;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 105
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget v13, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 112
    .local v13, "versionCode":I
    iget v14, v2, Lcom/casee/apptrack/AppInfo;->versionCode:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    if-gt v14, v13, :cond_3

    .line 114
    const/4 v2, 0x0

    .line 121
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "manager":Landroid/content/pm/PackageManager;
    .end local v13    # "versionCode":I
    :cond_3
    :goto_4
    const-string v14, "lastTm"

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/casee/apptrack/VersionTracker;->util:Lcom/casee/apptrack/NotifyUtil;

    move-object v14, v0

    const-string v15, "version.log"

    invoke-virtual {v14, v15, v4}, Lcom/casee/apptrack/NotifyUtil;->saveCaseeProperties(Ljava/lang/String;Ljava/util/Properties;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    move-object v14, v2

    .line 128
    goto/16 :goto_1

    .line 124
    :catch_2
    move-exception v14

    move-object v8, v14

    .line 125
    .restart local v8    # "t":Ljava/lang/Throwable;
    const-string v14, "CASEE-TA"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 86
    .end local v2    # "ai":Lcom/casee/apptrack/AppInfo;
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v9    # "tm":J
    :catch_3
    move-exception v14

    goto :goto_3

    .line 116
    .end local v9    # "tm":J
    .restart local v2    # "ai":Lcom/casee/apptrack/AppInfo;
    .restart local v5    # "manager":Landroid/content/pm/PackageManager;
    :catch_4
    move-exception v14

    goto :goto_4
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 132
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

.method private queryVersion(Ljava/lang/String;)Lcom/casee/apptrack/AppInfo;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    invoke-direct {p0, p1}, Lcom/casee/apptrack/VersionTracker;->queryVersionRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v6, "vc"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 141
    .local v4, "vc":I
    const-string v6, "vt"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, "vt":Ljava/lang/String;
    new-instance v6, Lcom/casee/apptrack/AppInfo;

    invoke-direct {v6, v4, v5}, Lcom/casee/apptrack/AppInfo;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "s":Ljava/lang/String;
    .end local v4    # "vc":I
    .end local v5    # "vt":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 143
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 147
    .local v3, "t":Ljava/lang/Throwable;
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private queryVersionRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "conn":Ljava/net/HttpURLConnection;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v4, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://www.lanteanstudio.com/a/market/q.php?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 156
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 157
    const-string v6, "User-Agent"

    const-string v7, "CASEE-Version-Checker"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/16 v6, 0x1388

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 159
    const/16 v6, 0x1388

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 160
    const-string v6, "GET"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 161
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 163
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 166
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v6

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    throw v6

    .line 169
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 172
    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 177
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public getAppInfo()Lcom/casee/apptrack/AppInfo;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/casee/apptrack/VersionTracker;->ai:Lcom/casee/apptrack/AppInfo;

    return-object v0
.end method

.method public needUpdate()Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/casee/apptrack/VersionTracker;->checkVersion()Lcom/casee/apptrack/AppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/apptrack/VersionTracker;->ai:Lcom/casee/apptrack/AppInfo;

    .line 40
    iget-object v0, p0, Lcom/casee/apptrack/VersionTracker;->ai:Lcom/casee/apptrack/AppInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
