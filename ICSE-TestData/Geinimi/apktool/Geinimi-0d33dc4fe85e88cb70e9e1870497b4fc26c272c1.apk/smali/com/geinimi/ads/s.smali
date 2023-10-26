.class public final Lcom/geinimi/ads/s;
.super Lcom/geinimi/ads/Advertisable;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/geinimi/ads/Advertisable;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geinimi/ads/s;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 3

    iget-object v0, p0, Lcom/geinimi/ads/s;->b:Ljava/lang/String;

    sget-object v1, Lcom/geinimi/c/k;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/geinimi/c/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/geinimi/c/k;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wallpaper"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/geinimi/ads/s;->a:Ljava/lang/String;

    sget-object v1, Lcom/geinimi/r;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geinimi/ads/s;->b:Ljava/lang/String;

    return-void
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final h()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
