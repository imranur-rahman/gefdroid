.class public Lcom/waps/ads/a/b;
.super Lcom/waps/ads/a/a;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/waps/ads/a/a;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 14

    iget-object v0, p0, Lcom/waps/ads/a/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/waps/ads/AdGroupLayout;->e:Lcom/waps/ads/b/a;

    iget v2, v2, Lcom/waps/ads/b/a;->a:I

    packed-switch v2, :pswitch_data_0

    const-string v1, "AdGroup_SDK"

    const-string v2, "Unknown custom type!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedNow()V

    goto :goto_0

    :pswitch_0
    const-string v2, "AdGroup_SDK"

    const-string v3, "Serving custom type: banner"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lcom/waps/ads/AdGroupLayout;->e:Lcom/waps/ads/b/a;

    iget-object v3, v3, Lcom/waps/ads/b/a;->c:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedNow()V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->e:Lcom/waps/ads/b/a;

    iget-object v1, v1, Lcom/waps/ads/b/a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Lcom/waps/ads/AdGroupLayout;->pushSubView(Landroid/view/ViewGroup;)V

    :goto_1
    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v1}, Lcom/waps/ads/AdGroupManager;->resetRollover()V

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedDelayed()V

    goto :goto_0

    :pswitch_1
    const-string v2, "AdGroup_SDK"

    const-string v3, "Serving custom type: icon"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lcom/waps/ads/AdGroupLayout;->e:Lcom/waps/ads/b/a;

    iget-object v3, v3, Lcom/waps/ads/b/a;->c:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedNow()V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/waps/ads/c/a;->a(Landroid/app/Activity;)D

    move-result-wide v3

    const/16 v5, 0x140

    invoke-static {v5, v3, v4}, Lcom/waps/ads/c/a;->a(ID)I

    move-result v5

    int-to-double v5, v5

    const/16 v7, 0x32

    invoke-static {v7, v3, v4}, Lcom/waps/ads/c/a;->a(ID)I

    move-result v7

    int-to-double v7, v7

    const/4 v9, 0x4

    invoke-static {v9, v3, v4}, Lcom/waps/ads/c/a;->a(ID)I

    move-result v9

    int-to-double v9, v9

    const/4 v11, 0x6

    invoke-static {v11, v3, v4}, Lcom/waps/ads/c/a;->a(ID)I

    move-result v3

    int-to-double v3, v3

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    double-to-int v5, v5

    double-to-int v6, v7

    invoke-direct {v11, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v6, v0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v6, v6, Lcom/waps/ads/b/b;->e:I

    iget-object v7, v0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v7, v7, Lcom/waps/ads/b/b;->f:I

    iget-object v8, v0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v8, v8, Lcom/waps/ads/b/b;->g:I

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v11, 0x4

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, -0x1

    aput v13, v11, v12

    const/4 v12, 0x1

    aput v6, v11, v12

    const/4 v12, 0x2

    aput v6, v11, v12

    const/4 v12, 0x3

    aput v6, v11, v12

    invoke-direct {v7, v8, v11}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v6, v0, Lcom/waps/ads/AdGroupLayout;->e:Lcom/waps/ads/b/a;

    iget-object v6, v6, Lcom/waps/ads/b/a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    double-to-int v6, v9

    const/4 v7, 0x0

    double-to-int v8, v3

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v7, v8, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "/com/waps/ads/assets/ad_frame.gif"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    double-to-int v7, v9

    const/4 v8, 0x0

    double-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v7, -0x1

    invoke-direct {v3, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->e:Lcom/waps/ads/b/a;

    iget-object v1, v1, Lcom/waps/ads/b/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, v0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v1, v1, Lcom/waps/ads/b/b;->a:I

    iget-object v4, v0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v4, v4, Lcom/waps/ads/b/b;->b:I

    iget-object v6, v0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v6, v6, Lcom/waps/ads/b/b;->c:I

    invoke-static {v1, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, -0x1

    invoke-direct {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Lcom/waps/ads/AdGroupLayout;->pushSubView(Landroid/view/ViewGroup;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handle()V
    .locals 5

    iget-object v0, p0, Lcom/waps/ads/a/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waps/ads/AdGroupLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcom/waps/ads/AdGroupLayout;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/waps/ads/a/d;

    invoke-direct {v1, p0}, Lcom/waps/ads/a/d;-><init>(Lcom/waps/ads/a/b;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
