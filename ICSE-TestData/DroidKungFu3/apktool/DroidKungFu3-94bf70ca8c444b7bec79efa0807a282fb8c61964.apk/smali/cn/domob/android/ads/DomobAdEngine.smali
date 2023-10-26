.class final Lcn/domob/android/ads/DomobAdEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobAdEngine$b;,
        Lcn/domob/android/ads/DomobAdEngine$c;,
        Lcn/domob/android/ads/DomobAdEngine$d;,
        Lcn/domob/android/ads/DomobAdEngine$RecvHandler;,
        Lcn/domob/android/ads/DomobAdEngine$e;
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private b:Landroid/graphics/Rect;

.field private c:Lcn/domob/android/ads/DomobAdBuilder;

.field private d:F

.field private e:Z

.field private f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

.field private g:Lcn/domob/android/ads/DomobAdEngine$e;

.field private h:J

.field private i:J

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcn/domob/android/ads/DomobAdEngine$d;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcn/domob/android/ads/d;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Lorg/json/JSONObject;

.field private w:Lcn/domob/android/ads/b;

.field private x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x66

    .line 27
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcn/domob/android/ads/DomobAdEngine;->a:I

    .line 26
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdEngine;->e:Z

    .line 50
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->t:Ljava/util/Hashtable;

    .line 55
    new-instance v0, Lcn/domob/android/ads/b;

    invoke-direct {v0}, Lcn/domob/android/ads/b;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->w:Lcn/domob/android/ads/b;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->x:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->y:Ljava/util/Vector;

    .line 61
    iput-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    .line 62
    iput-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->g:Lcn/domob/android/ads/DomobAdEngine$e;

    .line 64
    iput-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    .line 65
    iput-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->u:Ljava/lang/String;

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdEngine;->h:J

    .line 68
    iput v2, p0, Lcn/domob/android/ads/DomobAdEngine;->l:I

    .line 69
    iput v2, p0, Lcn/domob/android/ads/DomobAdEngine;->m:I

    .line 70
    const-wide/32 v0, -0x847c60

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdEngine;->i:J

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->p:Ljava/util/Vector;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    .line 76
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    .line 77
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->s:Ljava/util/Hashtable;

    .line 80
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/domob/android/ads/DomobAdEngine;->d:F

    .line 83
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;F)F
    .locals 2

    .prologue
    .line 1189
    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 1227
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v0, v2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1235
    :goto_0
    return-object v0

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    .prologue
    const-string v0, "DomobSDK"

    const-string v0, ","

    .line 1206
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1208
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1209
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-int v0, v4

    add-int/2addr v0, v2

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v1

    invoke-virtual {p0, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v2

    invoke-virtual {p0, v3}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v0

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :try_start_1
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRect :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    .line 1217
    :goto_0
    return-object v0

    .line 1214
    :catch_0
    move-exception v0

    move-object v1, p3

    .line 1215
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 1214
    :catch_1
    move-exception v0

    move-object v1, v4

    goto :goto_1

    :cond_0
    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Landroid/graphics/Rect;)Landroid/view/View;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string v1, "DomobSDK"

    .line 1021
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v1, :cond_1

    .line 1023
    :try_start_0
    const-string v1, "ia"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v1

    .line 1024
    const-string v2, "epy"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v2, v3}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v2

    .line 1025
    iget-wide v3, p0, Lcn/domob/android/ads/DomobAdEngine;->i:J

    long-to-int v3, v3

    .line 1027
    const-string v4, "bc"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1028
    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcn/domob/android/ads/DomobAdEngine;->j:Z

    if-nez v5, :cond_0

    .line 1029
    const/16 v3, 0x10

    invoke-static {v4, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1030
    const-string v4, "DomobSDK"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1031
    const-string v4, "DomobSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bgcolor is:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1036
    iget-object v5, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1038
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1039
    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 1040
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    .line 1041
    new-instance v7, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/Rect;->right:I

    invoke-direct {v7, v2, v8, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1042
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1043
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1044
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1045
    invoke-virtual {v5, v7, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1047
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v1, v2, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 1048
    const/4 v2, 0x2

    new-array v8, v2, [I

    const/4 v2, 0x0

    .line 1049
    aput v1, v8, v2

    const/4 v1, 0x1

    aput v3, v8, v1

    .line 1053
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v1, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    move-object v1, v0

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1054
    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1055
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1056
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1057
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1058
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1059
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1061
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v2}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1062
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :goto_0
    return-object v1

    .line 1064
    :catch_0
    move-exception v1

    .line 1065
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-object v1, v10

    .line 1069
    goto :goto_0
.end method

.method private static a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;)Lcn/domob/android/ads/DomobAdEngine$c;
    .locals 1

    .prologue
    .line 1012
    new-instance v0, Lcn/domob/android/ads/DomobAdEngine$c;

    invoke-direct {v0}, Lcn/domob/android/ads/DomobAdEngine$c;-><init>()V

    .line 1013
    iput-object p0, v0, Lcn/domob/android/ads/DomobAdEngine$c;->a:Landroid/view/View;

    .line 1014
    iput-object p1, v0, Lcn/domob/android/ads/DomobAdEngine$c;->b:Landroid/widget/RelativeLayout$LayoutParams;

    .line 1015
    iput-object p2, v0, Lcn/domob/android/ads/DomobAdEngine$c;->c:Ljava/lang/String;

    .line 1017
    return-object v0
.end method

.method protected static a(Lcn/domob/android/ads/DomobAdEngine$RecvHandler;Lorg/json/JSONObject;Lcn/domob/android/ads/DomobAdBuilder;)Lcn/domob/android/ads/DomobAdEngine;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const-string v3, "DomobSDK"

    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 87
    :cond_0
    const-string v0, "DomobSDK"

    const-string v0, "failed to init engine, jsonobject is null!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 117
    :cond_1
    :goto_0
    return-object v0

    .line 91
    :cond_2
    const-string v0, "DomobSDK"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    const-string v0, "DomobSDK"

    const-string v0, "init engine now."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_3
    new-instance v0, Lcn/domob/android/ads/DomobAdEngine;

    invoke-direct {v0}, Lcn/domob/android/ads/DomobAdEngine;-><init>()V

    .line 96
    iput-object p0, v0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    .line 97
    iput-object p2, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    .line 99
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->getAdView()Lcn/domob/android/ads/DomobAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->isDataMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->getAdView()Lcn/domob/android/ads/DomobAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->getPrimaryTextColor()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/domob/android/ads/DomobAdEngine;->h:J

    .line 103
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->getAdView()Lcn/domob/android/ads/DomobAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->getBackgroundColor()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/domob/android/ads/DomobAdEngine;->i:J

    .line 106
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->getAdView()Lcn/domob/android/ads/DomobAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->getBackColorSetByClient()Z

    move-result v1

    iput-boolean v1, v0, Lcn/domob/android/ads/DomobAdEngine;->j:Z

    .line 107
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->getAdView()Lcn/domob/android/ads/DomobAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->getPrimTxtColorSetByClient()Z

    move-result v1

    iput-boolean v1, v0, Lcn/domob/android/ads/DomobAdEngine;->k:Z

    .line 110
    invoke-direct {v0, p1}, Lcn/domob/android/ads/DomobAdEngine;->c(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 111
    const-string v1, "DomobSDK"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string v1, "DomobSDK"

    const-string v1, "success to parse ad response."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move-object v0, v5

    .line 117
    goto :goto_0
.end method

.method static a(Lcn/domob/android/ads/DomobAdEngine;)V
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->received(Lcn/domob/android/ads/DomobAdEngine;)V

    .line 1377
    :cond_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 12

    .prologue
    const/4 v8, 0x3

    const/4 v10, 0x0

    const-string v6, "android.intent.action.SENDTO"

    const-string v5, "android.intent.action.VIEW"

    const-string v9, "DomobSDK"

    .line 325
    if-eqz p1, :cond_1

    .line 326
    const-string v0, "a"

    invoke-virtual {p1, v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v1, "opentype"

    invoke-virtual {p1, v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    const-string v2, "DomobSDK"

    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OpenType is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    if-nez v0, :cond_2

    .line 335
    const-string v0, "DomobSDK"

    const-string v0, "invalid action type!"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    const-string v2, "d"

    invoke-virtual {p1, v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    const-string v3, "map"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 346
    const-string v3, "android.intent.action.VIEW"

    .line 347
    if-nez v2, :cond_3

    .line 348
    const-string v0, "DomobSDK"

    const-string v0, "map data is null!"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "geo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v4, v5

    move-object v2, v10

    .line 404
    :goto_1
    const-string v5, "f"

    const/high16 v6, 0x10000000

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 405
    const-string v6, "b"

    invoke-virtual {p1, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 407
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 408
    if-eqz v3, :cond_16

    .line 409
    const-string v7, "DomobSDK"

    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 410
    const-string v7, "DomobSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "intent uri:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_4
    :goto_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 417
    if-eqz v5, :cond_5

    .line 418
    invoke-virtual {v7, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 421
    :cond_5
    const-string v3, "url"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 423
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 424
    const-string v4, "opentype"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {v7, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 428
    :cond_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 429
    const-string v3, "type"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v7, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 435
    if-eqz v6, :cond_7

    if-eqz v2, :cond_7

    .line 436
    invoke-virtual {v7, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    :cond_7
    const-string v1, "s"

    invoke-virtual {p1, v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    const-string v2, "mail"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 441
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    :cond_8
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->p:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 353
    :cond_9
    const-string v3, "sms"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 355
    const-string v3, "android.intent.action.SENDTO"

    .line 356
    if-nez v2, :cond_a

    .line 357
    const-string v0, "DomobSDK"

    const-string v0, "smsto is null!"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 361
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "smsto:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    const-string v3, "sms_body"

    move-object v4, v6

    move-object v11, v2

    move-object v2, v3

    move-object v3, v11

    goto/16 :goto_1

    .line 363
    :cond_b
    const-string v3, "mail"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 364
    const-string v3, "android.intent.action.SENDTO"

    .line 365
    if-nez v2, :cond_c

    .line 366
    const-string v0, "DomobSDK"

    const-string v0, "mailto is null!"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 370
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mailto:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    const-string v3, "android.intent.extra.TEXT"

    move-object v4, v6

    move-object v11, v2

    move-object v2, v3

    move-object v3, v11

    goto/16 :goto_1

    .line 372
    :cond_d
    const-string v3, "url"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "market"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 374
    :cond_e
    const-string v3, "android.intent.action.VIEW"

    .line 375
    if-nez v2, :cond_f

    .line 376
    const-string v0, "DomobSDK"

    const-string v0, "url is null!"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    move-object v3, v2

    move-object v4, v5

    move-object v2, v10

    .line 380
    goto/16 :goto_1

    .line 381
    :cond_10
    const-string v3, "call"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 383
    const-string v3, "android.intent.action.DIAL"

    .line 384
    if-nez v2, :cond_11

    .line 385
    const-string v0, "DomobSDK"

    const-string v0, "tel number is null!"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 389
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tel:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v3, v2

    move-object v2, v10

    goto/16 :goto_1

    .line 390
    :cond_12
    const-string v3, "video"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "audio"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 391
    :cond_13
    const-string v3, "android.intent.action.VIEW"

    .line 392
    if-nez v2, :cond_14

    .line 393
    const-string v0, "DomobSDK"

    const-string v0, "url is null!"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    move-object v3, v2

    move-object v4, v5

    move-object v2, v10

    .line 397
    goto/16 :goto_1

    .line 399
    :cond_15
    const-string v0, "DomobSDK"

    const-string v0, "unknown action type!"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 413
    :cond_16
    const-string v7, "DomobSDK"

    const-string v7, "intent uri is null"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private c(Lorg/json/JSONObject;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v6, "ac"

    const-string v4, "DomobSDK"

    .line 630
    const-string v0, "rp_url"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    if-nez v0, :cond_0

    .line 632
    const-string v0, "DomobSDK"

    const-string v0, "there is no jsonpurl which is required!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 709
    :goto_0
    return v0

    .line 636
    :cond_0
    const-string v1, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    const-string v1, "DomobSDK"

    const-string v1, "parse response now."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcn/domob/android/ads/DomobAdEngine$d;

    invoke-direct {v1, v0, v3}, Lcn/domob/android/ads/DomobAdEngine$d;-><init>(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_2
    const-string v0, "identifier"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->u:Ljava/lang/String;

    .line 643
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->u:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->u:Ljava/lang/String;

    const-string v1, "nullad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 644
    :cond_3
    const-string v0, "DomobSDK"

    const-string v0, "ad identifier is null, ignore it!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 645
    goto :goto_0

    .line 653
    :cond_4
    invoke-static {}, Lcn/domob/android/ads/DomobAdBuilder;->d()F

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/DomobAdEngine;->d:F

    .line 655
    const-string v0, "d"

    invoke-static {p1, v0, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 657
    if-nez v0, :cond_5

    .line 658
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x43a00000    # 320.0f

    const/high16 v2, 0x42400000    # 48.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 661
    :cond_5
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_6

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_7

    :cond_6
    move v0, v3

    .line 662
    goto :goto_0

    .line 666
    :cond_7
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, p0, Lcn/domob/android/ads/DomobAdEngine;->l:I

    .line 667
    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p0, Lcn/domob/android/ads/DomobAdEngine;->m:I

    .line 669
    const-string v0, "ac"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_8

    .line 671
    invoke-direct {p0, v0}, Lcn/domob/android/ads/DomobAdEngine;->b(Lorg/json/JSONObject;)V

    .line 676
    :cond_8
    const-string v0, "ac"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 677
    if-eqz v0, :cond_9

    move v1, v3

    .line 678
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_a

    .line 689
    :cond_9
    const-string v0, "markup"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 690
    if-nez v0, :cond_b

    .line 691
    const-string v0, "DomobSDK"

    const-string v0, "there is no markup which is required!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 692
    goto/16 :goto_0

    .line 680
    :cond_a
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 681
    invoke-direct {p0, v2}, Lcn/domob/android/ads/DomobAdEngine;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 683
    :catch_0
    move-exception v2

    .line 684
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 695
    :cond_b
    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->v:Lorg/json/JSONObject;

    .line 697
    :try_start_1
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->h()V

    .line 698
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->i()V

    .line 701
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 702
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->j()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 709
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 704
    :catch_1
    move-exception v0

    .line 705
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v3

    .line 706
    goto/16 :goto_0
.end method

.method private d(Lorg/json/JSONObject;)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v8, ".png"

    const-string v4, "DomobSDK"

    .line 1074
    .line 1075
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_7

    .line 1078
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v0

    .line 1079
    const-string v1, "$"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1080
    const-string v1, "def_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1081
    const-string v1, "DomobSDK"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1082
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "load "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from resources."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".png"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1085
    iget-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->w:Lcn/domob/android/ads/b;

    iget-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    invoke-static {v0, v2, v1, v3}, Lcn/domob/android/ads/b;->b(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1086
    const-string v1, "DomobSDK"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1087
    const-string v1, "DomobSDK"

    const-string v1, "failed to load image from resources, try the backup."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_1
    const-string v1, "def"

    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    if-nez v1, :cond_2

    .line 1091
    const-string v0, "DomobSDK"

    const-string v0, "no defined backup default resources!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 1185
    :goto_0
    return-object v0

    .line 1093
    :cond_2
    iget-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->w:Lcn/domob/android/ads/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".png"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    invoke-static {v0, v2, v1, v3}, Lcn/domob/android/ads/b;->b(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1094
    const-string v0, "DomobSDK"

    const-string v0, "failed to load backup default resources!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 1095
    goto :goto_0

    .line 1099
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_7

    .line 1101
    const/4 v1, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1102
    if-nez v3, :cond_4

    .line 1103
    const-string v0, "DomobSDK"

    const-string v1, "failed to decode Bitmap!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 1104
    goto :goto_0

    .line 1109
    :cond_4
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->t:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "gif"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1110
    const-string v1, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1111
    const-string v1, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is gif"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_5
    const/4 v1, 0x1

    .line 1116
    :goto_1
    new-instance v2, Lcn/domob/android/ads/DomobImageView;

    iget-object v4, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v4}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcn/domob/android/ads/DomobImageView;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    :try_start_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/DomobImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1118
    const-string v1, "b"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 1120
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1175
    invoke-virtual {v2, v3, v0}, Lcn/domob/android/ads/DomobImageView;->setImageBitmap(Landroid/graphics/Bitmap;[B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 1185
    :goto_2
    invoke-virtual {v0}, Lcn/domob/android/ads/DomobImageView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    goto/16 :goto_0

    .line 1177
    :catch_0
    move-exception v0

    move-object v1, v5

    .line 1178
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    .line 1181
    :cond_6
    const-string v0, "DomobSDK"

    const-string v0, "can not create an imageView without $"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v0, v5

    goto :goto_2

    .line 1177
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_8
    move v1, v6

    goto :goto_1
.end method

.method private f()Z
    .locals 4

    .prologue
    const-string v3, "DomobSDK"

    .line 240
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 241
    :goto_0
    if-nez v0, :cond_0

    .line 242
    const-string v1, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "there are "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " connection left."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    return v0

    .line 240
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const-string v8, "DomobSDK"

    .line 252
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 254
    if-eqz v1, :cond_3

    .line 255
    const-string v0, "DomobSDK"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "DomobSDK"

    const-string v0, "do click action now."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 260
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 262
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 267
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 268
    const-string v5, "opentype"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 269
    const-string v6, "type"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    const-string v6, "DomobSDK"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 280
    const-string v6, "DomobSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "intent\'s opentype:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    const/high16 v6, 0x10000

    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 288
    :try_start_0
    const-string v6, "url"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 289
    if-eqz v5, :cond_2

    const-string v4, "inapp_fs"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 291
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v4, Lcn/domob/android/ads/DomobInApp;

    invoke-direct {v4}, Lcn/domob/android/ads/DomobInApp;-><init>()V

    .line 293
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 294
    iget-object v6, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    iget-object v6, v6, Lcn/domob/android/ads/DomobAdBuilder;->b:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v4, v1, v0, v5, v6}, Lcn/domob/android/ads/DomobInApp;->bulidClickedDialog(Landroid/content/Context;Ljava/lang/String;Landroid/app/ProgressDialog;Lcn/domob/android/ads/DomobAdView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 322
    :cond_3
    :goto_1
    return-void

    .line 295
    :cond_4
    const-string v4, "outapp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 297
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string v4, "DomobSDK"

    const-string v4, "error happened in doAction!"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 298
    :cond_5
    :try_start_1
    const-string v4, "inapp_dlg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v4, Lcn/domob/android/ads/DomobInApp;

    invoke-direct {v4}, Lcn/domob/android/ads/DomobInApp;-><init>()V

    .line 303
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 304
    iget-object v6, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    iget-object v6, v6, Lcn/domob/android/ads/DomobAdBuilder;->b:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v4, v6, v0, v5}, Lcn/domob/android/ads/DomobInApp;->bulidClickedImage(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Landroid/app/ProgressDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 310
    :cond_6
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 317
    :cond_7
    const-string v4, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "activity cannot be resolved, intent.getAction() =  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private h()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-string v0, "load "

    const-string v0, "DomobSDK"

    .line 717
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->v:Lorg/json/JSONObject;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 718
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 719
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    if-eqz v0, :cond_6

    .line 720
    iget-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    monitor-enter v3

    .line 721
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_5

    .line 722
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 723
    invoke-static {v4}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v5

    .line 725
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 726
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 730
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "u"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 731
    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    .line 732
    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 733
    if-lez v7, :cond_3

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 734
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 735
    const-string v8, "DomobSDK"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 736
    const-string v8, "DomobSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "image name:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_1
    iget-object v8, p0, Lcn/domob/android/ads/DomobAdEngine;->s:Ljava/util/Hashtable;

    invoke-virtual {v8, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 742
    iget-object v9, p0, Lcn/domob/android/ads/DomobAdEngine;->t:Ljava/util/Hashtable;

    invoke-virtual {v9, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string v8, "def_"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 745
    iget-object v8, p0, Lcn/domob/android/ads/DomobAdEngine;->w:Lcn/domob/android/ads/b;

    iget-object v8, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    invoke-static {v5, v0, v7, v8}, Lcn/domob/android/ads/b;->b(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 746
    const-string v0, "DomobSDK"

    const/4 v6, 0x3

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    const-string v0, "DomobSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "load "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from resources."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 752
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcn/domob/android/ads/DomobAdEngine;->w:Lcn/domob/android/ads/b;

    iget-object v8, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    invoke-static {v5, v0, v7, v8}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 753
    const-string v0, "DomobSDK"

    const/4 v6, 0x3

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    const-string v0, "DomobSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "load "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from cache."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 760
    :cond_3
    const-string v7, "DomobSDK"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 761
    const-string v7, "DomobSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "need download "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from server "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_4
    invoke-static {v4}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lcn/domob/android/ads/DomobAdManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v0, v7, v8, p0}, Lcn/domob/android/ads/DomobAdEngine$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;)Lcn/domob/android/ads/d;

    move-result-object v0

    .line 764
    invoke-virtual {v0, v4}, Lcn/domob/android/ads/d;->a(Landroid/content/Context;)V

    .line 766
    iget-object v6, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 720
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    :cond_6
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 777
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    monitor-enter v0

    .line 780
    :try_start_0
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 783
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/domob/android/ads/d;

    .line 788
    invoke-virtual {p0}, Lcn/domob/android/ads/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 778
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 792
    :cond_1
    return-void
.end method

.method private j()V
    .locals 24

    .prologue
    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    move-object v4, v0

    invoke-virtual {v4}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->getAdView()Lcn/domob/android/ads/DomobAdView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/DomobAdView;->isDataMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->v:Lorg/json/JSONObject;

    move-object v4, v0

    if-nez v4, :cond_2

    .line 800
    const-string v4, "DomobSDK"

    const-string v5, "can not build view without markup!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 804
    :cond_2
    const/4 v4, 0x1

    .line 806
    :try_start_0
    const-string v5, "DomobSDK"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 807
    const-string v5, "DomobSDK"

    const-string v6, "build view with markup."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->v:Lorg/json/JSONObject;

    move-object v5, v0

    const-string v6, "v"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 811
    if-eqz v5, :cond_1f

    .line 812
    new-instance v6, Lcn/domob/android/ads/DomobAdEngine$b;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEngine$b;-><init>(Lcn/domob/android/ads/DomobAdBuilder;Lcn/domob/android/ads/DomobAdEngine;)V

    .line 813
    const/4 v7, 0x0

    .line 815
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 816
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 820
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "t"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "f"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v12

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v12

    const-string v13, "l"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    const-string v11, "DomobSDK"

    const/4 v13, 0x3

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "DomobSDK"

    const-string v13, "build text view."

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object v11, v0

    if-eqz v11, :cond_20

    const-string v11, "fs"

    const/high16 v13, 0x41600000    # 14.0f

    invoke-static {v4, v11, v13}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v11

    const-string v13, "fa"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const/4 v15, 0x0

    sget-object v16, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eqz v13, :cond_22

    const/16 v17, 0x0

    move/from16 v23, v17

    move/from16 v17, v15

    move/from16 v15, v23

    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v18

    move v0, v15

    move/from16 v1, v18

    if-lt v0, v1, :cond_d

    invoke-static/range {v16 .. v17}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v13

    :goto_3
    const-string v15, "fc"

    const/16 v16, 0x0

    move-object v0, v4

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/domob/android/ads/DomobAdEngine;->h:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    if-eqz v15, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/domob/android/ads/DomobAdEngine;->k:Z

    move/from16 v17, v0

    if-nez v17, :cond_21

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v15

    long-to-int v15, v15

    :goto_4
    const-string v16, "dnv"

    const/16 v17, 0x1

    move-object v0, v4

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const-string v17, "mfs"

    const/high16 v18, 0x41400000    # 12.0f

    move-object v0, v4

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v17

    const-string v18, "at"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    const-string v10, "at"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_5
    if-eqz v14, :cond_16

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    :cond_6
    const/16 v18, 0x0

    move/from16 v23, v18

    move-object/from16 v18, v8

    move/from16 v8, v23

    :goto_5
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v19

    move v0, v8

    move/from16 v1, v19

    if-lt v0, v1, :cond_14

    move-object v8, v10

    move-object/from16 v10, v18

    :goto_6
    if-nez v10, :cond_1b

    if-nez v9, :cond_1b

    const-string v4, "DomobSDK"

    const-string v8, "failed to build view"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 822
    :goto_7
    if-nez v4, :cond_1e

    .line 823
    const-string v5, "DomobSDK"

    const-string v7, "failed to build view, callback!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    move-object v5, v0

    invoke-virtual {v5}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->failed()V

    .line 832
    :cond_7
    if-eqz v4, :cond_9

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object v5, v0

    if-eqz v5, :cond_8

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->v:Lorg/json/JSONObject;

    move-object v5, v0

    const-string v7, "tat"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object v7, v0

    invoke-virtual {v7, v5}, Lcn/domob/android/ads/DomobAdBuilder;->a(Ljava/lang/String;)V

    .line 838
    :cond_8
    sget-object v5, Lcn/domob/android/ads/DomobAdView;->a:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :cond_9
    :goto_8
    if-nez v4, :cond_a

    .line 850
    const-string v4, "DomobSDK"

    const-string v5, "failed to build view, clear all bmps and views!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcn/domob/android/ads/DomobAdEngine;->e()V

    .line 854
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    move-object v4, v0

    if-eqz v4, :cond_b

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 856
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    .line 859
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    move-object v4, v0

    if-eqz v4, :cond_c

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 861
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    .line 864
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->s:Ljava/util/Hashtable;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->s:Ljava/util/Hashtable;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 866
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/DomobAdEngine;->s:Ljava/util/Hashtable;

    goto/16 :goto_0

    .line 820
    :cond_d
    :try_start_1
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "DomobSDK"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_e

    const-string v19, "DomobSDK"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "fa:["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v19, "b"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    or-int/lit8 v17, v17, 0x1

    :cond_f
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :cond_10
    const-string v19, "i"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    or-int/lit8 v17, v17, 0x2

    goto :goto_9

    :cond_11
    const-string v19, "m"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    sget-object v16, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_9

    :cond_12
    const-string v19, "s"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    sget-object v16, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_9

    :cond_13
    const-string v19, "ss"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    sget-object v16, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_9

    :cond_14
    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcn/domob/android/ads/k;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static {}, Lcn/domob/android/ads/DomobAdBuilder;->d()F

    move-result v22

    invoke-direct/range {v20 .. v22}, Lcn/domob/android/ads/k;-><init>(Landroid/content/Context;F)V

    move/from16 v0, v16

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcn/domob/android/ads/k;->b:Z

    move-object/from16 v0, v20

    iget v0, v0, Lcn/domob/android/ads/k;->c:F

    move/from16 v21, v0

    mul-float v21, v21, v17

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcn/domob/android/ads/k;->a:F

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/k;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v20

    move v1, v15

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/k;->setTextColor(I)V

    const/16 v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/k;->setTextSize(IF)V

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/k;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual/range {v20 .. v20}, Lcn/domob/android/ads/k;->setSingleLine()V

    sget-object v19, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/k;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v9, :cond_15

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    :cond_15
    move-object/from16 v18, v20

    goto :goto_a

    :cond_16
    const/4 v8, 0x0

    move-object/from16 v23, v10

    move-object v10, v8

    move-object/from16 v8, v23

    goto/16 :goto_6

    :cond_17
    const-string v13, "bg"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    const-string v8, "DomobSDK"

    const/4 v11, 0x3

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_18

    const-string v8, "DomobSDK"

    const-string v11, "build background view."

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lorg/json/JSONObject;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v8

    move-object/from16 v23, v10

    move-object v10, v8

    move-object/from16 v8, v23

    goto/16 :goto_6

    :cond_19
    const-string v13, "i"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    const-string v8, "DomobSDK"

    const/4 v11, 0x3

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1a

    const-string v8, "DomobSDK"

    const-string v11, "build image view."

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcn/domob/android/ads/DomobAdEngine;->d(Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->y:Ljava/util/Vector;

    move-object v11, v0

    invoke-virtual {v11, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v10

    move-object v10, v8

    move-object/from16 v8, v23

    goto/16 :goto_6

    :cond_1b
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-direct {v11, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0x9

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v13, 0xa

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v12, v12, Landroid/graphics/Rect;->top:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v13, v12, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-static {v4, v11, v8}, Lcn/domob/android/ads/DomobAdEngine;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;)Lcn/domob/android/ads/DomobAdEngine$c;

    move-result-object v4

    iget-object v10, v6, Lcn/domob/android/ads/DomobAdEngine$b;->a:Ljava/util/Vector;

    invoke-virtual {v10, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    .line 844
    :catch_0
    move-exception v4

    .line 845
    const/4 v5, 0x0

    .line 846
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    goto/16 :goto_8

    .line 820
    :cond_1c
    if-eqz v10, :cond_1d

    :try_start_2
    invoke-static {v10, v11, v8}, Lcn/domob/android/ads/DomobAdEngine;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;Ljava/lang/String;)Lcn/domob/android/ads/DomobAdEngine$c;

    move-result-object v8

    iget-object v9, v6, Lcn/domob/android/ads/DomobAdEngine$b;->a:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v8, "cav"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object v4, v0

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    move-object v4, v0

    invoke-virtual {v4, v10}, Lcn/domob/android/ads/DomobAdBuilder;->a(Landroid/view/View;)V

    :cond_1d
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 829
    :cond_1e
    add-int/lit8 v7, v7, 0x1

    .line 830
    goto/16 :goto_1

    .line 840
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    move-object v5, v0

    if-eqz v5, :cond_9

    .line 841
    const-string v5, "DomobSDK"

    const-string v6, "can not build view because jason array of views is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    move-object v5, v0

    invoke-virtual {v5}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->failed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    :cond_20
    move-object/from16 v23, v10

    move-object v10, v8

    move-object/from16 v8, v23

    goto/16 :goto_6

    :cond_21
    move/from16 v15, v16

    goto/16 :goto_4

    :cond_22
    move-object/from16 v13, v16

    goto/16 :goto_3
.end method


# virtual methods
.method protected final a(I)I
    .locals 4

    .prologue
    .line 450
    iget v0, p0, Lcn/domob/android/ads/DomobAdEngine;->d:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    int-to-float v0, p1

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcn/domob/android/ads/DomobAdEngine;->d:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method protected final a()Lcn/domob/android/ads/DomobAdBuilder;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    return-object v0
.end method

.method protected final a(Lcn/domob/android/ads/DomobAdBuilder;)V
    .locals 1

    .prologue
    .line 458
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    .line 459
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->g:Lcn/domob/android/ads/DomobAdEngine$e;

    if-nez v0, :cond_0

    .line 460
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdEngine;->g:Lcn/domob/android/ads/DomobAdEngine$e;

    .line 462
    :cond_0
    return-void
.end method

.method public final a(Lcn/domob/android/ads/d;)V
    .locals 5

    .prologue
    const-string v3, "DomobSDK"

    .line 1432
    invoke-virtual {p1}, Lcn/domob/android/ads/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 1433
    invoke-virtual {p1}, Lcn/domob/android/ads/d;->d()[B

    move-result-object v1

    .line 1435
    if-eqz v1, :cond_4

    .line 1436
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->r:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v2, :cond_0

    .line 1440
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->s:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1442
    if-eqz v0, :cond_0

    .line 1443
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v2}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1444
    invoke-static {v2}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v2

    .line 1446
    const-string v3, "def_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v0, v1, v3, v4}, Lcn/domob/android/ads/DBHelper;->a(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;[BJ)V

    .line 1459
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 1460
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    monitor-enter v0

    .line 1461
    :try_start_0
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->q:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1460
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    :cond_1
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1466
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->j()V

    .line 1469
    :cond_2
    return-void

    .line 1449
    :cond_3
    iget-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->w:Lcn/domob/android/ads/b;

    invoke-static {v2, v0, v1}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;[B)V

    goto :goto_0

    .line 1454
    :cond_4
    const-string v1, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1455
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed reading asset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1460
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected final a(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const/16 v2, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x3

    const-string v8, "DomobSDK"

    .line 165
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->f:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->getAdView()Lcn/domob/android/ads/DomobAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->isDataMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/DomobAdEngine$d;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine$d;->a:Ljava/lang/String;

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 169
    if-ge v1, v2, :cond_0

    move v2, v1

    .line 174
    :cond_0
    sub-int v2, v1, v2

    .line 173
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->x:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdEngine;->e:Z

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdEngine;->e:Z

    if-eqz v0, :cond_5

    .line 183
    const-string v0, "DomobSDK"

    const-string v0, "already clicked, ignore it."

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdEngine;->g()V

    .line 231
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->g:Lcn/domob/android/ads/DomobAdEngine$e;

    if-eqz v0, :cond_4

    .line 232
    const-string v0, "DomobSDK"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    const-string v0, "DomobSDK"

    const-string v0, "show click animation."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->g:Lcn/domob/android/ads/DomobAdEngine$e;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobAdEngine$e;->f()V

    .line 237
    :cond_4
    return-void

    .line 185
    :cond_5
    const-string v0, "DomobSDK"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    const-string v0, "DomobSDK"

    const-string v0, "report clicked now."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_6
    iput-boolean v4, p0, Lcn/domob/android/ads/DomobAdEngine;->e:Z

    .line 190
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 192
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 193
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 198
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/DomobAdEngine$d;

    .line 204
    new-instance v4, Lcn/domob/android/ads/DomobAdEngine$a;

    invoke-direct {v4, p0}, Lcn/domob/android/ads/DomobAdEngine$a;-><init>(Lcn/domob/android/ads/DomobAdEngine;)V

    .line 217
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 218
    const-string v1, "DomobSDK"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 219
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click report:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_7
    iget-object v0, v0, Lcn/domob/android/ads/DomobAdEngine$d;->a:Ljava/lang/String;

    const-string v1, "click_tracking"

    invoke-static {v6}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcn/domob/android/ads/DomobAdManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcn/domob/android/ads/DomobAdEngine$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;Ljava/lang/String;)Lcn/domob/android/ads/d;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v6}, Lcn/domob/android/ads/d;->a(Landroid/content/Context;)V

    .line 225
    invoke-virtual {v0}, Lcn/domob/android/ads/d;->b()V

    goto :goto_0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcn/domob/android/ads/DomobAdEngine;->l:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcn/domob/android/ads/DomobAdEngine;->m:I

    return v0
.end method

.method protected final d()Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "DomobSDK"

    const-string v3, ","

    .line 495
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcn/domob/android/ads/DomobAdEngine;->l:I

    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v1

    iget v2, p0, Lcn/domob/android/ads/DomobAdEngine;->m:I

    invoke-virtual {p0, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    .line 499
    :cond_0
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v5, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRect :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected final e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "DomobSDK"

    .line 516
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const-string v0, "DomobSDK"

    const-string v0, "clear engine resources."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->p:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 522
    iput-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->p:Ljava/util/Vector;

    .line 525
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 527
    iput-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->o:Ljava/util/Vector;

    .line 530
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    if-eqz v0, :cond_5

    .line 531
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 533
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 538
    if-eqz v0, :cond_3

    .line 539
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 543
    :cond_4
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 544
    iput-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->n:Ljava/util/Vector;

    .line 548
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->y:Ljava/util/Vector;

    if-eqz v0, :cond_9

    .line 549
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->y:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 551
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 552
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 556
    if-eqz v0, :cond_6

    .line 558
    instance-of v2, v0, Lcn/domob/android/ads/giftool/GifView;

    if-eqz v2, :cond_7

    .line 559
    check-cast v0, Lcn/domob/android/ads/giftool/GifView;

    .line 560
    invoke-virtual {v0}, Lcn/domob/android/ads/giftool/GifView;->clear()V

    goto :goto_1

    .line 561
    :cond_7
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 563
    check-cast v0, Landroid/widget/ImageView;

    .line 565
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 570
    :cond_8
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine;->y:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 571
    iput-object v3, p0, Lcn/domob/android/ads/DomobAdEngine;->y:Ljava/util/Vector;

    .line 595
    :cond_9
    return-void
.end method
