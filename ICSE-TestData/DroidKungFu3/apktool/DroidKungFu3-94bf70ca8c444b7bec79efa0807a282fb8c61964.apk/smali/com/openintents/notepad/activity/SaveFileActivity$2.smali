.class Lcom/openintents/notepad/activity/SaveFileActivity$2;
.super Ljava/lang/Object;
.source "SaveFileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openintents/notepad/activity/SaveFileActivity;->getOverwriteWarningDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openintents/notepad/activity/SaveFileActivity;


# direct methods
.method constructor <init>(Lcom/openintents/notepad/activity/SaveFileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openintents/notepad/activity/SaveFileActivity$2;->this$0:Lcom/openintents/notepad/activity/SaveFileActivity;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/openintents/notepad/activity/SaveFileActivity$2;->this$0:Lcom/openintents/notepad/activity/SaveFileActivity;

    invoke-virtual {v0}, Lcom/openintents/notepad/activity/SaveFileActivity;->finish()V

    .line 255
    return-void
.end method
