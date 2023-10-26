.class public Lcom/casee/apptrack/NotifyUtil;
.super Ljava/lang/Object;
.source "NotifyUtil.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CASEE-TA"

.field public static final SDK_UA:Ljava/lang/String; = "Android-CASEE-PTSDK"


# instance fields
.field assetMgr:Landroid/content/res/AssetManager;

.field ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/casee/apptrack/NotifyUtil;->ctx:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/casee/apptrack/NotifyUtil;->assetMgr:Landroid/content/res/AssetManager;

    .line 32
    return-void
.end method

.method private createPostString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # Ljava/util/Map;

    .prologue
    .line 143
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 144
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 145
    .local v2, "it":Ljava/util/Iterator;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 148
    .local v1, "first":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 150
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 152
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 153
    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    if-eqz v1, :cond_1

    .line 155
    const/4 v1, 0x0

    .line 159
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 157
    :cond_1
    const-string v6, "&"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 165
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private genChecksum(Ljava/lang/String;)J
    .locals 9
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 169
    const-wide/16 v5, 0x0

    .line 171
    .local v5, "value":J
    :try_start_0
    const-string v7, "utf-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 172
    .local v1, "buffer":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 173
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v7, Ljava/util/zip/Adler32;

    invoke-direct {v7}, Ljava/util/zip/Adler32;-><init>()V

    invoke-direct {v2, v0, v7}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 174
    .local v2, "cis":Ljava/util/zip/CheckedInputStream;
    const/16 v7, 0x80

    new-array v4, v7, [B

    .line 175
    .local v4, "readBuffer":[B
    :goto_0
    invoke-virtual {v2, v4}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v7

    if-ltz v7, :cond_0

    .line 176
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/zip/Checksum;->getValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    goto :goto_0

    .line 178
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .end local v4    # "readBuffer":[B
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 179
    .local v3, "e":Ljava/lang/Exception;
    const-wide/16 v5, 0x0

    .line 180
    const-string v7, "CASEE-TA"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    return-wide v5
.end method

.method private getCaseeFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "fname"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v2, p0, Lcom/casee/apptrack/NotifyUtil;->ctx:Landroid/content/Context;

    const-string v3, "casee"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 36
    .local v0, "cdir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .local v1, "file":Ljava/io/File;
    return-object v1
.end method

.method private getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1388

    .line 121
    const/4 v1, 0x0

    .line 123
    .local v1, "connection":Ljava/net/HttpURLConnection;
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "caseeUrl":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 125
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    const-string v4, "User-Agent"

    const-string v5, "Android-CASEE-PTSDK"

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 127
    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 128
    const-string v4, "POST"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 129
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 131
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 132
    .local v2, "out":Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 134
    .local v3, "writer":Ljava/io/Writer;
    :try_start_0
    invoke-virtual {v3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 139
    return-object v1

    .line 136
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    throw v4
.end method


# virtual methods
.method public declared-synchronized getCaseeProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 4
    .param p1, "fname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 45
    .local v2, "p":Ljava/util/Properties;
    invoke-direct {p0, p1}, Lcom/casee/apptrack/NotifyUtil;->getCaseeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 46
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 59
    :goto_0
    monitor-exit p0

    return-object v2

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "fis":Ljava/io/FileInputStream;
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 44
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "p":Ljava/util/Properties;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 56
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "p":Ljava/util/Properties;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getPropertiesFromAsset(Ljava/lang/String;)Ljava/util/Properties;
    .locals 4
    .param p1, "fname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v3, p0, Lcom/casee/apptrack/NotifyUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 79
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 80
    .local v0, "ais":Ljava/io/InputStream;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 82
    .local v2, "p":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 86
    return-object v2

    .line 84
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3
.end method

.method public declared-synchronized saveCaseeProperties(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 3
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/casee/apptrack/NotifyUtil;->getCaseeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 68
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->save(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public sendNotify(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/util/Map;

    .prologue
    .line 94
    invoke-direct {p0, p2}, Lcom/casee/apptrack/NotifyUtil;->createPostString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "pstr":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/casee/apptrack/NotifyUtil;->genChecksum(Ljava/lang/String;)J

    move-result-wide v1

    .line 98
    .local v1, "cs":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?cs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v4, 0x1

    .line 103
    .local v4, "result":Z
    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/casee/apptrack/NotifyUtil;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    if-eqz v0, :cond_0

    .line 111
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 117
    :cond_0
    :goto_0
    return v4

    .line 105
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 106
    .local v5, "t":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 107
    :try_start_2
    const-string v6, "CASEE-TA"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    if-eqz v0, :cond_0

    .line 111
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v6

    goto :goto_0

    .line 109
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 111
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 113
    :cond_1
    :goto_1
    throw v6

    .line 112
    :catch_2
    move-exception v6

    goto :goto_0

    :catch_3
    move-exception v7

    goto :goto_1
.end method
