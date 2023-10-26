.class Lnet/youmi/android/a;
.super Ljava/lang/Object;


# static fields
.field static a:J

.field static b:J

.field static c:Z

.field static d:Lnet/youmi/android/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lnet/youmi/android/a;->a:J

    sput-wide v0, Lnet/youmi/android/a;->b:J

    const/4 v0, 0x0

    sput-boolean v0, Lnet/youmi/android/a;->c:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "adid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "sd"

    invoke-static {v0, v1, p2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "0"

    invoke-static {p0}, Lnet/youmi/android/e;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "1"

    :cond_0
    const-string v2, "ts"

    invoke-static {v0, v2, v1}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p0, v1}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Landroid/app/Activity;Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lnet/youmi/android/t;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/n;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/util/Date;->getSeconds()I

    move-result v1

    rem-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/youmi/android/as;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-static {v0, v2, v1}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v1}, Lnet/youmi/android/ag;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Lnet/youmi/android/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&k="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;ILjava/lang/String;I)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "adid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "et"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "eid"

    invoke-static {v0, v1, p2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "0"

    invoke-static {p0}, Lnet/youmi/android/e;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "1"

    :cond_0
    const-string v2, "ts"

    invoke-static {v0, v2, v1}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p0, v1}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Landroid/app/Activity;Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lnet/youmi/android/t;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/n;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/util/Date;->getSeconds()I

    move-result v1

    rem-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/youmi/android/as;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-static {v0, v2, v1}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v1}, Lnet/youmi/android/ag;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Lnet/youmi/android/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&k="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;Lnet/youmi/android/AdView;)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "adw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/youmi/android/AdView;->getAdWidth()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/AdView;->a()Lnet/youmi/android/ak;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/ak;->a()I

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "adh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/youmi/android/AdView;->getAdHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "0"

    invoke-static {p0}, Lnet/youmi/android/e;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "1"

    :cond_1
    const-string v2, "ts"

    invoke-static {v0, v2, v1}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, p0, v1}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Landroid/app/Activity;Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lnet/youmi/android/t;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/youmi/android/n;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/util/Date;->getSeconds()I

    move-result v1

    rem-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/youmi/android/as;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-static {v0, v2, v1}, Lnet/youmi/android/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v1}, Lnet/youmi/android/ag;->a(I)I

    move-result v1

    invoke-static {v0, v1}, Lnet/youmi/android/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&k="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;)Lnet/youmi/android/z;
    .locals 6

    const/16 v5, -0x3e7

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "code"

    const/16 v3, -0x3e7

    invoke-static {v1, v2, v3}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    const-string v0, "Unable to connect to the server, please check your network configuration!"

    invoke-static {v0}, Lnet/youmi/android/g;->b(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lnet/youmi/android/g;->a(Landroid/content/Context;II)V

    if-nez v1, :cond_2

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/z;->a(Lorg/json/JSONObject;)Lnet/youmi/android/z;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v4

    goto :goto_0
.end method

.method static a(Lnet/youmi/android/AdView;)V
    .locals 1

    :try_start_0
    sget-object v0, Lnet/youmi/android/a;->d:Lnet/youmi/android/ax;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/youmi/android/a;->d:Lnet/youmi/android/ax;

    invoke-virtual {p0, v0}, Lnet/youmi/android/AdView;->a(Lnet/youmi/android/ax;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a()Z
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lnet/youmi/android/a;->c:Z

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lnet/youmi/android/a;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    sput-boolean v4, Lnet/youmi/android/a;->c:Z

    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Landroid/app/Activity;Lnet/youmi/android/AdView;)Lnet/youmi/android/ax;
    .locals 11

    const/16 v4, -0x3e7

    const/4 v10, 0x0

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lnet/youmi/android/cr;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lnet/youmi/android/a;->a(Landroid/app/Activity;Lnet/youmi/android/AdView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/youmi/android/cg;->d(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "code"

    const/16 v3, -0x3e7

    invoke-static {v1, v2, v3}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string v0, "Unable to connect to the server, please check your network configuration!"

    invoke-static {v0}, Lnet/youmi/android/g;->b(Ljava/lang/String;)V

    :goto_0
    move-object v0, v10

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lnet/youmi/android/g;->a(Landroid/content/Context;II)V

    const-string v1, "data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "adid"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    const-string v1, "sd"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "text"

    const-string v4, ""

    invoke-static {v0, v1, v4}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "img"

    const-string v5, ""

    invoke-static {v0, v1, v5}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "url"

    const-string v5, ""

    invoke-static {v0, v1, v5}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "type"

    const/4 v7, 0x1

    invoke-static {v0, v1, v7}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v7

    const-string v1, "opentype"

    const/4 v8, 0x1

    invoke-static {v0, v1, v8}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v8

    const-string v1, "rqivsec"

    const/16 v9, 0x1e

    invoke-static {v0, v1, v9}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lnet/youmi/android/ch;->a(I)V

    new-instance v0, Lnet/youmi/android/ax;

    invoke-direct {v0}, Lnet/youmi/android/ax;-><init>()V

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lnet/youmi/android/ax;->a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v10

    goto :goto_1

    :cond_2
    move-object v0, v10

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static b(Landroid/app/Activity;ILjava/lang/String;I)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/x;

    invoke-direct {v1, p0, p1, p2, p3}, Lnet/youmi/android/x;-><init>(Landroid/app/Activity;ILjava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static b()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lnet/youmi/android/a;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/app/Activity;ILjava/lang/String;)Z
    .locals 5

    const/16 v4, -0x3e7

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lnet/youmi/android/a;->a(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/youmi/android/cg;->d(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "code"

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "Unable to connect to the server, please check your network configuration!"

    invoke-static {v0}, Lnet/youmi/android/g;->b(Ljava/lang/String;)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lnet/youmi/android/g;->a(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method

.method static c()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lnet/youmi/android/a;->a:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    sget-wide v2, Lnet/youmi/android/a;->a:J

    sub-long v0, v2, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x64

    goto :goto_0
.end method

.method static c(Landroid/app/Activity;Lnet/youmi/android/AdView;)J
    .locals 5

    :try_start_0
    invoke-static {}, Lnet/youmi/android/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lnet/youmi/android/a;->a(Lnet/youmi/android/AdView;)V

    invoke-static {p0}, Lnet/youmi/android/cd;->a(Landroid/app/Activity;)V

    invoke-static {}, Lnet/youmi/android/a;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lnet/youmi/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lnet/youmi/android/a;->a(Lnet/youmi/android/AdView;)V

    invoke-static {p0}, Lnet/youmi/android/cd;->a(Landroid/app/Activity;)V

    invoke-static {}, Lnet/youmi/android/a;->d()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lnet/youmi/android/a;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lnet/youmi/android/a;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, p1}, Lnet/youmi/android/a;->b(Landroid/app/Activity;Lnet/youmi/android/AdView;)Lnet/youmi/android/ax;

    move-result-object v0

    if-eqz v0, :cond_3

    sput-object v0, Lnet/youmi/android/a;->d:Lnet/youmi/android/ax;

    invoke-static {}, Lnet/youmi/android/a;->d()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    sput-wide v1, Lnet/youmi/android/a;->a:J

    invoke-virtual {v0}, Lnet/youmi/android/ax;->k()V

    invoke-virtual {v0}, Lnet/youmi/android/ax;->f()I

    move-result v1

    invoke-virtual {v0}, Lnet/youmi/android/ax;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lnet/youmi/android/a;->b(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnet/youmi/android/ax;->j()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lnet/youmi/android/a;->c:Z

    invoke-static {p1}, Lnet/youmi/android/a;->a(Lnet/youmi/android/AdView;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-static {p0}, Lnet/youmi/android/cd;->a(Landroid/app/Activity;)V

    invoke-static {}, Lnet/youmi/android/a;->c()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    sput-wide v0, Lnet/youmi/android/a;->a:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual {p1}, Lnet/youmi/android/AdView;->d()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static c(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lnet/youmi/android/cr;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lnet/youmi/android/a;->a(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Landroid/app/Activity;ILjava/lang/String;I)Z
    .locals 5

    const/16 v4, -0x3e7

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lnet/youmi/android/cr;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lnet/youmi/android/a;->a(Landroid/app/Activity;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/youmi/android/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/youmi/android/cg;->d(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "code"

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "Unable to connect to the server, please check your network configuration!"

    invoke-static {v0}, Lnet/youmi/android/g;->b(Ljava/lang/String;)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lnet/youmi/android/g;->a(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method

.method static d()J
    .locals 4

    invoke-static {}, Lnet/youmi/android/h;->d()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lnet/youmi/android/n;->d()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    invoke-static {}, Lnet/youmi/android/n;->d()J

    move-result-wide v0

    :cond_0
    invoke-static {}, Lnet/youmi/android/ch;->a()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    invoke-static {}, Lnet/youmi/android/ch;->a()J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method static d(Landroid/app/Activity;ILjava/lang/String;)Z
    .locals 5

    const/16 v4, -0x3e7

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lnet/youmi/android/a;->c(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/youmi/android/cg;->d(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "code"

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, Lnet/youmi/android/bd;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "Unable to connect to the server, please check your network configuration!"

    invoke-static {v0}, Lnet/youmi/android/g;->b(Ljava/lang/String;)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lnet/youmi/android/g;->a(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method
