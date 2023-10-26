.class Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;
.super Landroid/os/AsyncTask;
.source "UniversalAndroot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corner23/android/universalandroot/UniversalAndroot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "prepareExploidTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field bWantRoot:Z

.field final synthetic this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;


# direct methods
.method private constructor <init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V
    .locals 1

    .prologue
    .line 366
    iput-object p1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->bWantRoot:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/corner23/android/universalandroot/UniversalAndroot;Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 372
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->bWantRoot:Z

    .line 374
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    const-string v2, "getroot"

    const/high16 v3, 0x7f040000

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->getRawResource(Ljava/lang/String;I)Z
    invoke-static {v1, v2, v3}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$1(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/lang/String;I)Z

    move-result v0

    .line 375
    .local v0, "bSuccess":Z
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    const-string v2, "tattoo_hack_gf922713.ko"

    const v3, 0x7f040008

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->getRawResource(Ljava/lang/String;I)Z
    invoke-static {v1, v2, v3}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$1(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 376
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    const-string v2, "tattoo_hack_g6561203.ko"

    const v3, 0x7f040007

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->getRawResource(Ljava/lang/String;I)Z
    invoke-static {v1, v2, v3}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$1(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 378
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 383
    iget-object v2, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_gen_exploit_msg:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$2(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_gen_exploit_msg:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$2(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    const v4, 0x7f050002

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->getMsgStringByResult(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    invoke-static {v3, v4, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$3(Lcom/corner23/android/universalandroot/UniversalAndroot;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_0
    iget-boolean v2, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->bWantRoot:Z

    if-eqz v2, :cond_1

    .line 388
    new-instance v0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;

    iget-object v2, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-direct {v0, v2, v6}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;)V

    .line 389
    .local v0, "psbt":Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;
    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 394
    .end local v0    # "psbt":Lcom/corner23/android/universalandroot/UniversalAndroot$prepareSuBinTask;
    :goto_0
    return-void

    .line 391
    :cond_1
    new-instance v1, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareUnrootScriptTask;

    iget-object v2, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-direct {v1, v2, v6}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareUnrootScriptTask;-><init>(Lcom/corner23/android/universalandroot/UniversalAndroot;Lcom/corner23/android/universalandroot/UniversalAndroot$prepareUnrootScriptTask;)V

    .line 392
    .local v1, "pust":Lcom/corner23/android/universalandroot/UniversalAndroot$prepareUnrootScriptTask;
    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareUnrootScriptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/corner23/android/universalandroot/UniversalAndroot$prepareExploidTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
