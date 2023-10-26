.class final Lcom/kosenkov/protector/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/kosenkov/protector/r;

.field final synthetic b:Lcom/kosenkov/protector/SettingsActivity;

.field private synthetic c:Landroid/widget/RadioButton;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/SettingsActivity;Landroid/widget/RadioButton;Lcom/kosenkov/protector/r;Ljava/lang/String;Landroid/widget/RadioButton;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/y;->b:Lcom/kosenkov/protector/SettingsActivity;

    iput-object p2, p0, Lcom/kosenkov/protector/y;->c:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/kosenkov/protector/y;->a:Lcom/kosenkov/protector/r;

    iput-object p4, p0, Lcom/kosenkov/protector/y;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/kosenkov/protector/y;->e:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/kosenkov/protector/y;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/kosenkov/protector/y;->b:Lcom/kosenkov/protector/SettingsActivity;

    invoke-virtual {v0}, Lcom/kosenkov/protector/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/kosenkov/protector/y;->a:Lcom/kosenkov/protector/r;

    iget-object v1, v1, Lcom/kosenkov/protector/r;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string v2, "\\.?activity\\.?"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v5

    new-array v5, v5, [Z

    iget-object v6, p0, Lcom/kosenkov/protector/y;->d:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/kosenkov/protector/y;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    :goto_0
    const/4 v7, 0x0

    iget-object v8, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v8, v8

    :goto_1
    if-ge v7, v8, :cond_6

    iget-object v9, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v9, v9, v7

    invoke-virtual {v9, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v7

    :goto_2
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    iget-object v11, p0, Lcom/kosenkov/protector/y;->a:Lcom/kosenkov/protector/r;

    iget-object v11, v11, Lcom/kosenkov/protector/r;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    invoke-virtual {v2, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_2
    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "* "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    aput-object v9, v3, v7

    aget-object v9, v4, v7

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    aput-boolean v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kosenkov/protector/y;->b:Lcom/kosenkov/protector/SettingsActivity;

    iget-object v1, p0, Lcom/kosenkov/protector/y;->a:Lcom/kosenkov/protector/r;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kosenkov/protector/SettingsActivity;->a(Lcom/kosenkov/protector/SettingsActivity;Lcom/kosenkov/protector/r;Ljava/lang/String;)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    new-instance v6, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/kosenkov/protector/y;->d:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_5
    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v11, v4, v7

    goto :goto_2

    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/kosenkov/protector/y;->b:Lcom/kosenkov/protector/SettingsActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/kosenkov/protector/SettingsActivity;->a()Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    move-result-object v1

    invoke-virtual {v0, v3, v5, v1}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060011

    new-instance v2, Lcom/kosenkov/protector/c;

    invoke-direct {v2, p0, v4}, Lcom/kosenkov/protector/c;-><init>(Lcom/kosenkov/protector/y;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/kosenkov/protector/a;

    invoke-direct {v2}, Lcom/kosenkov/protector/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/kosenkov/protector/y;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/kosenkov/protector/y;->b:Lcom/kosenkov/protector/SettingsActivity;

    iget-object v1, p0, Lcom/kosenkov/protector/y;->a:Lcom/kosenkov/protector/r;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kosenkov/protector/SettingsActivity;->a(Lcom/kosenkov/protector/SettingsActivity;Lcom/kosenkov/protector/r;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/kosenkov/protector/y;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    :goto_5
    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/kosenkov/protector/y;->b:Lcom/kosenkov/protector/SettingsActivity;

    iget-object v2, p0, Lcom/kosenkov/protector/y;->a:Lcom/kosenkov/protector/r;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/kosenkov/protector/SettingsActivity;->a(Lcom/kosenkov/protector/SettingsActivity;Lcom/kosenkov/protector/r;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    move-object v9, v10

    goto/16 :goto_3
.end method
