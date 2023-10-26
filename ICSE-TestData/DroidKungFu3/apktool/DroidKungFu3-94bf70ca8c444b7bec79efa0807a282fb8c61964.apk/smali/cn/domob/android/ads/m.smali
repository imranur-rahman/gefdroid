.class final Lcn/domob/android/ads/m;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/m$a;
    }
.end annotation


# static fields
.field private static c:I

.field private static d:I


# instance fields
.field private a:[[Landroid/widget/ImageView;

.field private b:Landroid/os/Handler;

.field private e:Lcn/domob/android/ads/DomobAdView;

.field private f:Lcn/domob/android/ads/DomobAdBuilder;

.field private g:Lcn/domob/android/ads/DomobAdBuilder;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 17
    const/4 v0, 0x3

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/domob/android/ads/m;->a:[[Landroid/widget/ImageView;

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/m;->b:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/m;)Lcn/domob/android/ads/DomobAdView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/domob/android/ads/m;->e:Lcn/domob/android/ads/DomobAdView;

    return-object v0
.end method

.method private a(Landroid/view/animation/TranslateAnimation;II)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x7d0

    .line 108
    invoke-virtual {p1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 109
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 110
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 111
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 112
    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 113
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 114
    iget-object v0, p0, Lcn/domob/android/ads/m;->a:[[Landroid/widget/ImageView;

    aget-object v0, v0, p2

    aget-object v0, v0, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 115
    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/m;)[[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcn/domob/android/ads/m;->a:[[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/m;)Lcn/domob/android/ads/DomobAdBuilder;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/domob/android/ads/m;->f:Lcn/domob/android/ads/DomobAdBuilder;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/ads/m;)Lcn/domob/android/ads/DomobAdBuilder;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/domob/android/ads/m;->g:Lcn/domob/android/ads/DomobAdBuilder;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;Lcn/domob/android/ads/DomobAdBuilder;)V
    .locals 18

    .prologue
    .line 30
    invoke-virtual/range {p3 .. p3}, Lcn/domob/android/ads/DomobAdBuilder;->getWidth()I

    move-result v4

    sput v4, Lcn/domob/android/ads/m;->c:I

    .line 31
    invoke-virtual/range {p3 .. p3}, Lcn/domob/android/ads/DomobAdBuilder;->getHeight()I

    move-result v4

    sput v4, Lcn/domob/android/ads/m;->d:I

    .line 33
    invoke-virtual/range {p3 .. p3}, Lcn/domob/android/ads/DomobAdBuilder;->getWidth()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcn/domob/android/ads/DomobAdBuilder;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 34
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdView;->draw(Landroid/graphics/Canvas;)V

    .line 36
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/m;->e:Lcn/domob/android/ads/DomobAdView;

    .line 37
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/m;->f:Lcn/domob/android/ads/DomobAdBuilder;

    .line 38
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/domob/android/ads/m;->g:Lcn/domob/android/ads/DomobAdBuilder;

    .line 40
    const/4 v5, 0x0

    .line 41
    const v6, 0x3c34eb12

    .line 42
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 44
    const/4 v8, 0x0

    :goto_0
    sget v9, Lcn/domob/android/ads/m;->d:I

    if-lt v8, v9, :cond_0

    .line 51
    const/4 v4, 0x0

    move/from16 v17, v6

    move v6, v4

    move/from16 v4, v17

    :goto_1
    const/4 v8, 0x3

    if-lt v6, v8, :cond_2

    .line 78
    const/4 v4, 0x0

    move v13, v4

    :goto_2
    const/4 v4, 0x3

    if-lt v13, v4, :cond_7

    .line 103
    new-instance v4, Lcn/domob/android/ads/m$a;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/domob/android/ads/m$a;-><init>(Lcn/domob/android/ads/m;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/m;->b:Landroid/os/Handler;

    move-object v5, v0

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    return-void

    .line 45
    :cond_0
    const/4 v9, 0x0

    :goto_3
    sget v10, Lcn/domob/android/ads/m;->c:I

    if-lt v9, v10, :cond_1

    .line 44
    sget v9, Lcn/domob/android/ads/m;->d:I

    div-int/lit8 v9, v9, 0x3

    add-int/2addr v8, v9

    goto :goto_0

    .line 47
    :cond_1
    sget v10, Lcn/domob/android/ads/m;->c:I

    div-int/lit8 v10, v10, 0x10

    sget v11, Lcn/domob/android/ads/m;->d:I

    div-int/lit8 v11, v11, 0x3

    invoke-static {v4, v9, v8, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget v10, Lcn/domob/android/ads/m;->c:I

    div-int/lit8 v10, v10, 0x10

    add-int/2addr v9, v10

    goto :goto_3

    .line 52
    :cond_2
    const/4 v8, 0x0

    :goto_4
    const/16 v9, 0x10

    if-lt v8, v9, :cond_3

    .line 51
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 54
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/m;->a:[[Landroid/widget/ImageView;

    move-object v9, v0

    aget-object v9, v9, v6

    new-instance v10, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcn/domob/android/ads/DomobAdView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v10, v9, v8

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/m;->a:[[Landroid/widget/ImageView;

    move-object v9, v0

    aget-object v9, v9, v6

    aget-object v9, v9, v8

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    move-object v0, v9

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/m;->a:[[Landroid/widget/ImageView;

    move-object v9, v0

    aget-object v9, v9, v6

    aget-object v9, v9, v8

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 58
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v11, -0x2

    invoke-direct {v4, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 60
    if-nez v6, :cond_4

    if-eqz v8, :cond_5

    .line 64
    :cond_4
    if-nez v8, :cond_6

    .line 66
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/m;->a:[[Landroid/widget/ImageView;

    move-object v11, v0

    const/4 v12, 0x1

    sub-int v12, v6, v12

    aget-object v11, v11, v12

    aget-object v11, v11, v8

    invoke-virtual {v11}, Landroid/widget/ImageView;->getId()I

    move-result v11

    invoke-virtual {v4, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 74
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/m;->a:[[Landroid/widget/ImageView;

    move-object v9, v0

    aget-object v9, v9, v6

    aget-object v9, v9, v8

    move-object/from16 v0, p1

    move-object v1, v9

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/DomobAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    add-int/lit8 v4, v5, 0x1

    .line 52
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v4

    move v4, v10

    goto :goto_4

    .line 70
    :cond_6
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/m;->a:[[Landroid/widget/ImageView;

    move-object v11, v0

    aget-object v11, v11, v6

    const/4 v12, 0x1

    sub-int v12, v8, v12

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/widget/ImageView;->getId()I

    move-result v11

    invoke-virtual {v4, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 71
    const/16 v9, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/domob/android/ads/m;->a:[[Landroid/widget/ImageView;

    move-object v11, v0

    aget-object v11, v11, v6

    const/4 v12, 0x1

    sub-int v12, v8, v12

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/widget/ImageView;->getId()I

    move-result v11

    invoke-virtual {v4, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_5

    .line 79
    :cond_7
    const/4 v4, 0x0

    move v14, v4

    :goto_6
    const/16 v4, 0x10

    if-lt v14, v4, :cond_8

    .line 78
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto/16 :goto_2

    .line 81
    :cond_8
    if-gtz v13, :cond_9

    const/16 v4, 0x8

    if-ge v14, v4, :cond_9

    .line 84
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    double-to-float v9, v9

    add-float/2addr v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, -0x40800000    # -1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    double-to-float v15, v15

    add-float/2addr v12, v15

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 85
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcn/domob/android/ads/m;->a(Landroid/view/animation/TranslateAnimation;II)V

    .line 87
    :cond_9
    if-gtz v13, :cond_a

    const/16 v4, 0x8

    if-lt v14, v4, :cond_a

    .line 89
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    double-to-float v9, v9

    sub-float/2addr v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, -0x40800000    # -1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    double-to-float v15, v15

    add-float/2addr v12, v15

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 90
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcn/domob/android/ads/m;->a(Landroid/view/animation/TranslateAnimation;II)V

    .line 92
    :cond_a
    if-lez v13, :cond_b

    const/16 v4, 0x8

    if-ge v14, v4, :cond_b

    .line 94
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    double-to-float v9, v9

    add-float/2addr v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    double-to-float v15, v15

    sub-float/2addr v12, v15

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 95
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcn/domob/android/ads/m;->a(Landroid/view/animation/TranslateAnimation;II)V

    .line 97
    :cond_b
    if-lez v13, :cond_c

    const/16 v4, 0x8

    if-lt v14, v4, :cond_c

    .line 99
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    double-to-float v9, v9

    sub-float/2addr v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v15

    double-to-float v15, v15

    sub-float/2addr v12, v15

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 100
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v13

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcn/domob/android/ads/m;->a(Landroid/view/animation/TranslateAnimation;II)V

    .line 79
    :cond_c
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    goto/16 :goto_6
.end method
