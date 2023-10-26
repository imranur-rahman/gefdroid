.class public final Lcom/kosenkov/protector/s;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/view/LayoutInflater;

.field private final c:Landroid/content/pm/PackageManager;

.field private synthetic d:Lcom/kosenkov/protector/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kosenkov/protector/SettingsActivity;Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/content/pm/PackageManager;)V
    .locals 1

    iput-object p1, p0, Lcom/kosenkov/protector/s;->d:Lcom/kosenkov/protector/SettingsActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kosenkov/protector/s;->a:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/kosenkov/protector/s;->b:Landroid/view/LayoutInflater;

    iput-object p5, p0, Lcom/kosenkov/protector/s;->c:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, p1}, Lcom/kosenkov/protector/s;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kosenkov/protector/r;

    if-nez p2, :cond_9

    iget-object v2, p0, Lcom/kosenkov/protector/s;->b:Landroid/view/LayoutInflater;

    const/high16 v3, 0x7f030000

    invoke-virtual {v2, v3, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    :goto_0
    iget-object v2, v1, Lcom/kosenkov/protector/r;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/kosenkov/protector/s;->d:Lcom/kosenkov/protector/SettingsActivity;

    invoke-static {v3}, Lcom/kosenkov/protector/SettingsActivity;->b(Lcom/kosenkov/protector/SettingsActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v2, v3, :cond_8

    :cond_0
    iget-object v3, p0, Lcom/kosenkov/protector/s;->c:Landroid/content/pm/PackageManager;

    if-eqz v3, :cond_8

    iget-object v2, v1, Lcom/kosenkov/protector/r;->e:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/kosenkov/protector/s;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/kosenkov/protector/r;->b:Landroid/graphics/drawable/Drawable;

    move-object v3, v2

    :goto_1
    iget-object v2, p0, Lcom/kosenkov/protector/s;->d:Lcom/kosenkov/protector/SettingsActivity;

    invoke-static {v2}, Lcom/kosenkov/protector/SettingsActivity;->b(Lcom/kosenkov/protector/SettingsActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eq v3, v2, :cond_7

    if-eqz v3, :cond_7

    iget-boolean v2, v1, Lcom/kosenkov/protector/r;->c:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/kosenkov/protector/s;->d:Lcom/kosenkov/protector/SettingsActivity;

    invoke-static {v2}, Lcom/kosenkov/protector/SettingsActivity;->e(Lcom/kosenkov/protector/SettingsActivity;)I

    move-result v5

    iget-object v2, p0, Lcom/kosenkov/protector/s;->d:Lcom/kosenkov/protector/SettingsActivity;

    invoke-static {v2}, Lcom/kosenkov/protector/SettingsActivity;->e(Lcom/kosenkov/protector/SettingsActivity;)I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    instance-of v2, v3, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v2, :cond_1

    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v2, v0

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    :cond_1
    if-lez v5, :cond_7

    if-lez v6, :cond_7

    if-lt v5, v7, :cond_2

    if-ge v6, v8, :cond_7

    :cond_2
    int-to-float v2, v7

    int-to-float v9, v8

    div-float/2addr v2, v9

    if-le v7, v8, :cond_3

    int-to-float v6, v5

    div-float v2, v6, v2

    float-to-int v2, v2

    :goto_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_3
    invoke-static {v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v9, 0x4

    invoke-direct {v8, v9, v10}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-object v8, p0, Lcom/kosenkov/protector/s;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v10, v10, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/kosenkov/protector/s;->a:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/kosenkov/protector/r;->b:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/kosenkov/protector/r;->c:Z

    :goto_4
    iget-object v3, v1, Lcom/kosenkov/protector/r;->a:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v5, p0, Lcom/kosenkov/protector/s;->c:Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_5

    iget-object v1, v1, Lcom/kosenkov/protector/r;->e:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/kosenkov/protector/s;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    const/high16 v3, 0x7f090000

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v11, v2, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v4

    :cond_3
    if-le v8, v7, :cond_6

    int-to-float v5, v6

    mul-float/2addr v2, v5

    float-to-int v2, v2

    move v5, v2

    move v2, v6

    goto :goto_2

    :cond_4
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    :cond_5
    move-object v1, v3

    goto :goto_5

    :cond_6
    move v2, v6

    goto :goto_2

    :cond_7
    move-object v2, v3

    goto :goto_4

    :cond_8
    move-object v3, v2

    goto/16 :goto_1

    :cond_9
    move-object v4, p2

    goto/16 :goto_0
.end method
