.class public Lcom/casee/adsdk/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/casee/adsdk/ImageCache$FileComparator;
    }
.end annotation


# static fields
.field static final IMG_LIMIT:I = 0x14

.field static final LOG_TAG:Ljava/lang/String; = "IMAGECACHE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static clearCache([Ljava/io/File;)V
    .locals 10
    .param p0, "files"    # [Ljava/io/File;

    .prologue
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v0, "al":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v1, p0

    .local v1, "arr$":[Ljava/io/File;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v1, v5

    .line 135
    .local v2, "f":Ljava/io/File;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "f":Ljava/io/File;
    :cond_0
    new-instance v8, Lcom/casee/adsdk/ImageCache$FileComparator;

    invoke-direct {v8}, Lcom/casee/adsdk/ImageCache$FileComparator;-><init>()V

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    array-length v8, p0

    const/16 v9, 0x14

    sub-int/2addr v8, v9

    add-int/lit8 v7, v8, 0x1

    .line 139
    .local v7, "needDeleteCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_1

    .line 140
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 141
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 143
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private static getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 92
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imgurl"    # Ljava/lang/String;

    .prologue
    .line 27
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 87
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "imgurl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 29
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "imgurl":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 30
    .local p0, "cdir":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 31
    .local v2, "files":[Ljava/io/File;
    invoke-static {p1}, Lcom/casee/adsdk/ImageCache;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "filename":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    :goto_1
    if-eqz v2, :cond_7

    array-length v0, v2

    if-ge v5, v0, :cond_7

    .line 33
    aget-object v0, v2, v5

    .line 34
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 36
    const/4 v3, 0x0

    .line 38
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v4, "IMAGECACHE"

    const-string v6, "read img from cache"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v4, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .end local v0    # "file":Ljava/io/File;
    move-result-object v0

    .line 41
    .local v0, "da":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 47
    if-eqz v4, :cond_3

    .line 49
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local p0    # "cdir":Ljava/io/File;
    :cond_3
    :goto_2
    move-object p0, v0

    .line 53
    goto :goto_0

    .line 50
    .restart local p0    # "cdir":Ljava/io/File;
    :catch_0
    move-exception p0

    .line 52
    .local p0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 47
    .local p0, "cdir":Ljava/io/File;
    :cond_4
    if-eqz v4, :cond_5

    .line 49
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 32
    .end local v0    # "da":Landroid/graphics/drawable/Drawable;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :cond_5
    :goto_3
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "i":I
    .local v0, "i":I
    move v5, v0

    .end local v0    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 50
    .local v0, "da":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 43
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v0, "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    if-eqz v3, :cond_5

    .line 49
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 50
    :catch_3
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 47
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local p1    # "imgurl":Ljava/lang/String;
    .local p0, "fis":Ljava/io/FileInputStream;
    :goto_5
    if-eqz p0, :cond_6

    .line 49
    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 53
    .end local p0    # "fis":Ljava/io/FileInputStream;
    :cond_6
    :goto_6
    throw p1

    .line 50
    .restart local p0    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception p0

    .line 52
    .local p0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 57
    .local p0, "cdir":Ljava/io/File;
    .restart local p1    # "imgurl":Ljava/lang/String;
    :cond_7
    const/4 v0, 0x0

    .line 59
    .local v0, "da":Landroid/graphics/drawable/Drawable;
    :try_start_7
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 61
    .local p1, "conn":Ljava/net/URLConnection;
    const/16 v3, 0x2710

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 62
    .end local v3    # "url":Ljava/net/URL;
    const/16 v3, 0x2710

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 63
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 64
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 66
    :try_start_8
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v3

    .line 68
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_8

    :try_start_9
    array-length p1, v2

    .end local p1    # "conn":Ljava/net/URLConnection;
    const/16 v4, 0x14

    if-lt p1, v4, :cond_8

    .line 69
    invoke-static {v2}, Lcom/casee/adsdk/ImageCache;->clearCache([Ljava/io/File;)V

    .line 70
    :cond_8
    if-eqz v3, :cond_a

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "files":[Ljava/io/File;
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/casee/adsdk/ImageCache;->saveImg(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 72
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "cdir":Ljava/io/File;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local p1, "file":Ljava/io/File;
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 74
    .local p0, "fis":Ljava/io/FileInputStream;
    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local p1    # "file":Ljava/io/File;
    move-result-object p0

    .line 78
    .end local v0    # "da":Landroid/graphics/drawable/Drawable;
    .local p0, "da":Landroid/graphics/drawable/Drawable;
    :goto_7
    if-eqz v3, :cond_1

    .line 79
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .line 81
    :catchall_1
    move-exception p1

    .end local v3    # "is":Ljava/io/InputStream;
    :goto_8
    :try_start_b
    throw p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 83
    :catch_5
    move-exception p1

    .line 84
    .local p1, "e":Ljava/lang/Exception;
    :goto_9
    const-string p0, "IMAGECACHE"

    .end local p0    # "da":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 78
    .end local p1    # "e":Ljava/lang/Exception;
    .restart local v0    # "da":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception p0

    if-eqz v3, :cond_9

    .line 79
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_9
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 81
    .end local v3    # "is":Ljava/io/InputStream;
    :catchall_3
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0    # "da":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "da":Landroid/graphics/drawable/Drawable;
    goto :goto_8

    .line 83
    .restart local v0    # "da":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "files":[Ljava/io/File;
    .local p0, "cdir":Ljava/io/File;
    :catch_6
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0    # "da":Landroid/graphics/drawable/Drawable;
    .local p0, "da":Landroid/graphics/drawable/Drawable;
    goto :goto_9

    .line 47
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .local p0, "cdir":Ljava/io/File;
    .local p1, "imgurl":Ljava/lang/String;
    :catchall_4
    move-exception p0

    move-object p1, p0

    move-object p0, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local p0, "fis":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 43
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .local p0, "cdir":Ljava/io/File;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local p1    # "imgurl":Ljava/lang/String;
    .restart local v0    # "da":Landroid/graphics/drawable/Drawable;
    .local v3, "is":Ljava/io/InputStream;
    :cond_a
    move-object p0, v0

    .end local v0    # "da":Landroid/graphics/drawable/Drawable;
    .local p0, "da":Landroid/graphics/drawable/Drawable;
    goto :goto_7
.end method

.method private static saveImg(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v5, 0x0

    .line 100
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 102
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v1, v7, [B

    .line 105
    .local v1, "bytes":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "c":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    .line 106
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 109
    .end local v1    # "bytes":[B
    .end local v2    # "c":I
    :catch_0
    move-exception v7

    move-object v3, v7

    move-object v5, v6

    .line 110
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, "f":Ljava/io/File;
    if-eqz v4, :cond_0

    .line 112
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :cond_0
    if-eqz v5, :cond_1

    .line 116
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 121
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 123
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 129
    .end local v4    # "f":Ljava/io/File;
    :cond_2
    :goto_3
    return-void

    .line 108
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bytes":[B
    .restart local v2    # "c":I
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 114
    if-eqz v6, :cond_4

    .line 116
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 121
    :cond_4
    :goto_4
    if-eqz v0, :cond_7

    .line 123
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v5, v6

    .line 127
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 117
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 119
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 124
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 126
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 127
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 117
    .end local v1    # "bytes":[B
    .end local v2    # "c":I
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "f":Ljava/io/File;
    :catch_3
    move-exception v3

    .line 119
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 124
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 126
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 114
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "f":Ljava/io/File;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v5, :cond_5

    .line 116
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 121
    :cond_5
    :goto_6
    if-eqz v0, :cond_6

    .line 123
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 127
    :cond_6
    :goto_7
    throw v7

    .line 117
    :catch_5
    move-exception v3

    .line 119
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 124
    .end local v3    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 126
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 114
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 109
    :catch_7
    move-exception v7

    move-object v3, v7

    goto :goto_1

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bytes":[B
    .restart local v2    # "c":I
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_7
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method
