.class final Lcn/domob/android/ads/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/domob/android/ads/DomobAdView;)I
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 56
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 57
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getAnimList()Ljava/util/ArrayList;

    move-result-object v2

    .line 58
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    :cond_0
    const/16 v0, 0x9

    if-ne v1, v0, :cond_2

    .line 64
    const/4 v0, 0x7

    .line 66
    :goto_1
    return v0

    .line 59
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static a(ILcn/domob/android/ads/DomobAdView;)Landroid/view/animation/Animation;
    .locals 9

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 46
    :pswitch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v3, p0, v0

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float v4, p0, p1

    new-instance v0, Lcn/domob/android/ads/o;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/ads/o;-><init>(FFFFFZ)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object p0, v0

    goto :goto_0

    .line 36
    :pswitch_2
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v3, p0, v0

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float v4, p0, p1

    new-instance v0, Lcn/domob/android/ads/o;

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/ads/o;-><init>(FFFFFZ)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object p0, v0

    goto :goto_0

    .line 38
    :pswitch_3
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 p1, 0x3f800000    # 1.0f

    const v0, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, p1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 40
    :pswitch_4
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const p1, 0x3e99999a    # 0.3f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x640

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    .line 42
    :pswitch_5
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object p0, v0

    goto/16 :goto_0

    .line 44
    :pswitch_6
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    if-nez p0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object p0, v0

    :goto_1
    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object p0, v0

    goto :goto_1

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method