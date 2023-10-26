.class public Lcom/openintents/distribution/EulaOrNewVersion;
.super Ljava/lang/Object;
.source "EulaOrNewVersion.java"


# static fields
.field static final EXTRA_LAUNCH_ACTIVITY_CLASS:Ljava/lang/String; = "com.openintents.extra.launch_activity_class"

.field static final EXTRA_LAUNCH_ACTIVITY_INTENT:Ljava/lang/String; = "com.openintents.extra.launch_activity_intent"

.field static final EXTRA_LAUNCH_ACTIVITY_PACKAGE:Ljava/lang/String; = "com.openintents.extra.launch_activity_package"

.field public static final PREFERENCES_EULA_ACCEPTED:Ljava/lang/String; = "eula_accepted"

.field public static final PREFERENCES_VERSION_NUMBER:Ljava/lang/String; = "com.openintents.distribution.version_number_check"

.field private static final TAG:Ljava/lang/String; = "EulaOrNewVersion"

.field private static final debug:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static showEula(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const-string v4, "EulaOrNewVersion"

    .line 60
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "eula_accepted"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 63
    .local v0, "accepted":Z
    if-eqz v0, :cond_0

    .line 64
    const-string v2, "EulaOrNewVersion"

    const-string v2, "Eula has been accepted."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 70
    :goto_0
    return v2

    .line 67
    :cond_0
    const-string v2, "EulaOrNewVersion"

    const-string v2, "Eula has not been accepted yet."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-class v2, Lcom/openintents/distribution/EulaActivity;

    invoke-static {p0, v2}, Lcom/openintents/distribution/EulaOrNewVersion;->startForwardActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 70
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static showNewVersion(Landroid/app/Activity;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const-string v6, "EulaOrNewVersion"

    .line 87
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 88
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "com.openintents.distribution.version_number_check"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, "lastVersion":I
    invoke-static {p0}, Lcom/openintents/util/VersionUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    .line 91
    .local v2, "thisVersion":I
    if-ne v0, v2, :cond_0

    .line 92
    const-string v3, "EulaOrNewVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Same version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as last launch."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 98
    :goto_0
    return v3

    .line 95
    :cond_0
    const-string v3, "EulaOrNewVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Newer version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " since last launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Show recent changes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-class v3, Lcom/openintents/distribution/NewVersionActivity;

    invoke-static {p0, v3}, Lcom/openintents/distribution/EulaOrNewVersion;->startForwardActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 98
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static startForwardActivity(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "launchClass"    # Ljava/lang/Class;

    .prologue
    const-string v5, "EulaOrNewVersion"

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 114
    .local v1, "forwardIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 119
    .local v0, "ci":Landroid/content/ComponentName;
    const-string v3, "EulaOrNewVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Local package name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v3, "EulaOrNewVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Local class name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v3, "com.openintents.extra.launch_activity_package"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v3, "com.openintents.extra.launch_activity_class"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    if-eqz v1, :cond_0

    .line 124
    const-string v3, "com.openintents.extra.launch_activity_intent"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    :cond_0
    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 129
    return-void
.end method

.method static storeCurrentVersionCode(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/openintents/util/VersionUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    .line 105
    .local v2, "thisVersion":I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v3, "com.openintents.distribution.version_number_check"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method static storeEulaAccepted(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v2, "eula_accepted"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method
