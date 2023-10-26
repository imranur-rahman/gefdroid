.class Lcom/casee/adsdk/AdViewGroup;
.super Landroid/widget/RelativeLayout;
.source "AdViewGroup.java"


# static fields
.field static final AD_TEXT_TYPEFACE:Landroid/graphics/Typeface;

.field static final CASEE_TEXT_FONT_SIZE:F = 10.0f

.field static final CASEE_TEXT_TYPEFACE:Landroid/graphics/Typeface;

.field static final CASEE_TEXT_VIEW_ID:I = 0x3

.field private static final GRADIENT_BACKGROUND_COLOR:I = -0x1

.field private static final GRADIENT_STOP:D = 0.5

.field private static final GRADIENT_TOP_ALPHA:I = 0x7f

.field static final ICON_VIEW_ID:I = 0x1

.field static final TESTING_TEXT_VIEW_ID:I = 0x4

.field static final TEXT_VIEW_ID:I = 0x2


# instance fields
.field private ad:Lcom/casee/adsdk/Ad;

.field private backgroundColor:I

.field private caseeRecommendView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private defaultBackground:Landroid/graphics/drawable/BitmapDrawable;

.field private iconView:Landroid/widget/ImageView;

.field private isTesting:Z

.field private isTestingView:Landroid/widget/TextView;

.field private mScale:F

.field private textColor:I

.field private textFontSize:F

.field private textView:Landroid/widget/TextView;

.field private vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/casee/adsdk/AdViewGroup;->AD_TEXT_TYPEFACE:Landroid/graphics/Typeface;

    .line 50
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/casee/adsdk/AdViewGroup;->CASEE_TEXT_TYPEFACE:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/casee/adsdk/Ad;Lcom/casee/adsdk/CaseeAdView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ad"    # Lcom/casee/adsdk/Ad;
    .param p3, "cav"    # Lcom/casee/adsdk/CaseeAdView;

    .prologue
    const/4 v1, 0x0

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/high16 v0, 0x41500000    # 13.0f

    iput v0, p0, Lcom/casee/adsdk/AdViewGroup;->textFontSize:F

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/casee/adsdk/AdViewGroup;->textColor:I

    .line 68
    iput-boolean v1, p0, Lcom/casee/adsdk/AdViewGroup;->vertical:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/casee/adsdk/AdViewGroup;->isTesting:Z

    .line 70
    invoke-virtual {p0}, Lcom/casee/adsdk/AdViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    .line 74
    iput-object p2, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    .line 75
    iput-object p1, p0, Lcom/casee/adsdk/AdViewGroup;->context:Landroid/content/Context;

    .line 76
    invoke-virtual {p3}, Lcom/casee/adsdk/CaseeAdView;->isVertical()Z

    move-result v0

    iput-boolean v0, p0, Lcom/casee/adsdk/AdViewGroup;->vertical:Z

    .line 77
    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->isTesting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/casee/adsdk/AdViewGroup;->isTesting:Z

    .line 78
    invoke-virtual {p3}, Lcom/casee/adsdk/CaseeAdView;->getTextColor()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/AdViewGroup;->textColor:I

    .line 79
    invoke-virtual {p3}, Lcom/casee/adsdk/CaseeAdView;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/AdViewGroup;->backgroundColor:I

    .line 80
    invoke-virtual {p3}, Lcom/casee/adsdk/CaseeAdView;->getTextFontSize()F

    move-result v0

    iput v0, p0, Lcom/casee/adsdk/AdViewGroup;->textFontSize:F

    .line 81
    invoke-direct {p0}, Lcom/casee/adsdk/AdViewGroup;->init()V

    .line 82
    return-void
.end method

.method private static drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 12
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "backgroundColor"    # I
    .param p3, "color"    # I

    .prologue
    const/4 v11, 0x1

    .line 367
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 368
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 370
    invoke-virtual {p0, p1, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 375
    const/16 v7, 0x7f

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 377
    .local v6, "topColor":I
    const/4 v7, 0x2

    new-array v0, v7, [I

    const/4 v7, 0x0

    aput v6, v0, v7

    aput p3, v0, v11

    .line 378
    .local v0, "gradientColors":[I
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v4, v7, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 381
    .local v4, "shine":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iget v8, p1, Landroid/graphics/Rect;->top:I

    add-int v5, v7, v8

    .line 382
    .local v5, "stop":I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v7, v8, v9, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 383
    invoke-virtual {v4, p0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 388
    new-instance v3, Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v7, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 389
    .local v3, "shadowRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 390
    .local v2, "shadowPaint":Landroid/graphics/Paint;
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 392
    return-void
.end method

.method private generateBackgroundDrawable(Landroid/graphics/Rect;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "backgroundColor"    # I
    .param p3, "color"    # I

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/casee/adsdk/AdViewGroup;->generateBackgroundDrawable(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private generateBackgroundDrawable(Landroid/graphics/Rect;IIZ)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "backgroundColor"    # I
    .param p3, "color"    # I
    .param p4, "addFocusRing"    # Z

    .prologue
    .line 354
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 356
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 357
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-static {v1, p1, p2, p3}, Lcom/casee/adsdk/AdViewGroup;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 358
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    return-object v3

    .line 359
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 360
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 12

    .prologue
    .line 99
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    if-nez v7, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->setClickable(Z)V

    .line 103
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->setFocusable(Z)V

    .line 104
    new-instance v7, Lcom/casee/adsdk/AdClickListener;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    invoke-direct {v7, v8, v9}, Lcom/casee/adsdk/AdClickListener;-><init>(Landroid/content/Context;Lcom/casee/adsdk/Ad;)V

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-boolean v7, p0, Lcom/casee/adsdk/AdViewGroup;->vertical:Z

    if-eqz v7, :cond_5

    .line 108
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v7}, Lcom/casee/adsdk/Ad;->getType()I

    move-result v7

    if-nez v7, :cond_3

    .line 110
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v7}, Lcom/casee/adsdk/Ad;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 111
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->iconView:Landroid/widget/ImageView;

    .line 112
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x42180000    # 38.0f

    iget v8, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, 0x42180000    # 38.0f

    iget v9, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    .local v4, "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v7, 0x40a00000    # 5.0f

    iget v8, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/high16 v10, 0x40a00000    # 5.0f

    iget v11, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->iconView:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 119
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    .line 121
    iget v7, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->getCaseeRecommendView(F)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    .line 122
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 125
    .local v1, "cvParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 126
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    .line 130
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    .line 131
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v8}, Lcom/casee/adsdk/Ad;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/casee/adsdk/AdViewGroup;->getVerticalText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setId(I)V

    .line 133
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    iget v8, p0, Lcom/casee/adsdk/AdViewGroup;->textFontSize:F

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 134
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    iget v8, p0, Lcom/casee/adsdk/AdViewGroup;->textColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    sget-object v8, Lcom/casee/adsdk/AdViewGroup;->AD_TEXT_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v6, "tvParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v7, 0x42180000    # 38.0f

    iget v8, p0, Lcom/casee/adsdk/AdViewGroup;->textFontSize:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x5

    int-to-float v7, v7

    iget v8, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 140
    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 141
    const/4 v7, 0x2

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 142
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    .line 146
    iget-boolean v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTesting:Z

    if-nez v7, :cond_2

    const-string v7, "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->getSiteId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 147
    :cond_2
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    .line 148
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 149
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    iget-object v8, v8, Lcom/casee/adsdk/Ad;->testingText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setId(I)V

    .line 151
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v5, "tParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 157
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    iget v8, p0, Lcom/casee/adsdk/AdViewGroup;->textColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 163
    .end local v1    # "cvParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "tParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "tvParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v7}, Lcom/casee/adsdk/Ad;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 164
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 165
    .local v3, "iconView":Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 167
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 170
    .restart local v4    # "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 171
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-virtual {p0, v3}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    .line 175
    iget v7, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->getCaseeRecommendView(F)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    .line 176
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    .restart local v1    # "cvParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 180
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    .line 184
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 185
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v7, 0x1b58

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 186
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 187
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 188
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 189
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    iget-boolean v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTesting:Z

    if-nez v7, :cond_4

    const-string v7, "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->getSiteId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 192
    :cond_4
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    .line 193
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    iget-object v8, v8, Lcom/casee/adsdk/Ad;->testingText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setId(I)V

    .line 196
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 197
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 200
    .restart local v5    # "tParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 201
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 203
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 209
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "cvParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconView":Landroid/widget/ImageView;
    .end local v4    # "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "tParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v7}, Lcom/casee/adsdk/Ad;->getType()I

    move-result v7

    if-nez v7, :cond_7

    .line 211
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v7}, Lcom/casee/adsdk/Ad;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 212
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->iconView:Landroid/widget/ImageView;

    .line 213
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x42180000    # 38.0f

    iget v8, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, 0x42180000    # 38.0f

    iget v9, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 215
    .restart local v4    # "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x5

    const/high16 v8, 0x40a00000    # 5.0f

    iget v9, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/4 v9, 0x0

    const/high16 v10, 0x40a00000    # 5.0f

    iget v11, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 216
    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 217
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->iconView:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 219
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    .line 222
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    .line 223
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v8}, Lcom/casee/adsdk/Ad;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setId(I)V

    .line 225
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    iget v8, p0, Lcom/casee/adsdk/AdViewGroup;->textFontSize:F

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 226
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    iget v8, p0, Lcom/casee/adsdk/AdViewGroup;->textColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    sget-object v8, Lcom/casee/adsdk/AdViewGroup;->AD_TEXT_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 228
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 231
    .restart local v6    # "tvParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x5

    const/high16 v8, 0x42180000    # 38.0f

    iget v9, p0, Lcom/casee/adsdk/AdViewGroup;->textFontSize:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/4 v9, 0x5

    const/4 v10, 0x5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 232
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 233
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    .line 237
    iget v7, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->getCaseeRecommendView(F)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    .line 238
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 241
    .restart local v1    # "cvParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    .line 246
    iget-boolean v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTesting:Z

    if-nez v7, :cond_6

    const-string v7, "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->getSiteId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 247
    :cond_6
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    .line 248
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 249
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    iget-object v8, v8, Lcom/casee/adsdk/Ad;->testingText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setId(I)V

    .line 251
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 254
    .restart local v5    # "tParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 255
    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 256
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 258
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    iget v8, p0, Lcom/casee/adsdk/AdViewGroup;->textColor:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 264
    .end local v1    # "cvParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "tParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "tvParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v7}, Lcom/casee/adsdk/Ad;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 265
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->context:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 266
    .restart local v3    # "iconView":Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 268
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    .restart local v4    # "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 272
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    invoke-virtual {p0, v3}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    .line 276
    iget v7, p0, Lcom/casee/adsdk/AdViewGroup;->mScale:F

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->getCaseeRecommendView(F)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    .line 277
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    .restart local v1    # "cvParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 281
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    .line 285
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 286
    .restart local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v7, 0x1b58

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 287
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 288
    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 289
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 290
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 292
    iget-boolean v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTesting:Z

    if-nez v7, :cond_8

    const-string v7, "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->getSiteId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 293
    :cond_8
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    .line 294
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 295
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    iget-object v8, v8, Lcom/casee/adsdk/Ad;->testingText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setId(I)V

    .line 297
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 298
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 301
    .restart local v5    # "tParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 302
    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 303
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 305
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    iget-object v7, p0, Lcom/casee/adsdk/AdViewGroup;->isTestingView:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/casee/adsdk/AdViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/casee/adsdk/AdViewGroup;->backgroundColor:I

    return v0
.end method

.method protected getCaseeRecommendView(F)Landroid/view/View;
    .locals 5
    .param p1, "mScale"    # F

    .prologue
    const/4 v4, -0x2

    .line 396
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/casee/adsdk/AdViewGroup;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 397
    .local v1, "iv":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/casee/adsdk/AdViewGroup;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v3, p1}, Lcom/casee/adsdk/Ad;->getCaseeCommendIcon(F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 399
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 400
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 403
    .local v2, "ivParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 404
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 405
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    return-object v1
.end method

.method protected getVerticalText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 313
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, p1

    .line 323
    :goto_0
    return-object v3

    .line 315
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 317
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 320
    .local v0, "c":C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 321
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    const-string v4, "AdViewGroup"

    .line 335
    const-string v1, "AdViewGroup"

    const-string v1, "onSizeChanged"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v1, "AdViewGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recview, w,h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/casee/adsdk/AdViewGroup;->caseeRecommendView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 338
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 339
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 340
    .local v0, "r":Landroid/graphics/Rect;
    const/4 v1, -0x1

    iget v2, p0, Lcom/casee/adsdk/AdViewGroup;->backgroundColor:I

    invoke-direct {p0, v0, v1, v2}, Lcom/casee/adsdk/AdViewGroup;->generateBackgroundDrawable(Landroid/graphics/Rect;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/casee/adsdk/AdViewGroup;->defaultBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 342
    iget-object v1, p0, Lcom/casee/adsdk/AdViewGroup;->defaultBackground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1}, Lcom/casee/adsdk/AdViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/casee/adsdk/AdViewGroup;->backgroundColor:I

    .line 332
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/casee/adsdk/AdViewGroup;->textColor:I

    .line 93
    iget-object v0, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public setTextFontSize(F)V
    .locals 1
    .param p1, "textFontSize"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/casee/adsdk/AdViewGroup;->textFontSize:F

    .line 86
    iget-object v0, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/casee/adsdk/AdViewGroup;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    :cond_0
    return-void
.end method
