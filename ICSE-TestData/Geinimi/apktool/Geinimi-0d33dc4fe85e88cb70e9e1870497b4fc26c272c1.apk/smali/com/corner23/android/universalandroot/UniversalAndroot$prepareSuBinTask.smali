.class Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;
.super Landroid/os/AsyncTask;
.source "UniversalAndroot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corner23/android/universalandroot/UniversalAndroot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "prepareSuBinTask"
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
    .line 397
    iput-object p1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/corner23/android/universalandroot/UniversalAndroot;Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    const-string v1, "su"

    iget-object v2, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->su_bin_resid:I
    invoke-static {v2}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$4(Lcom/corner23/android/universalandroot/UniversalAndroot;)I

    move-result v2

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->getRawResource(Ljava/lang/String;I)Z
    invoke-static {v0, v1, v2}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$1(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 411
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_bin_msg:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$5(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_su_bin_msg:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$5(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    const v3, 0x7f050003

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->getMsgStringByResult(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    invoke-static {v2, v3, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$3(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :cond_0
    new-instance v0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;

    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;)V

    .line 416
    .local v0, "psat":Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuApkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 417
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
