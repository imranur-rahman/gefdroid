.class abstract Lcn/domob/android/ads/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static k:Ljava/util/concurrent/Executor;


# instance fields
.field protected a:Ljava/net/URL;

.field protected b:Ljava/net/Proxy;

.field protected c:Lcn/domob/android/ads/a;

.field protected d:Ljava/lang/String;

.field protected e:I

.field protected f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/lang/String;

.field protected h:[B

.field protected i:Z

.field protected j:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/ads/d;->k:Ljava/util/concurrent/Executor;

    .line 19
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;ILjava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/a;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcn/domob/android/ads/d;->l:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcn/domob/android/ads/d;->c:Lcn/domob/android/ads/a;

    .line 45
    iput-object p6, p0, Lcn/domob/android/ads/d;->f:Ljava/util/Map;

    .line 46
    iput p5, p0, Lcn/domob/android/ads/d;->e:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/ads/d;->j:I

    .line 49
    if-eqz p7, :cond_0

    .line 50
    iput-object p7, p0, Lcn/domob/android/ads/d;->g:Ljava/lang/String;

    .line 51
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcn/domob/android/ads/d;->d:Ljava/lang/String;

    .line 57
    :goto_0
    iput-object v1, p0, Lcn/domob/android/ads/d;->b:Ljava/net/Proxy;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/d;->i:Z

    .line 61
    return-void

    .line 53
    :cond_0
    iput-object v1, p0, Lcn/domob/android/ads/d;->g:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcn/domob/android/ads/d;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 154
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setProxy -- proxy:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "| port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcn/domob/android/ads/d;->b:Ljava/net/Proxy;

    .line 158
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v0, "DomobSDK"

    .line 67
    if-nez p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcn/domob/android/ads/DomobAdManager;->getCurrentApn(Landroid/content/Context;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 75
    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 77
    const-string v1, "proxy"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, "port"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 80
    const-string v3, "apn"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    const-string v4, "DomobSDK"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    const-string v4, "DomobSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "current apnType is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    const-string v3, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    const-string v3, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "proxy:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "| port:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_3
    if-eqz v1, :cond_6

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_6

    .line 94
    :try_start_2
    const-string v3, "r.domob.cn"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 95
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :try_start_3
    new-instance v5, Ljava/net/InetSocketAddress;

    const/16 v6, 0x50

    invoke-direct {v5, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 98
    const/16 v3, 0x1388

    invoke-virtual {v4, v5, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 100
    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 101
    const-string v3, "DomobSDK"

    .line 102
    const/4 v5, 0x3

    .line 101
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    const-string v3, "DomobSDK"

    .line 104
    const-string v5, "connected  not need use proxy"

    .line 103
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_4
    if-eqz v0, :cond_5

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_5
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    :try_start_4
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 144
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 145
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 148
    :cond_6
    :goto_2
    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 117
    :catch_1
    move-exception v3

    move-object v3, v7

    :goto_3
    :try_start_5
    const-string v4, "DomobSDK"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 118
    const-string v4, "DomobSDK"

    .line 119
    const-string v5, "socket connect  is  throws UnknownHostException "

    .line 118
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_7
    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/d;->a(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 138
    if-eqz v3, :cond_6

    .line 139
    :try_start_6
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 125
    :catch_2
    move-exception v3

    move-object v3, v7

    :goto_4
    :try_start_7
    const-string v4, "DomobSDK"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 126
    const-string v4, "DomobSDK"

    .line 127
    const-string v5, "socket connect  is  throws SocketTimeoutException "

    .line 126
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_8
    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/d;->a(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 138
    if-eqz v3, :cond_6

    .line 139
    :try_start_8
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    .line 131
    :catch_3
    move-exception v1

    move-object v2, v7

    .line 132
    :goto_5
    :try_start_9
    const-string v3, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 133
    const-string v3, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "socket exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 138
    :cond_9
    if-eqz v2, :cond_6

    .line 139
    :try_start_a
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    goto :goto_2

    .line 137
    :catchall_0
    move-exception v1

    move-object v2, v7

    .line 138
    :goto_6
    if-eqz v2, :cond_a

    .line 139
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 141
    :cond_a
    throw v1

    .line 138
    :cond_b
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_2

    .line 144
    :catch_4
    move-exception v0

    move-object v1, v7

    goto :goto_1

    .line 137
    :catchall_1
    move-exception v1

    move-object v2, v4

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v2, v3

    goto :goto_6

    :catchall_3
    move-exception v1

    goto :goto_6

    .line 131
    :catch_5
    move-exception v1

    move-object v2, v4

    goto :goto_5

    .line 125
    :catch_6
    move-exception v3

    move-object v3, v4

    goto :goto_4

    .line 117
    :catch_7
    move-exception v3

    move-object v3, v4

    goto :goto_3
.end method

.method abstract a()Z
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcn/domob/android/ads/d;->k:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/d;->k:Ljava/util/concurrent/Executor;

    .line 164
    :cond_0
    sget-object v0, Lcn/domob/android/ads/d;->k:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcn/domob/android/ads/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected final d()[B
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/d;->h:[B

    return-object v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcn/domob/android/ads/d;->j:I

    return v0
.end method
