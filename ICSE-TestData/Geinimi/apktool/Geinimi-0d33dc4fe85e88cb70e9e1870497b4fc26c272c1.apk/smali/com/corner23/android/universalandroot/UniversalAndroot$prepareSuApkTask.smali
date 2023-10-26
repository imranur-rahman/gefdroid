.class Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;
.super Landroid/os/AsyncTask;
.source "UniversalAndroot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corner23/android/universalandroot/UniversalAndroot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "prepareSuApkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;


# direct methods
.method private constructor <init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/corner23/android/universalandroot/UniversalAndroot;Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-string v3, "Superuser.apk"

    .line 425
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->su_apk_resid:I
    invoke-static {v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$6(Lcom/corner23/android/universalandroot/UniversalAndroot;)I

    move-result v1

    if-nez v1, :cond_1

    .line 426
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-virtual {v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Superuser.apk"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    .local v0, "su_apk":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 434
    .end local v0    # "su_apk":Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    const-string v2, "Superuser.apk"

    iget-object v2, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->su_apk_resid:I
    invoke-static {v2}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$6(Lcom/corner23/android/universalandroot/UniversalAndroot;)I

    move-result v2

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->getRawResource(Ljava/lang/String;I)Z
    invoke-static {v1, v3, v2}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$1(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 439
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_apk_msg:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$7(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->su_apk_resid:I
    invoke-static {v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$6(Lcom/corner23/android/universalandroot/UniversalAndroot;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_apk_msg:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$7(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    const v3, 0x7f050004

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->getMsgStringByResult(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    invoke-static {v2, v3, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$3(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    :cond_0
    new-instance v0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareRootScriptTask;

    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareRootScriptTask;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;Lcom/corner23/android/universalandroot/UniversalAndroot$prepareRootScriptTask;)V

    .line 444
    .local v0, "prst":Lcom/corner23/android/universalandroot/UniversalAndroot$prepareRootScriptTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareRootScriptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 445
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
