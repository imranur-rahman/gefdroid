.class Lcom/openintents/notepad/filename/FilenameDialog$1;
.super Ljava/lang/Object;
.source "FilenameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openintents/notepad/filename/FilenameDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openintents/notepad/filename/FilenameDialog;


# direct methods
.method constructor <init>(Lcom/openintents/notepad/filename/FilenameDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openintents/notepad/filename/FilenameDialog$1;->this$0:Lcom/openintents/notepad/filename/FilenameDialog;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/openintents/notepad/filename/FilenameDialog$1;->this$0:Lcom/openintents/notepad/filename/FilenameDialog;

    # invokes: Lcom/openintents/notepad/filename/FilenameDialog;->openFileManager()V
    invoke-static {v0}, Lcom/openintents/notepad/filename/FilenameDialog;->access$0(Lcom/openintents/notepad/filename/FilenameDialog;)V

    .line 58
    return-void
.end method
