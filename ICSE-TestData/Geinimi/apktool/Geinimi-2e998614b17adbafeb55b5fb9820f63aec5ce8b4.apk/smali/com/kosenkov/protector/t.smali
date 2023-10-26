.class public final Lcom/kosenkov/protector/t;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/kosenkov/protector/t;


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kosenkov/protector/t;

    invoke-direct {v0}, Lcom/kosenkov/protector/t;-><init>()V

    sput-object v0, Lcom/kosenkov/protector/t;->a:Lcom/kosenkov/protector/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "ConfirmList"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kosenkov/protector/t;->b:Ljava/util/Map;

    const-string v0, "com.android.mms"

    const-string v1, "\u8bfb\u53d6\u548c\u5199\u5165\u901a\u8bdd\u5386\u53f2"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ui.ComposeMessageActivity"

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lcom/kosenkov/protector/t;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "com.google.android.gm"

    const-string v1, "\u8bfb\u53d6\u548c\u5199\u5165\u77ed\u4fe1\u606f"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ComposeActivity"

    aput-object v3, v2, v5

    const-string v3, "ComposeActivityGmail"

    aput-object v3, v2, v6

    const-string v3, "HtmlConversationActivity"

    aput-object v3, v2, v7

    const-string v3, "ConversationActivity"

    aput-object v3, v2, v8

    const/4 v3, 0x4

    const-string v4, "ConversationListActivityGoogleMail"

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/kosenkov/protector/t;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    const-string v1, "\u5378\u8f7d & \u505c\u6b62\u7a0b\u5e8f"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "InstalledAppDetails"

    aput-object v3, v2, v5

    const-string v3, "RunningServices"

    aput-object v3, v2, v6

    const-string v3, "UninstallerActivity"

    aput-object v3, v2, v7

    invoke-direct {p0, v0, v1, v2}, Lcom/kosenkov/protector/t;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    const-string v1, "List installed applications"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ManageApplications"

    aput-object v3, v2, v5

    const-string v3, "ApplicationSettings"

    aput-object v3, v2, v6

    invoke-direct {p0, v0, v1, v2}, Lcom/kosenkov/protector/t;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "com.android.vending"

    const-string v1, "Buy Applications & Uninstall"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "BuyPageActivity"

    aput-object v3, v2, v5

    const-string v3, "UninstallActivity"

    aput-object v3, v2, v6

    invoke-direct {p0, v0, v1, v2}, Lcom/kosenkov/protector/t;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "com.android.vending"

    const-string v1, "\u5b89\u88c5 & \u5378\u8f7d\u7a0b\u5e8f"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "AssetPermissionsSubActivity"

    aput-object v3, v2, v5

    const-string v3, "UninstallActivity"

    aput-object v3, v2, v6

    invoke-direct {p0, v0, v1, v2}, Lcom/kosenkov/protector/t;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "com.kosenkov.protector"

    const-string v1, "\u7ba1\u7406\u52a0\u9501\u7a0b\u5e8f"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SettingsActivity"

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lcom/kosenkov/protector/t;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "com.apexdroid.aam"

    const-string v1, "\u5378\u8f7d"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ConfirmList"

    aput-object v9, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lcom/kosenkov/protector/t;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "com.superdroid.aqd"

    const-string v1, "\u5378\u8f7d"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ConfirmList"

    aput-object v9, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lcom/kosenkov/protector/t;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/kosenkov/protector/t;
    .locals 1

    sget-object v0, Lcom/kosenkov/protector/t;->a:Lcom/kosenkov/protector/t;

    return-object v0
.end method

.method private varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const-string v1, ""

    invoke-direct {p0, p1, p2, p3}, Lcom/kosenkov/protector/t;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kosenkov/protector/t;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v0, ""

    const-string v0, ""

    invoke-interface {p0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/kosenkov/protector/t;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object v1, p0, Lcom/kosenkov/protector/t;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p3, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b()[Ljava/lang/String;
    .locals 7

    const-string v6, "org.whizziwig.quickuninistall"

    const-string v5, "com.magmamobile.app.apkinstaller"

    const-string v4, "com.estrongs.android.taskmanager"

    const-string v3, "com.agilesoftresource"

    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.packageinstaller"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.arron.taskManager"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.arron.taskManagerFree"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.magmamobile.app.apkinstaller"

    aput-object v5, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.jamesots.android.closeeverything"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.jamesots.android.closeeverything2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.estrongs.android.taskmanager"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.jaltroid.appman"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sayhello2theworld.te"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.estrongs.android.pop"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.socialtap.myapps"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.hz.manager.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.hz.manager.android.paid"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.smart.SmartMonitor"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.smart.SmartMonitorLite"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.bg.rootmgrp"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.domobile.eray.status"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.appack.app"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.curvefish.apps.processmanager.free"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.curvefish.apps.processmanager"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.lindaandny.lindamanager"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.bg.whitekiller"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.bbtree.taskkiller"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.dancadar.mobile.taskkill"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.dancadar.mobile.taskkill_mini"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.rechild.advancedtaskkillerpro"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.rechild.advancedtaskkiller"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "biz.stachibana.TaskKiller"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.app.cache.killer"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.lim.android.automemman"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.agilesoftresource"

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.profete162.TaskOS"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "BandB.Tool.QuickUninstaller2"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.mbss4it.zap.v2"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "BandB.Tool.QuickUninstaller"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.mbss4it.zap.v1"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "BandB.Tool.QuickUninstaller.Uninstaller"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.rhythm.hexise.uninst"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.mbss4it.zap.g1"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "org.whizziwig.quickuninistall"

    aput-object v6, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.curvefish.apps.appremover"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.curvefish.apps.appmanager"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.estrongs.android.taskmanager"

    aput-object v4, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.agilesoftresource"

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.mmg.appin"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "com.IQBS.android.uninstaller"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "com.think_android.appmanagerpro"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "de.android_telefonie.appmanager"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "de.android_telefonie.appmanager.cupcake"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "com.smart.monitor.appusage.qvga"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "com.smart.monitor.appusage"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "com.magmamobile.app.apkinstaller"

    aput-object v5, v0, v1

    const/16 v1, 0x34

    const-string v2, "com.lindaandny.applicationmanager"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "org.whizziwig.quickuninistall"

    aput-object v6, v0, v1

    const/16 v1, 0x36

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/kosenkov/protector/t;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method
