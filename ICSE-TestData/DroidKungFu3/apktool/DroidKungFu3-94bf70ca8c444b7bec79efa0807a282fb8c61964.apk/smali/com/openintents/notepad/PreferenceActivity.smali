.class public Lcom/openintents/notepad/PreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferenceActivity.java"


# static fields
.field public static final EXTRA_SHOW_GET_ADD_ONS:Ljava/lang/String; = "show_get_add_ons"

.field public static final PREFS_AUTOLINK:Ljava/lang/String; = "autolink"

.field public static final PREFS_FONTSIZE:Ljava/lang/String; = "fontsize"

.field public static final PREFS_FONTSIZE_DEFAULT:Ljava/lang/String; = "2"

.field public static final PREFS_MARKET_EXTENSIONS:Ljava/lang/String; = "preference_market_extensions"

.field public static final PREFS_MARKET_THEMES:Ljava/lang/String; = "preference_market_themes"

.field public static final PREFS_SCREEN_ADDONS:Ljava/lang/String; = "preference_screen_addons"

.field public static final PREFS_SORTORDER:Ljava/lang/String; = "sortorder"

.field public static final PREFS_SORTORDER_DEFAULT:Ljava/lang/String; = "2"

.field public static final PREFS_THEME_SET_FOR_ALL:Ljava/lang/String; = "theme_set_for_all"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static getAutoLinkFromPreference(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    const-string v1, "autolink"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    .line 109
    :goto_0
    return v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFontSizeFromPrefs(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 93
    const-string v2, "fontsize"

    .line 94
    const-string v3, "2"

    .line 92
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "size":I
    return v0
.end method

.method public static getSortOrderFromPrefs(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "sortOrder":I
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    const-string v2, "sortorder"

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 81
    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Lcom/openintents/notepad/NotePad$Notes;->SORT_ORDERS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 83
    sget-object v1, Lcom/openintents/notepad/NotePad$Notes;->SORT_ORDERS:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 87
    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lcom/openintents/notepad/NotePad$Notes;->SORT_ORDERS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_1

    .line 76
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getThemeSetForAll(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "theme_set_for_all"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isMarketAvailable()Z
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "i":Landroid/content/Intent;
    const v1, 0x7f060091

    invoke-virtual {p0, v1}, Lcom/openintents/notepad/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 105
    invoke-static {p0, v0}, Lcom/openintents/util/IntentUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static setThemeSetForAll(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "setForAll"    # Z

    .prologue
    .line 121
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 122
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "theme_set_for_all"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 58
    invoke-virtual {p0}, Lcom/openintents/notepad/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/openintents/notepad/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "show_get_add_ons"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/openintents/notepad/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preference_screen_addons"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 61
    .local v0, "licensePrefScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/openintents/notepad/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 63
    .end local v0    # "licensePrefScreen":Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method
