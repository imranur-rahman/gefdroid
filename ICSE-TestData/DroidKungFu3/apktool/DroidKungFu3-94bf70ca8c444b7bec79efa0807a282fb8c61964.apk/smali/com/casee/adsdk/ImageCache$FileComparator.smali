.class public Lcom/casee/adsdk/ImageCache$FileComparator;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/casee/adsdk/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileComparator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 148
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 149
    const/4 v3, 0x0

    .line 153
    :goto_0
    return v3

    .line 151
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    move-object v1, v0

    .line 152
    .local v1, "f1":Ljava/io/File;
    move-object v0, p2

    check-cast v0, Ljava/io/File;

    move-object v2, v0

    .line 153
    .local v2, "f2":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    goto :goto_0
.end method
