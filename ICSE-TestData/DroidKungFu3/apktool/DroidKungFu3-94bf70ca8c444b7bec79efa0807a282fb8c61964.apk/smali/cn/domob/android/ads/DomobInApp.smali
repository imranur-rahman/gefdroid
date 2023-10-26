.class public Lcn/domob/android/ads/DomobInApp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobInApp$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Landroid/app/Dialog;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/animation/Animation;

.field private l:Landroid/os/Handler;

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:Landroid/widget/ImageButton;

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/view/animation/RotateAnimation;

.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lcn/domob/android/ads/DomobInApp;->a:Landroid/app/ProgressDialog;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->c:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->l:Landroid/os/Handler;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/ads/DomobInApp;->m:I

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    .line 43
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobInApp;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v5, "asset stream close error"

    const-string v4, "DomobSDK"

    .line 578
    .line 581
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 583
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 584
    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 585
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 594
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v2

    .line 602
    :goto_0
    return-object v0

    .line 589
    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_1
    :try_start_3
    const-string v1, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 594
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v6

    goto :goto_0

    .line 597
    :catch_1
    move-exception v0

    const-string v0, "DomobSDK"

    const-string v0, "asset stream close error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_0

    .line 592
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 594
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 601
    :goto_3
    throw v0

    .line 597
    :catch_2
    move-exception v1

    const-string v1, "DomobSDK"

    const-string v1, "asset stream close error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v0, "DomobSDK"

    const-string v0, "asset stream close error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0

    .line 592
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 589
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private a()Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/high16 v5, 0x41f00000    # 30.0f

    .line 645
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 649
    iget v1, p0, Lcn/domob/android/ads/DomobInApp;->m:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 651
    const-string v1, "close.png"

    .line 652
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 659
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    new-instance v2, Lcn/domob/android/ads/DomobInApp$7;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobInApp$7;-><init>(Lcn/domob/android/ads/DomobInApp;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    invoke-direct {p0, v1, v0}, Lcn/domob/android/ads/DomobInApp;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    .line 656
    :cond_0
    const-string v1, "exit.png"

    .line 657
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/high16 v4, 0x41f00000    # 30.0f

    .line 608
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 610
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-static {p1, v1}, Lcn/domob/android/ads/DomobInApp;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 612
    iget v1, p0, Lcn/domob/android/ads/DomobInApp;->m:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 614
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 620
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 623
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 622
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 625
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 626
    return-object v0

    .line 618
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 313
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 314
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    move v2, v7

    move-object v3, v0

    move v0, v6

    .line 316
    :goto_0
    if-lt v0, v1, :cond_2

    .line 327
    :cond_0
    const-string v0, "http://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move-object v0, v3

    .line 335
    :goto_1
    return-object v0

    .line 317
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 318
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 319
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    and-int/2addr v2, v4

    .line 322
    sub-int v4, v1, v7

    if-ne v0, v4, :cond_3

    if-nez v2, :cond_3

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 323
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 316
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_4
    const-string v0, "http:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "https:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 330
    :cond_5
    const-string v0, "http:/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "https:/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 331
    :cond_6
    const-string v0, "/"

    const-string v1, "//"

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 332
    :cond_7
    const-string v0, ":"

    const-string v1, "://"

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v3

    goto :goto_1
.end method

.method private static a(II)Z
    .locals 4

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x1

    .line 299
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    .line 301
    ushr-int v1, p0, v0

    rem-int/lit8 v1, v1, 0x2

    .line 302
    ushr-int v0, v3, v0

    rem-int/lit8 v0, v0, 0x2

    .line 303
    if-ne v1, v0, :cond_0

    move v0, v2

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcn/domob/android/ads/DomobInApp;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->m:I

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 807
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->q:Landroid/widget/ImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "preview.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    :try_start_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->r:Landroid/widget/ImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "next.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 840
    :goto_1
    return-void

    .line 811
    :catch_0
    move-exception v0

    .line 812
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 818
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->q:Landroid/widget/ImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "preview_off.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 819
    :catch_1
    move-exception v0

    .line 820
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 828
    :catch_2
    move-exception v0

    .line 829
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 835
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->r:Landroid/widget/ImageButton;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "next_off.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 836
    :catch_3
    move-exception v0

    .line 837
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic c(Lcn/domob/android/ads/DomobInApp;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/ads/DomobInApp;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->u:I

    return v0
.end method

.method static synthetic e(Lcn/domob/android/ads/DomobInApp;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/android/ads/DomobInApp;)Landroid/view/animation/RotateAnimation;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->t:Landroid/view/animation/RotateAnimation;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/android/ads/DomobInApp;)V
    .locals 0

    .prologue
    .line 805
    invoke-direct {p0}, Lcn/domob/android/ads/DomobInApp;->b()V

    return-void
.end method

.method static synthetic h(Lcn/domob/android/ads/DomobInApp;)V
    .locals 9

    .prologue
    .line 672
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->m:I

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->i:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->i:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcn/domob/android/ads/DomobInApp;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->k:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->k:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->g:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcn/domob/android/ads/DomobInApp;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic i(Lcn/domob/android/ads/DomobInApp;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcn/domob/android/ads/DomobInApp;)V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    invoke-direct {p0}, Lcn/domob/android/ads/DomobInApp;->b()V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcn/domob/android/ads/DomobInApp;)V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    invoke-direct {p0}, Lcn/domob/android/ads/DomobInApp;->b()V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcn/domob/android/ads/DomobInApp;)V
    .locals 3

    .prologue
    .line 765
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic m(Lcn/domob/android/ads/DomobInApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcn/domob/android/ads/DomobInApp;)V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bulidClickedDialog(Landroid/content/Context;Ljava/lang/String;Landroid/app/ProgressDialog;Lcn/domob/android/ads/DomobAdView;)Landroid/app/Dialog;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "pd"    # Landroid/app/ProgressDialog;
    .param p4, "adview"    # Lcn/domob/android/ads/DomobAdView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    .line 83
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/ads/DomobAdManager;->getDeviceDensity(Landroid/content/Context;)F

    .line 84
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-static {v1, p4}, Lcn/domob/android/ads/DomobAdManager;->getCurrentDensity(Landroid/content/Context;Landroid/view/View;)F

    move-result v1

    iput v1, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    .line 87
    invoke-static {p2}, Lcn/domob/android/ads/DomobInApp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/DomobInApp;->c:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcn/domob/android/ads/DomobInApp;->a:Landroid/app/ProgressDialog;

    .line 89
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    .line 90
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 91
    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v8, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    const/16 v1, 0xd

    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/android/ads/DomobInApp;->s:Landroid/widget/ImageView;

    .line 96
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->s:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "loading.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->s:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v1, p0, Lcn/domob/android/ads/DomobInApp;->t:Landroid/view/animation/RotateAnimation;

    .line 99
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->t:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 100
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->t:Landroid/view/animation/RotateAnimation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 101
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->t:Landroid/view/animation/RotateAnimation;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 103
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    iget-object v3, p0, Lcn/domob/android/ads/DomobInApp;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->s:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->s:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/domob/android/ads/DomobInApp;->t:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    new-instance v3, Lcn/domob/android/ads/DomobInApp$4;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/DomobInApp$4;-><init>(Lcn/domob/android/ads/DomobInApp;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    new-instance v3, Lcn/domob/android/ads/DomobInApp$5;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/DomobInApp$5;-><init>(Lcn/domob/android/ads/DomobInApp;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    new-instance v3, Lcn/domob/android/ads/DomobInApp$6;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/DomobInApp$6;-><init>(Lcn/domob/android/ads/DomobInApp;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v3, 0x42200000    # 40.0f

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 104
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->s:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 107
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 108
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 109
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "banner.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42200000    # 40.0f

    iget v5, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 114
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/domob/android/ads/DomobInApp;->q:Landroid/widget/ImageButton;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    iget v5, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x42200000    # 40.0f

    iget v6, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcn/domob/android/ads/DomobInApp;->q:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "preview.png"

    :goto_0
    iget-object v4, p0, Lcn/domob/android/ads/DomobInApp;->q:Landroid/widget/ImageButton;

    new-instance v5, Lcn/domob/android/ads/DomobInApp$8;

    invoke-direct {v5, p0}, Lcn/domob/android/ads/DomobInApp$8;-><init>(Lcn/domob/android/ads/DomobInApp;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcn/domob/android/ads/DomobInApp;->q:Landroid/widget/ImageButton;

    invoke-direct {p0, v3, v4}, Lcn/domob/android/ads/DomobInApp;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/domob/android/ads/DomobInApp;->r:Landroid/widget/ImageButton;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    iget v5, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x42200000    # 40.0f

    iget v6, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcn/domob/android/ads/DomobInApp;->r:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcn/domob/android/ads/DomobInApp;->r:Landroid/widget/ImageButton;

    new-instance v4, Lcn/domob/android/ads/DomobInApp$9;

    invoke-direct {v4, p0}, Lcn/domob/android/ads/DomobInApp$9;-><init>(Lcn/domob/android/ads/DomobInApp;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "next_off.png"

    iget-object v4, p0, Lcn/domob/android/ads/DomobInApp;->r:Landroid/widget/ImageButton;

    invoke-direct {p0, v3, v4}, Lcn/domob/android/ads/DomobInApp;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42200000    # 40.0f

    iget v6, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x42200000    # 40.0f

    iget v7, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcn/domob/android/ads/DomobInApp$2;

    invoke-direct {v4, p0}, Lcn/domob/android/ads/DomobInApp$2;-><init>(Lcn/domob/android/ads/DomobInApp;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v4, "refresh.png"

    invoke-direct {p0, v4, v3}, Lcn/domob/android/ads/DomobInApp;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42200000    # 40.0f

    iget v6, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x42200000    # 40.0f

    iget v7, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcn/domob/android/ads/DomobInApp$10;

    invoke-direct {v4, p0}, Lcn/domob/android/ads/DomobInApp$10;-><init>(Lcn/domob/android/ads/DomobInApp;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v4, "out.png"

    invoke-direct {p0, v4, v3}, Lcn/domob/android/ads/DomobInApp;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    invoke-direct {p0}, Lcn/domob/android/ads/DomobInApp;->a()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    iget-object v3, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const/4 v1, 0x0

    .line 124
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 125
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object p2, v0

    .end local p2    # "url":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 128
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcn/domob/android/ads/DomobInApp;->a(II)Z

    move-result v1

    .line 131
    :cond_0
    if-eqz v1, :cond_2

    .line 132
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x1030011

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    .line 138
    :goto_1
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v1, p0, Lcn/domob/android/ads/DomobInApp;->h:Landroid/view/animation/Animation;

    .line 139
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->h:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 140
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->h:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 143
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 144
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 145
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 146
    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 147
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 148
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 149
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 150
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    return-object v1

    .line 114
    .restart local p2    # "url":Ljava/lang/String;
    :cond_1
    const-string v3, "preview_off.png"

    goto/16 :goto_0

    .line 134
    .end local p2    # "url":Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x1030010

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    goto :goto_1
.end method

.method protected bulidClickedImage(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Landroid/app/ProgressDialog;)Landroid/app/Dialog;
    .locals 12
    .param p1, "adview"    # Lcn/domob/android/ads/DomobAdView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "pd"    # Landroid/app/ProgressDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x43960000    # 300.0f

    const/4 v9, -0x2

    const/16 v8, 0x14

    .line 154
    iput v3, p0, Lcn/domob/android/ads/DomobInApp;->m:I

    .line 155
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    .line 156
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->getDeviceDensity(Landroid/content/Context;)F

    .line 157
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/domob/android/ads/DomobAdManager;->getCurrentDensity(Landroid/content/Context;Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    .line 160
    invoke-static {p2}, Lcn/domob/android/ads/DomobInApp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->c:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Lcn/domob/android/ads/DomobInApp;->a:Landroid/app/ProgressDialog;

    .line 163
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/domob/android/ads/DomobAdManager;->getScreenWidth(Landroid/content/Context;Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/DomobInApp;->n:I

    .line 164
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/domob/android/ads/DomobAdManager;->getScreenHeight(Landroid/content/Context;Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    .line 166
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 167
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 169
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 170
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v11}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 172
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->g:Landroid/widget/RelativeLayout;

    .line 174
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    .line 175
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 177
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->s:Landroid/widget/ImageView;

    .line 180
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->s:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "loading.png"

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->s:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->t:Landroid/view/animation/RotateAnimation;

    .line 183
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->t:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->t:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 185
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->t:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 187
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->s:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->t:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    new-instance v2, Lcn/domob/android/ads/DomobInApp$1;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobInApp$1;-><init>(Lcn/domob/android/ads/DomobInApp;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    new-instance v2, Lcn/domob/android/ads/DomobInApp$3;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/DomobInApp$3;-><init>(Lcn/domob/android/ads/DomobInApp;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "v"

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    iget v2, p0, Lcn/domob/android/ads/DomobInApp;->n:I

    div-int/2addr v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->n:I

    sub-int/2addr v0, v8

    int-to-float v0, v0

    iget v2, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v10

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v10

    float-to-int v2, v2

    const/high16 v4, 0x43c80000    # 400.0f

    iget v5, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v2, v11}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 192
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    .line 196
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 199
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x400

    invoke-static {v0, v2}, Lcn/domob/android/ads/DomobInApp;->a(II)Z

    move-result v0

    .line 202
    :goto_1
    if-eqz v0, :cond_7

    .line 203
    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    const v4, 0x1030011

    invoke-direct {v0, v2, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    .line 208
    :goto_2
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 209
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 210
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/DomobInApp;->u:I

    .line 211
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "v"

    if-ne v0, v4, :cond_b

    .line 213
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 214
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->n:I

    div-int/2addr v0, v3

    if-lez v0, :cond_9

    .line 216
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->n:I

    sub-int/2addr v0, v8

    const/16 v3, 0x12c

    if-lt v0, v3, :cond_8

    .line 218
    const/high16 v0, 0x43a00000    # 320.0f

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 219
    const/high16 v0, 0x43d20000    # 420.0f

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 271
    :goto_3
    const v0, 0x3f333333    # 0.7f

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 272
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 273
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 275
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->g:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->g:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x64

    invoke-static {v3, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 278
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 279
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 280
    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->g:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/domob/android/ads/DomobInApp;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->g:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/domob/android/ads/DomobInApp;->a()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 284
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->j:Landroid/view/animation/Animation;

    .line 285
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->j:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 286
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 288
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    return-object v0

    .line 187
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/DomobInApp;->n:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->n:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    iget v5, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    iget v5, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v0, v8

    const/16 v2, 0x190

    if-lt v0, v2, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v10

    float-to-int v2, v2

    const/high16 v4, 0x43c80000    # 400.0f

    iget v5, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    iget v5, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v11}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->n:I

    iget v2, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    div-int/2addr v0, v2

    if-lez v0, :cond_5

    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v0, v8

    int-to-float v0, v0

    iget v2, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v10

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x43c80000    # 400.0f

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v10

    float-to-int v4, v4

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    iget v5, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v0, v8

    const/16 v2, 0x190

    if-lt v0, v2, :cond_6

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v10

    float-to-int v2, v2

    const/high16 v4, 0x43c80000    # 400.0f

    iget v5, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v4, v8

    int-to-float v4, v4

    iget v5, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_0

    .line 205
    :cond_7
    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    const v4, 0x1030010

    invoke-direct {v0, v2, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobInApp;->e:Landroid/app/Dialog;

    goto/16 :goto_2

    .line 223
    :cond_8
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->n:I

    sub-int/2addr v0, v8

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 224
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->n:I

    sub-int/2addr v0, v8

    add-int/lit8 v0, v0, 0x14

    shl-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_3

    .line 229
    :cond_9
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v0, v8

    const/16 v3, 0x190

    if-lt v0, v3, :cond_a

    .line 231
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 232
    const/high16 v0, 0x43c80000    # 400.0f

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_3

    .line 236
    :cond_a
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v0, v8

    int-to-float v0, v0

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 237
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_3

    .line 243
    :cond_b
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v11}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 244
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->n:I

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    div-int/2addr v0, v3

    if-lez v0, :cond_d

    .line 246
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v0, v8

    const/16 v3, 0x190

    if-lt v0, v3, :cond_c

    .line 248
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 249
    const/high16 v0, 0x43c80000    # 400.0f

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_3

    .line 253
    :cond_c
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v0, v8

    shl-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 254
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v0, v8

    int-to-float v0, v0

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_3

    .line 259
    :cond_d
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v0, v8

    const/16 v3, 0x190

    if-lt v0, v3, :cond_e

    .line 261
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 262
    const/high16 v0, 0x43c80000    # 400.0f

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_3

    .line 266
    :cond_e
    iget v0, p0, Lcn/domob/android/ads/DomobInApp;->o:I

    sub-int/2addr v0, v8

    int-to-float v0, v0

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 267
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget v3, p0, Lcn/domob/android/ads/DomobInApp;->p:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_3

    :cond_f
    move v0, v11

    goto/16 :goto_1
.end method
