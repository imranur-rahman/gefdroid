.class Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;
.super Landroid/os/AsyncTask;
.source "UniversalAndroot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corner23/android/universalandroot/UniversalAndroot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "installToolKitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;


# direct methods
.method private constructor <init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/corner23/android/universalandroot/UniversalAndroot;Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;)V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    const-string v9, "UniversalAndroot"

    .line 622
    const-wide/16 v6, 0x1388

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/local/tmp/rootshell"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    .local v1, "RootShell":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-virtual {v6}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "install_kit.sh"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 629
    .local v0, "KitInstaller":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 630
    const-string v6, "UniversalAndroot"

    const-string v6, "/data/local/tmp/rootshell missing.."

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 657
    :goto_1
    return-object v6

    .line 623
    .end local v0    # "KitInstaller":Ljava/io/File;
    .end local v1    # "RootShell":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 624
    .local v4, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 634
    .end local v4    # "e1":Ljava/lang/InterruptedException;
    .restart local v0    # "KitInstaller":Ljava/io/File;
    .restart local v1    # "RootShell":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 635
    const-string v6, "UniversalAndroot"

    const-string v6, "install_kit.sh missing.."

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_1

    .line 640
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "chmod 777 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 641
    .local v2, "cmd":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 642
    .local v5, "proc":Ljava/lang/Process;
    if-eqz v5, :cond_2

    .line 643
    iget-object v6, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->checkProcErrorMsg(Ljava/io/InputStream;)V
    invoke-static {v6, v7}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$11(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/io/InputStream;)V

    .line 646
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 647
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 648
    if-eqz v5, :cond_3

    .line 649
    iget-object v6, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->checkProcErrorMsg(Ljava/io/InputStream;)V
    invoke-static {v6, v7}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$11(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/io/InputStream;)V

    .line 650
    iget-object v6, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->checkProcErrorMsg(Ljava/io/InputStream;)V
    invoke-static {v6, v7}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$11(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/io/InputStream;)V

    .line 652
    :cond_3
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_1

    .line 653
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v5    # "proc":Ljava/lang/Process;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 654
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 657
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 662
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$14(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$14(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f050012

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 672
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->bDisableWifi:Z
    invoke-static {v0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$15(Lcom/corner23/android/universalandroot/UniversalAndroot;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$12(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 678
    :goto_1
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->removeExploit()V
    invoke-static {v0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$16(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    .line 679
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->enableButtons()V
    invoke-static {v0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$17(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    .line 680
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->cleanGenMsgs()V
    invoke-static {v0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$18(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    .line 681
    return-void

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$14(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$14(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$12(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$installToolKitTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
