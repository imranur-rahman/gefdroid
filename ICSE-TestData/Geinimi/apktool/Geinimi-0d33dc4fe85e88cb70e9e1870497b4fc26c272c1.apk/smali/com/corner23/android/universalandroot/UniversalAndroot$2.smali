.class Lcom/corner23/android/universalandroot/UniversalAndroot$2;
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
    iput-object p1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$2;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "su":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$2;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    const v2, 0x7f05000d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 107
    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 108
    const v2, 0x7f050010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 109
    const v2, 0x7f05000f

    iget-object v3, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$2;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # getter for: Lcom/corner23/android/universalandroot/UniversalAndroot;->mOnRootMePleaseDialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v3}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$19(Lcom/corner23/android/universalandroot/UniversalAndroot;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$2;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->go4root()V
    invoke-static {v1}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$0(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    goto :goto_0
.end method
