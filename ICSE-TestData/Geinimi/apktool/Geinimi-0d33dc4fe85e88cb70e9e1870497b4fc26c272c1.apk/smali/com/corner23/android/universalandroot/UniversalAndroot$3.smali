.class Lcom/corner23/android/universalandroot/UniversalAndroot$3;
.super Ljava/lang/Object;
.source "UniversalAndroot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/corner23/android/universalandroot/UniversalAndroot;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;


# direct methods
.method constructor <init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$3;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "su":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$3;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$14(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$3;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->tv_msg:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$14(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f050015

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$3;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->go4unroot()V
    invoke-static {v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$20(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    goto :goto_0
.end method
