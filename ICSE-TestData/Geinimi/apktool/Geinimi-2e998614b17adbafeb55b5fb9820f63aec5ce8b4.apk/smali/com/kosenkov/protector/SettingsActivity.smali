.class public Lcom/kosenkov/protector/SettingsActivity;
.super Landroid/app/Activity;


# static fields
.field public static a:Z

.field private static final i:Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/widget/GridView;

.field private f:Landroid/widget/GridView;

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private final j:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kosenkov/protector/m;

    invoke-direct {v0}, Lcom/kosenkov/protector/m;-><init>()V

    sput-object v0, Lcom/kosenkov/protector/SettingsActivity;->i:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kosenkov/protector/SettingsActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/kosenkov/protector/i;

    invoke-direct {v0}, Lcom/kosenkov/protector/i;-><init>()V

    iput-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->j:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a()Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    .locals 1

    sget-object v0, Lcom/kosenkov/protector/SettingsActivity;->i:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-object v0
.end method

.method static synthetic a(Lcom/kosenkov/protector/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/kosenkov/protector/SettingsActivity;Lcom/kosenkov/protector/r;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/kosenkov/protector/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    iget-object v2, p0, Lcom/kosenkov/protector/SettingsActivity;->f:Landroid/widget/GridView;

    invoke-virtual {v0, v1, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->d:Landroid/content/SharedPreferences;

    iget-object v1, p1, Lcom/kosenkov/protector/r;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f090002

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const v0, 0x7f090001

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/kosenkov/protector/t;->a()Lcom/kosenkov/protector/t;

    move-result-object v0

    iget-object v1, p1, Lcom/kosenkov/protector/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kosenkov/protector/t;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v11

    move v10, v12

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v12}, Landroid/widget/RadioButton;->setVisibility(I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v3, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    move v1, v11

    :goto_1
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move v10, v1

    goto :goto_0

    :cond_1
    move v0, v10

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    invoke-virtual {v5, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    :goto_3
    iget-object v0, p1, Lcom/kosenkov/protector/r;->d:Ljava/lang/String;

    const-string v1, "com.kosenkov.protector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v12}, Landroid/widget/RadioButton;->setEnabled(Z)V

    invoke-virtual {v5, v12}, Landroid/widget/RadioButton;->setEnabled(Z)V

    :cond_4
    new-instance v0, Lcom/kosenkov/protector/f;

    invoke-direct {v0}, Lcom/kosenkov/protector/f;-><init>()V

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/kosenkov/protector/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/kosenkov/protector/r;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v8, 0x7f060011

    new-instance v0, Lcom/kosenkov/protector/y;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/kosenkov/protector/y;-><init>(Lcom/kosenkov/protector/SettingsActivity;Landroid/widget/RadioButton;Lcom/kosenkov/protector/r;Ljava/lang/String;Landroid/widget/RadioButton;)V

    invoke-virtual {v6, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060012

    new-instance v2, Lcom/kosenkov/protector/e;

    invoke-direct {v2, p0, p1}, Lcom/kosenkov/protector/e;-><init>(Lcom/kosenkov/protector/SettingsActivity;Lcom/kosenkov/protector/r;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_5
    if-nez v0, :cond_3

    invoke-virtual {v2, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    :cond_6
    move v1, v10

    goto :goto_1

    :cond_7
    move v0, v12

    goto :goto_2
.end method

.method static synthetic a(Lcom/kosenkov/protector/SettingsActivity;Lcom/kosenkov/protector/r;I)V
    .locals 2

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p1, Lcom/kosenkov/protector/r;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->e:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/kosenkov/protector/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x14

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/kosenkov/protector/SettingsActivity;Lcom/kosenkov/protector/r;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kosenkov/protector/SettingsActivity;->a(Lcom/kosenkov/protector/r;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/kosenkov/protector/r;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->d:Landroid/content/SharedPreferences;

    iget-object v1, p1, Lcom/kosenkov/protector/r;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->e:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/kosenkov/protector/SettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    :goto_0
    iget-object v0, p1, Lcom/kosenkov/protector/r;->d:Ljava/lang/String;

    const-string v1, "com.kosenkov.protector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SettingsActivity,"

    :goto_1
    iget-object v1, p0, Lcom/kosenkov/protector/SettingsActivity;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p1, Lcom/kosenkov/protector/r;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->e:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/kosenkov/protector/SettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->e:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    goto :goto_0

    :cond_1
    move-object v0, p2

    goto :goto_1
.end method

.method static synthetic b(Lcom/kosenkov/protector/SettingsActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private b()V
    .locals 4

    const-string v0, "protected_apps"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kosenkov/protector/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->b:Ljava/util/ArrayList;

    :goto_0
    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosenkov/protector/r;

    iget-object v3, v0, Lcom/kosenkov/protector/r;->d:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kosenkov/protector/SettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/kosenkov/protector/SettingsActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->f:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic d(Lcom/kosenkov/protector/SettingsActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->e:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic e(Lcom/kosenkov/protector/SettingsActivity;)I
    .locals 1

    iget v0, p0, Lcom/kosenkov/protector/SettingsActivity;->g:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, ""

    const-string v9, "already run 2"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/kosenkov/protector/SettingsActivity;->setContentView(I)V

    sput-boolean v7, Lcom/kosenkov/protector/SettingsActivity;->a:Z

    invoke-virtual {p0}, Lcom/kosenkov/protector/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kosenkov/protector/SettingsActivity;->g:I

    invoke-virtual {p0}, Lcom/kosenkov/protector/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->h:Landroid/graphics/drawable/Drawable;

    const-string v0, "protected_apps"

    invoke-virtual {p0, v0, v8}, Lcom/kosenkov/protector/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->d:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/kosenkov/protector/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kosenkov/protector/SettingsActivity;->c:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/kosenkov/protector/SettingsActivity;->c:Ljava/util/ArrayList;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v2, Lcom/kosenkov/protector/r;

    invoke-direct {v2}, Lcom/kosenkov/protector/r;-><init>()V

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kosenkov/protector/r;->a:Ljava/lang/String;

    :goto_2
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/kosenkov/protector/r;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/kosenkov/protector/SettingsActivity;->h:Landroid/graphics/drawable/Drawable;

    iput-object v3, v2, Lcom/kosenkov/protector/r;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, v2, Lcom/kosenkov/protector/r;->e:Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/kosenkov/protector/SettingsActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    iput-object v4, v2, Lcom/kosenkov/protector/r;->a:Ljava/lang/String;

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/kosenkov/protector/aa;

    const-string v1, "Icon loader"

    invoke-direct {v0, p0, v1}, Lcom/kosenkov/protector/aa;-><init>(Lcom/kosenkov/protector/SettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    invoke-direct {p0}, Lcom/kosenkov/protector/SettingsActivity;->b()V

    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/kosenkov/protector/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->e:Landroid/widget/GridView;

    iget-object v6, p0, Lcom/kosenkov/protector/SettingsActivity;->e:Landroid/widget/GridView;

    new-instance v0, Lcom/kosenkov/protector/s;

    iget-object v3, p0, Lcom/kosenkov/protector/SettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/kosenkov/protector/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kosenkov/protector/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/kosenkov/protector/s;-><init>(Lcom/kosenkov/protector/SettingsActivity;Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->e:Landroid/widget/GridView;

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setSelection(I)V

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->e:Landroid/widget/GridView;

    new-instance v1, Lcom/kosenkov/protector/g;

    invoke-direct {v1, p0}, Lcom/kosenkov/protector/g;-><init>(Lcom/kosenkov/protector/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->e:Landroid/widget/GridView;

    new-instance v1, Lcom/kosenkov/protector/k;

    invoke-direct {v1, p0}, Lcom/kosenkov/protector/k;-><init>(Lcom/kosenkov/protector/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/kosenkov/protector/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->f:Landroid/widget/GridView;

    iget-object v6, p0, Lcom/kosenkov/protector/SettingsActivity;->f:Landroid/widget/GridView;

    new-instance v0, Lcom/kosenkov/protector/s;

    iget-object v3, p0, Lcom/kosenkov/protector/SettingsActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/kosenkov/protector/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p0}, Lcom/kosenkov/protector/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/kosenkov/protector/s;-><init>(Lcom/kosenkov/protector/SettingsActivity;Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->f:Landroid/widget/GridView;

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setSelection(I)V

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->f:Landroid/widget/GridView;

    new-instance v1, Lcom/kosenkov/protector/j;

    invoke-direct {v1, p0}, Lcom/kosenkov/protector/j;-><init>(Lcom/kosenkov/protector/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->f:Landroid/widget/GridView;

    new-instance v1, Lcom/kosenkov/protector/d;

    invoke-direct {v1, p0}, Lcom/kosenkov/protector/d;-><init>(Lcom/kosenkov/protector/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0, v7}, Lcom/kosenkov/protector/SettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "already run"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "already run 2"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060018

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/kosenkov/protector/b;

    invoke-direct {v3, p0}, Lcom/kosenkov/protector/b;-><init>(Lcom/kosenkov/protector/SettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4
    const-string v1, "already run 2"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "already run 2"

    invoke-interface {v0, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosenkov/protector/r;

    invoke-static {}, Lcom/kosenkov/protector/t;->a()Lcom/kosenkov/protector/t;

    move-result-object v1

    iget-object v3, v0, Lcom/kosenkov/protector/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kosenkov/protector/t;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v3, ""

    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/kosenkov/protector/SettingsActivity;->a(Lcom/kosenkov/protector/r;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/kosenkov/protector/SettingsActivity;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/kosenkov/protector/t;->b()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v7

    :goto_4
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    const-string v5, ""

    invoke-interface {v0, v4, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v7}, Lcom/kosenkov/protector/SettingsActivity;->showDialog(I)V

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kosenkov/protector/core/AppProtectorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/kosenkov/protector/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/kosenkov/protector/SettingsActivity;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060008

    new-instance v2, Lcom/kosenkov/protector/z;

    invoke-direct {v2, p0}, Lcom/kosenkov/protector/z;-><init>(Lcom/kosenkov/protector/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/kosenkov/protector/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kosenkov/protector/core/AppProtectorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/kosenkov/protector/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/kosenkov/protector/SettingsActivity;->showDialog(I)V

    move v0, v2

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kosenkov/protector/Preferences;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/kosenkov/protector/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f090009
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/kosenkov/protector/SettingsActivity;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kosenkov/protector/SettingsActivity;->finish()V

    :cond_0
    return-void
.end method
