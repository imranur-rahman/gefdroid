.class public Lcom/casee/adsdk/AdFetcher;
.super Ljava/lang/Object;
.source "AdFetcher.java"


# static fields
.field private static final CASEE_REQUESTURL:Ljava/lang/String; = "http://wap.casee.cn/mo/SiteAd.ad?b=1&m="

.field private static final CK_ONLINE_URL:Ljava/lang/String; = "http://wap.casee.cn/wlogo.gif"

.field static DEBUG:Z

.field static checkProxyTime:J

.field private static cookie:Ljava/lang/String;

.field private static deviceId:Ljava/lang/String;

.field static needProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lcom/casee/adsdk/AdFetcher;->DEBUG:Z

    .line 26
    sput-boolean v0, Lcom/casee/adsdk/AdFetcher;->needProxy:Z

    .line 27
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/casee/adsdk/AdFetcher;->checkProxyTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 232
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_1

    .line 233
    aget-byte v5, p0, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 234
    .local v1, "halfbyte":I
    const/4 v3, 0x0

    .local v3, "two_halfs":I
    move v4, v3

    .line 236
    .end local v3    # "two_halfs":I
    .local v4, "two_halfs":I
    :goto_1
    if-ltz v1, :cond_0

    const/16 v5, 0x9

    if-gt v1, v5, :cond_0

    .line 237
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 240
    :goto_2
    aget-byte v5, p0, v2

    and-int/lit8 v1, v5, 0xf

    .line 241
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    :cond_0
    const/16 v5, 0xa

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 243
    .end local v1    # "halfbyte":I
    .end local v4    # "two_halfs":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v1    # "halfbyte":I
    .restart local v3    # "two_halfs":I
    :cond_2
    move v4, v3

    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    goto :goto_1
.end method

.method public static fetchAd(Landroid/content/Context;Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/Ad;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cav"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    const/4 v13, 0x0

    .line 59
    sget-boolean v11, Lcom/casee/adsdk/AdFetcher;->DEBUG:Z

    if-eqz v11, :cond_1

    .line 60
    invoke-static {p0, v13}, Lcom/casee/adsdk/Ad;->getAd(Landroid/content/Context;Ljava/lang/String;)Lcom/casee/adsdk/Ad;

    move-result-object v11

    .line 104
    :cond_0
    :goto_0
    return-object v11

    .line 62
    :cond_1
    invoke-static {p0}, Lcom/casee/adsdk/AdFetcher;->isNetworkAvailable(Landroid/content/Context;)V

    .line 64
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v8, "url":Ljava/lang/StringBuilder;
    const-string v11, "http://wap.casee.cn/mo/SiteAd.ad?b=1&m="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->isTesting()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 67
    const-string v11, "test"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_2
    const-string v11, "&s="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->getSiteId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/casee/adsdk/AdFetcher;->getConnection(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    .line 75
    .local v9, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 76
    .local v5, "out":Ljava/io/OutputStream;
    new-instance v10, Ljava/io/BufferedWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    invoke-direct {v11, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 77
    .end local v9    # "writer":Ljava/io/Writer;
    .local v10, "writer":Ljava/io/Writer;
    :try_start_2
    invoke-static {p0, p1}, Lcom/casee/adsdk/AdFetcher;->getPostString(Landroid/content/Context;Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v10}, Ljava/io/Writer;->flush()V

    .line 79
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v7, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 83
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 88
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v11

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 91
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .line 92
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v10    # "writer":Ljava/io/Writer;
    .restart local v9    # "writer":Ljava/io/Writer;
    :goto_2
    if-eqz v9, :cond_3

    .line 93
    :try_start_5
    invoke-virtual {v9}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 98
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 99
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 101
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "url":Ljava/lang/StringBuilder;
    .end local v9    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v11

    move-object v2, v11

    .line 102
    .local v2, "ex":Ljava/lang/Exception;
    const-string v11, "CASEE-AD"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v11, v13

    .line 104
    goto/16 :goto_0

    .line 85
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "url":Ljava/lang/StringBuilder;
    .restart local v10    # "writer":Ljava/io/Writer;
    :cond_5
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "json":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/casee/adsdk/Ad;->getAd(Landroid/content/Context;Ljava/lang/String;)Lcom/casee/adsdk/Ad;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v11

    .line 88
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 92
    if-eqz v10, :cond_6

    .line 93
    :try_start_9
    invoke-virtual {v10}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 98
    :cond_6
    :goto_4
    if-eqz v0, :cond_0

    .line 99
    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 95
    :catch_1
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "writer":Ljava/io/Writer;
    .restart local v9    # "writer":Ljava/io/Writer;
    :catch_2
    move-exception v1

    .line 96
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_3

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v11

    goto :goto_2
.end method

.method public static getConnection(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v5, "POST"

    const-string v5, "Cookie"

    const-string v5, "Android-CASEE-ADSDK"

    .line 109
    if-nez p1, :cond_0

    .line 110
    const/4 v5, 0x0

    .line 140
    :goto_0
    return-object v5

    .line 111
    :cond_0
    const/4 v2, 0x0

    .line 113
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    sget-boolean v5, Lcom/casee/adsdk/AdFetcher;->needProxy:Z

    if-nez v5, :cond_1

    .line 114
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "caseeUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 116
    const-string v5, "POST"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 117
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 118
    const-string v5, "User-Agent"

    const-string v6, "Android-CASEE-ADSDK"

    invoke-virtual {v2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v5, "Cookie"

    invoke-static {p0}, Lcom/casee/adsdk/AdFetcher;->getCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/16 v5, 0x4e20

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 121
    const/16 v5, 0x4e20

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .end local v1    # "caseeUrl":Ljava/net/URL;
    :goto_1
    move-object v5, v2

    .line 140
    goto :goto_0

    .line 124
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 125
    .restart local v1    # "caseeUrl":Ljava/net/URL;
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v4

    .line 126
    .local v4, "prop":Ljava/util/Properties;
    const-string v5, "http.proxyHost"

    const-string v6, "10.0.0.172"

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    const-string v5, "http.proxyPort"

    const-string v6, "80"

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 129
    const-string v5, "POST"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 130
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 131
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 132
    const-string v5, "User-Agent"

    const-string v6, "Android-CASEE-ADSDK"

    invoke-virtual {v2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v5, "Cookie"

    invoke-static {p0}, Lcom/casee/adsdk/AdFetcher;->getCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/16 v5, 0x4e20

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 135
    const/16 v5, 0x4e20

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 137
    .end local v1    # "caseeUrl":Ljava/net/URL;
    .end local v4    # "prop":Ljava/util/Properties;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 138
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "CASEE-AD"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getCookie(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v11, ""

    .line 248
    sget-object v10, Lcom/casee/adsdk/AdFetcher;->cookie:Ljava/lang/String;

    if-eqz v10, :cond_0

    const-string v10, ""

    sget-object v10, Lcom/casee/adsdk/AdFetcher;->cookie:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 249
    :cond_0
    const-string v0, "casee_cookie.txt"

    .line 250
    .local v0, "cookie_file":Ljava/lang/String;
    const/4 v2, 0x0

    .line 251
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 252
    .local v5, "isr":Ljava/io/InputStreamReader;
    const/16 v10, 0xff

    new-array v4, v10, [C

    .line 254
    .local v4, "inputBuffer":[C
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 255
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .local v6, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v7

    .line 257
    .local v7, "length":I
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v4, v11, v7}, Ljava/lang/String;-><init>([CII)V

    sput-object v10, Lcom/casee/adsdk/AdFetcher;->cookie:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 261
    if-eqz v2, :cond_1

    .line 262
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 263
    :cond_1
    if-eqz v6, :cond_2

    .line 264
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v5, v6

    .line 270
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "length":I
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 271
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 274
    .local v8, "osw":Ljava/io/OutputStreamWriter;
    :try_start_3
    sget-object v10, Lcom/casee/adsdk/AdFetcher;->cookie:Ljava/lang/String;

    if-eqz v10, :cond_4

    const-string v10, ""

    sget-object v11, Lcom/casee/adsdk/AdFetcher;->cookie:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 275
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "caseeuid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; Path=/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/casee/adsdk/AdFetcher;->cookie:Ljava/lang/String;

    .line 276
    const/4 v10, 0x0

    invoke-virtual {p0, v0, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 277
    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 278
    .end local v8    # "osw":Ljava/io/OutputStreamWriter;
    .local v9, "osw":Ljava/io/OutputStreamWriter;
    :try_start_4
    sget-object v10, Lcom/casee/adsdk/AdFetcher;->cookie:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v8, v9

    .line 285
    .end local v9    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v8    # "osw":Ljava/io/OutputStreamWriter;
    :cond_5
    if-eqz v3, :cond_6

    .line 286
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 287
    :cond_6
    if-eqz v8, :cond_7

    .line 288
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 294
    .end local v0    # "cookie_file":Ljava/lang/String;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "inputBuffer":[C
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "osw":Ljava/io/OutputStreamWriter;
    :cond_7
    :goto_1
    sget-object v10, Lcom/casee/adsdk/AdFetcher;->cookie:Ljava/lang/String;

    return-object v10

    .line 265
    .restart local v0    # "cookie_file":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "inputBuffer":[C
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "length":I
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 266
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 268
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "length":I
    :catch_1
    move-exception v10

    .line 261
    :goto_2
    if-eqz v2, :cond_8

    .line 262
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 263
    :cond_8
    if-eqz v5, :cond_3

    .line 264
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 265
    :catch_2
    move-exception v10

    move-object v1, v10

    .line 266
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 260
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 261
    :goto_3
    if-eqz v2, :cond_9

    .line 262
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 263
    :cond_9
    if-eqz v5, :cond_a

    .line 264
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 267
    :cond_a
    :goto_4
    throw v10

    .line 265
    :catch_3
    move-exception v11

    move-object v1, v11

    .line 266
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 289
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "osw":Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v10

    move-object v1, v10

    .line 290
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 281
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v10

    move-object v1, v10

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 285
    if-eqz v3, :cond_b

    .line 286
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 287
    :cond_b
    if-eqz v8, :cond_7

    .line 288
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 289
    :catch_6
    move-exception v10

    move-object v1, v10

    .line 290
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 284
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    .line 285
    :goto_6
    if-eqz v3, :cond_c

    .line 286
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 287
    :cond_c
    if-eqz v8, :cond_d

    .line 288
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 291
    :cond_d
    :goto_7
    throw v10

    .line 289
    :catch_7
    move-exception v11

    move-object v1, v11

    .line 290
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 284
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v9    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v10

    move-object v8, v9

    .end local v9    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v8    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_6

    .line 281
    .end local v8    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v9    # "osw":Ljava/io/OutputStreamWriter;
    :catch_8
    move-exception v10

    move-object v1, v10

    move-object v8, v9

    .end local v9    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v8    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_5

    .line 260
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v10

    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 258
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_9
    move-exception v10

    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v8, "android_id"

    const-string v7, "CASEE-AD"

    const-string v6, ""

    .line 191
    sget-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ""

    sget-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 192
    sget-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    .line 228
    :goto_0
    return-object v4

    .line 195
    :cond_0
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 196
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 198
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    .line 201
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    sget-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v4, ""

    sget-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 202
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    .line 206
    :cond_3
    sget-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, ""

    sget-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 207
    :cond_4
    const-string v4, "android_id"

    sput-object v8, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    .line 210
    :cond_5
    sget-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 211
    const-string v4, ""

    sput-object v6, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    .line 214
    :cond_6
    sget-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string v4, ""

    sget-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 215
    :cond_7
    const-string v4, "CASEE-AD"

    const-string v4, "cannot get device id."

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_8
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 220
    .local v2, "md":Ljava/security/MessageDigest;
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "deviceIDString":Ljava/lang/StringBuffer;
    const-string v4, "CASEE2010"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/casee/adsdk/AdFetcher;->convertToHex([B)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0    # "deviceIDString":Ljava/lang/StringBuffer;
    .end local v2    # "md":Ljava/security/MessageDigest;
    :goto_1
    const-string v4, "CASEE-AD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create device id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    goto/16 :goto_0

    .line 224
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "00000000000000000000000000000000"

    sput-object v4, Lcom/casee/adsdk/AdFetcher;->deviceId:Ljava/lang/String;

    goto :goto_1
.end method

.method static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v3, ""

    .line 175
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, ""

    move-object v2, v3

    .line 187
    :goto_0
    return-object v2

    .line 179
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 180
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 181
    const-string v2, ""

    move-object v2, v3

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 184
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_2

    .line 185
    const-string v2, ""

    move-object v2, v3

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getPostString(Landroid/content/Context;Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cav"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "did="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-static {p0}, Lcom/casee/adsdk/AdFetcher;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "&ll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    sget-object v1, Lcom/casee/adsdk/CaseeAdView;->locProvider:Lcom/casee/adsdk/LocationProvider;

    if-eqz v1, :cond_0

    .line 149
    sget-object v1, Lcom/casee/adsdk/CaseeAdView;->locProvider:Lcom/casee/adsdk/LocationProvider;

    invoke-virtual {v1}, Lcom/casee/adsdk/LocationProvider;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_0
    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "&osv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->getSysVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, "&ml="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "&bid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->getBuildID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "&nt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {p0}, Lcom/casee/adsdk/AdFetcher;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "&pa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    if-eqz p1, :cond_1

    .line 164
    const-string v1, "&ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/casee/adsdk/CaseeAdView;->isVertical()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, "&h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/casee/adsdk/CaseeAdView;->getAdViewHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "&w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/casee/adsdk/CaseeAdView;->getAdViewWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-string v8, "CASEE-AD"

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/casee/adsdk/AdFetcher;->checkProxyTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1d4c0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 56
    :goto_0
    return-void

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 38
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v4, "http://wap.casee.cn/wlogo.gif"

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "caseeUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 40
    const-string v4, "POST"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 41
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 42
    const/16 v4, 0x1388

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 43
    const/16 v4, 0x1388

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 44
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_2

    .line 45
    :cond_1
    const/4 v4, 0x1

    sput-boolean v4, Lcom/casee/adsdk/AdFetcher;->needProxy:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/casee/adsdk/AdFetcher;->checkProxyTime:J

    .line 52
    .end local v1    # "caseeUrl":Ljava/net/URL;
    :goto_1
    sget-boolean v4, Lcom/casee/adsdk/AdFetcher;->needProxy:Z

    if-eqz v4, :cond_3

    .line 53
    const-string v4, "CASEE-AD"

    const-string v4, "network cmwap"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 47
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    :try_start_1
    sput-boolean v4, Lcom/casee/adsdk/AdFetcher;->needProxy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/casee/adsdk/AdFetcher;->checkProxyTime:J

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/casee/adsdk/AdFetcher;->checkProxyTime:J

    throw v4

    .line 55
    :cond_3
    const-string v4, "CASEE-AD"

    const-string v4, "network cmnet or wifi"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
