.class public Lcom/corner23/android/universalandroot/UniversalAndroot;
.super Landroid/app/Activity;
.source "UniversalAndroot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;,
        Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;,
        Lcom/corner23/android/universalandroot/UniversalAndroot$prepareRootScriptTask;,
        Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;,
        Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;,
        Lcom/corner23/android/universalandroot/UniversalAndroot$prepareUnrootScriptTask;,
        Lcom/corner23/android/universalandroot/UniversalAndroot$rootTask;,
        Lcom/corner23/android/universalandroot/UniversalAndroot$uninstallToolKitTask;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final FILE_GEN_FAILED:I = 0x0

.field private static final FILE_GEN_SUCCESS:I = 0x1

.field private static final FNAME_EXPLOIT:Ljava/lang/String; = "getroot"

.field private static final FNAME_FSRW_MODULE_TATTOO_V1:Ljava/lang/String; = "tattoo_hack_gf922713.ko"

.field private static final FNAME_FSRW_MODULE_TATTOO_V2:Ljava/lang/String; = "tattoo_hack_g6561203.ko"

.field private static final FNAME_INSTALL:Ljava/lang/String; = "install_kit.sh"

.field private static final FNAME_REMOUNT_DATA_RO:Ljava/lang/String; = "remount_data.sh"

.field private static final FNAME_REMOUNT_SYS_RO:Ljava/lang/String; = "remount_sys_ro.sh"

.field private static final FNAME_REMOUNT_SYS_RW:Ljava/lang/String; = "remount_sys_rw.sh"

.field private static final FNAME_REMOVE:Ljava/lang/String; = "remove_kit.sh"

.field private static final FNAME_SU_APK:Ljava/lang/String; = "Superuser.apk"

.field private static final FNAME_SU_BIN:Ljava/lang/String; = "su"

.field private static final MOUNT_EXEC_PATH:Ljava/lang/String; = "/system/bin/mount"

.field private static final ROOT_SHELL_PATH:Ljava/lang/String; = "/data/local/tmp/rootshell"

.field static final SDK_INT:I

.field private static final SU_EXEC_PATH:Ljava/lang/String; = "/system/bin/su"

.field private static final TAG:Ljava/lang/String; = "UniversalAndroot"


# instance fields
.field private bDisableWifi:Z

.field private btn_root:Landroid/widget/Button;

.field private btn_unroot:Landroid/widget/Button;

.field private mOnRootMePleaseDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private spinner:Landroid/widget/Spinner;

.field private su_apk_resid:I

.field private su_bin_resid:I

.field private tv_gen_exploit_msg:Landroid/widget/TextView;

.field private tv_msg:Landroid/widget/TextView;

.field private tv_script_msg:Landroid/widget/TextView;

.field private tv_su_apk_msg:Landroid/widget/TextView;

.field private tv_su_bin_msg:Landroid/widget/TextView;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    .local v1, "sdkInt":I
    :goto_0
    sput v1, Lcom/corner23/android/universalandroot/UniversalAndroot;->SDK_INT:I

    .line 32
    return-void

    .line 77
    .end local v1    # "sdkInt":I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 79
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/16 v1, 0x2710

    .restart local v1    # "sdkInt":I
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->su_bin_resid:I

    .line 56
    iput v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->su_apk_resid:I

    .line 58
    iput-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;

    .line 59
    iput-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_gen_exploit_msg:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_bin_msg:Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_apk_msg:Landroid/widget/TextView;

    .line 62
    iput-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_script_msg:Landroid/widget/TextView;

    .line 64
    iput-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    .line 66
    iput-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_root:Landroid/widget/Button;

    .line 67
    iput-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_unroot:Landroid/widget/Button;

    .line 70
    iput-boolean v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->bDisableWifi:Z

    .line 217
    new-instance v0, Lcom/corner23/android/universalandroot/UniversalAndroot$1;

    invoke-direct {v0, p0}, Lcom/corner23/android/universalandroot/UniversalAndroot$1;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    iput-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->mOnRootMePleaseDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/corner23/android/universalandroot/UniversalAndroot;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->go4root()V

    return-void
.end method

.method static synthetic access$1(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getRawResource(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getSystemMountPoint(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->checkProcErrorMsg(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$12(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$13(Lcom/corner23/android/universalandroot/UniversalAndroot;Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->bDisableWifi:Z

    return-void
.end method

.method static synthetic access$14(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/corner23/android/universalandroot/UniversalAndroot;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->bDisableWifi:Z

    return v0
.end method

.method static synthetic access$16(Lcom/corner23/android/universalandroot/UniversalAndroot;)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->removeExploit()V

    return-void
.end method

.method static synthetic access$17(Lcom/corner23/android/universalandroot/UniversalAndroot;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->enableButtons()V

    return-void
.end method

.method static synthetic access$18(Lcom/corner23/android/universalandroot/UniversalAndroot;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->cleanGenMsgs()V

    return-void
.end method

.method static synthetic access$19(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->mOnRootMePleaseDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_gen_exploit_msg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/corner23/android/universalandroot/UniversalAndroot;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->go4unroot()V

    return-void
.end method

.method static synthetic access$21(Lcom/corner23/android/universalandroot/UniversalAndroot;I)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->setSuResID(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0, p1, p2}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getMsgStringByResult(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/corner23/android/universalandroot/UniversalAndroot;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->su_bin_resid:I

    return v0
.end method

.method static synthetic access$5(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_bin_msg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/corner23/android/universalandroot/UniversalAndroot;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->su_apk_resid:I

    return v0
.end method

.method static synthetic access$7(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_apk_msg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_script_msg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getDataMountPoint(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkProcErrorMsg(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 269
    const/4 v2, 0x0

    .line 271
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 280
    if-eqz v3, :cond_3

    .line 282
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 287
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-void

    .line 275
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    const-string v4, "UniversalAndroot"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 277
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .line 278
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 280
    if-eqz v2, :cond_0

    .line 282
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 283
    :catch_1
    move-exception v4

    goto :goto_1

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 280
    :goto_3
    if-eqz v2, :cond_2

    .line 282
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 286
    :cond_2
    :goto_4
    throw v4

    .line 283
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v1    # "line":Ljava/lang/String;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 279
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 277
    :catch_4
    move-exception v4

    move-object v0, v4

    goto :goto_2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_3
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private cleanGenMsgs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_gen_exploit_msg:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_gen_exploit_msg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_bin_msg:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_bin_msg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_apk_msg:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_apk_msg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_script_msg:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_script_msg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_3
    return-void
.end method

.method private disableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_root:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_root:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 234
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_root:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_unroot:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_unroot:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 238
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_unroot:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 242
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 244
    :cond_2
    return-void
.end method

.method private enableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 247
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_root:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_root:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 249
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_root:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_unroot:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_unroot:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 253
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_unroot:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 257
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 259
    :cond_2
    return-void
.end method

.method private getDataMountPoint(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 294
    const-string v0, "/data"

    invoke-direct {p0, p1, v0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getMountPoint(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMountPoint(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "mp_name"    # Ljava/lang/String;

    .prologue
    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 301
    .local v2, "mp":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x400

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 313
    :goto_0
    if-eqz v4, :cond_4

    .line 315
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 321
    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v2

    .line 305
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v5

    if-eqz v5, :cond_0

    .line 306
    move-object v2, v1

    .line 307
    goto :goto_0

    .line 310
    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 311
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 313
    if-eqz v3, :cond_1

    .line 315
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 316
    :catch_1
    move-exception v5

    goto :goto_1

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 313
    :goto_3
    if-eqz v3, :cond_3

    .line 315
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 319
    :cond_3
    :goto_4
    throw v5

    .line 316
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v1    # "line":Ljava/lang/String;
    :catch_3
    move-exception v6

    goto :goto_4

    .line 312
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 310
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v5

    move-object v0, v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_4
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private getMsgStringByResult(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 7
    .param p1, "msgId"    # Ljava/lang/Integer;
    .param p2, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x1

    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, "msg_ret":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "msg_str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "format_str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 330
    .local v3, "status_str":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 336
    :cond_0
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 338
    return-object v1

    .line 332
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getRawResource(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "o_fname"    # Ljava/lang/String;
    .param p2, "i_resid"    # I

    .prologue
    const/4 v6, 0x0

    .line 342
    if-nez p2, :cond_0

    move v5, v6

    .line 363
    :goto_0
    return v5

    .line 347
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/corner23/android/universalandroot/UniversalAndroot;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 348
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 349
    .local v3, "ins":Ljava/io/InputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 350
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 352
    .local v4, "len1":I
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_1

    .line 355
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 356
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 358
    const/4 v5, 0x1

    goto :goto_0

    .line 353
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 359
    .end local v0    # "buffer":[B
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "ins":Ljava/io/InputStream;
    .end local v4    # "len1":I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 360
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v5, v6

    .line 363
    goto :goto_0
.end method

.method private getSystemMountPoint(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 290
    const-string v0, "/system"

    invoke-direct {p0, p1, v0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getMountPoint(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private go4root()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 208
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;

    const v2, 0x7f050011

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->setSuResID(I)V

    .line 212
    invoke-direct {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->disableButtons()V

    .line 213
    new-instance v0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;)V

    .line 214
    .local v0, "pet":Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;
    new-array v1, v3, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 215
    return-void
.end method

.method private go4unroot()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;

    const v2, 0x7f050016

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->disableButtons()V

    .line 203
    new-instance v0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;)V

    .line 204
    .local v0, "pet":Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    return-void
.end method

.method private removeExploit()V
    .locals 3

    .prologue
    .line 262
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "getroot"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    .local v0, "Exploit":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 266
    :cond_0
    return-void
.end method

.method private setDefaultSpinnerItem()V
    .locals 2

    .prologue
    .line 158
    sget v0, Lcom/corner23/android/universalandroot/UniversalAndroot;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    sget v0, Lcom/corner23/android/universalandroot/UniversalAndroot;->SDK_INT:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private setSuResID(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    const-string v1, "UniversalAndroot"

    .line 168
    packed-switch p1, :pswitch_data_0

    .line 180
    const-string v0, "UniversalAndroot"

    const-string v0, "NO install"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const v0, 0x7f040002

    iput v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->su_bin_resid:I

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->su_apk_resid:I

    .line 185
    :goto_0
    return-void

    .line 170
    :pswitch_0
    const-string v0, "UniversalAndroot"

    const-string v0, "> ECLAIR"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const v0, 0x7f040004

    iput v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->su_bin_resid:I

    .line 172
    const v0, 0x7f040006

    iput v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->su_apk_resid:I

    goto :goto_0

    .line 175
    :pswitch_1
    const-string v0, "UniversalAndroot"

    const-string v0, "> CUPCAKE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const v0, 0x7f040003

    iput v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->su_bin_resid:I

    .line 177
    const v0, 0x7f040005

    iput v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->su_apk_resid:I

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setTitleVersion()V
    .locals 6

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 190
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 192
    .local v1, "info":Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f050000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/corner23/android/universalandroot/UniversalAndroot;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 194
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->setContentView(I)V

    .line 89
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 91
    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_gen_exploit_msg:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_bin_msg:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_apk_msg:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_script_msg:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_root:Landroid/widget/Button;

    .line 98
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_root:Landroid/widget/Button;

    new-instance v2, Lcom/corner23/android/universalandroot/UniversalAndroot$2;

    invoke-direct {v2, p0}, Lcom/corner23/android/universalandroot/UniversalAndroot$2;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_unroot:Landroid/widget/Button;

    .line 120
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->btn_unroot:Landroid/widget/Button;

    new-instance v2, Lcom/corner23/android/universalandroot/UniversalAndroot$3;

    invoke-direct {v2, p0}, Lcom/corner23/android/universalandroot/UniversalAndroot$3;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    .line 139
    const/high16 v1, 0x7f060000

    const v2, 0x1090008

    .line 138
    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 140
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 141
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 142
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot;->spinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/corner23/android/universalandroot/UniversalAndroot$4;

    invoke-direct {v2, p0}, Lcom/corner23/android/universalandroot/UniversalAndroot$4;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 153
    invoke-direct {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->setDefaultSpinnerItem()V

    .line 154
    invoke-direct {p0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->setTitleVersion()V

    .line 155
    return-void
.end method
