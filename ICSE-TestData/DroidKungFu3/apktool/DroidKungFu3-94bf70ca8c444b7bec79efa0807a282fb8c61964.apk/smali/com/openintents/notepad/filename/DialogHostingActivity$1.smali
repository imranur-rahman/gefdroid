.class Lcom/openintents/notepad/filename/DialogHostingActivity$1;
.super Ljava/lang/Object;
.source "DialogHostingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openintents/notepad/filename/DialogHostingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openintents/notepad/filename/DialogHostingActivity;


# direct methods
.method constructor <init>(Lcom/openintents/notepad/filename/DialogHostingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openintents/notepad/filename/DialogHostingActivity$1;->this$0:Lcom/openintents/notepad/filename/DialogHostingActivity;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/openintents/notepad/filename/DialogHostingActivity$1;->this$0:Lcom/openintents/notepad/filename/DialogHostingActivity;

    # getter for: Lcom/openintents/notepad/filename/DialogHostingActivity;->mIsPausing:Z
    invoke-static {v0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->access$0(Lcom/openintents/notepad/filename/DialogHostingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/openintents/notepad/filename/DialogHostingActivity$1;->this$0:Lcom/openintents/notepad/filename/DialogHostingActivity;

    invoke-virtual {v0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->finish()V

    .line 172
    :cond_0
    return-void
.end method
