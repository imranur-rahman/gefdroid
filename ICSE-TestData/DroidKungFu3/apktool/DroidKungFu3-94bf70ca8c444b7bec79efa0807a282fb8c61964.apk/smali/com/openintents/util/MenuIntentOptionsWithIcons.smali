.class public Lcom/openintents/util/MenuIntentOptionsWithIcons;
.super Ljava/lang/Object;
.source "MenuIntentOptionsWithIcons.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/openintents/util/MenuIntentOptionsWithIcons;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/openintents/util/MenuIntentOptionsWithIcons;->mMenu:Landroid/view/Menu;

    .line 28
    return-void
.end method


# virtual methods
.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 15
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .prologue
    .line 33
    iget-object v12, p0, Lcom/openintents/util/MenuIntentOptionsWithIcons;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 35
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 34
    move-object v0, v9

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 36
    .local v8, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    move v5, v12

    .line 37
    .local v5, "N":I
    :goto_0
    and-int/lit8 v12, p7, 0x1

    if-nez v12, :cond_0

    .line 38
    iget-object v12, p0, Lcom/openintents/util/MenuIntentOptionsWithIcons;->mMenu:Landroid/view/Menu;

    move-object v0, v12

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeGroup(I)V

    .line 40
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v5, :cond_2

    .line 54
    return v5

    .line 36
    .end local v5    # "N":I
    .end local v6    # "i":I
    :cond_1
    const/4 v12, 0x0

    move v5, v12

    goto :goto_0

    .line 41
    .restart local v5    # "N":I
    .restart local v6    # "i":I
    :cond_2
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 42
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v11, Landroid/content/Intent;

    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v12, :cond_4

    move-object/from16 v12, p6

    :goto_2
    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 44
    .local v11, "rintent":Landroid/content/Intent;
    new-instance v12, Landroid/content/ComponentName;

    .line 45
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 46
    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    iget-object v12, p0, Lcom/openintents/util/MenuIntentOptionsWithIcons;->mMenu:Landroid/view/Menu;

    .line 48
    invoke-virtual {v10, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 47
    move-object v0, v12

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v13

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v12

    .line 48
    invoke-virtual {v10, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v12

    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v7

    .line 50
    .local v7, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_3

    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v12, :cond_3

    .line 51
    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v7, p8, v12

    .line 40
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 43
    .end local v7    # "item":Landroid/view/MenuItem;
    .end local v11    # "rintent":Landroid/content/Intent;
    :cond_4
    iget v12, v10, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v12, p5, v12

    goto :goto_2
.end method
