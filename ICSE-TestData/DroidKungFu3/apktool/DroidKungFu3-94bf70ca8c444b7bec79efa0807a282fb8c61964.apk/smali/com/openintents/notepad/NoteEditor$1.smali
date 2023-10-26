.class Lcom/openintents/notepad/NoteEditor$1;
.super Ljava/lang/Object;
.source "NoteEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openintents/notepad/NoteEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openintents/notepad/NoteEditor;


# direct methods
.method constructor <init>(Lcom/openintents/notepad/NoteEditor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openintents/notepad/NoteEditor$1;->this$0:Lcom/openintents/notepad/NoteEditor;

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor$1;->this$0:Lcom/openintents/notepad/NoteEditor;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openintents/notepad/NoteEditor;->access$0(Lcom/openintents/notepad/NoteEditor;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor$1;->this$0:Lcom/openintents/notepad/NoteEditor;

    # invokes: Lcom/openintents/notepad/NoteEditor;->updateTitleSdCard()V
    invoke-static {v0}, Lcom/openintents/notepad/NoteEditor;->access$1(Lcom/openintents/notepad/NoteEditor;)V

    .line 481
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 487
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 492
    return-void
.end method
