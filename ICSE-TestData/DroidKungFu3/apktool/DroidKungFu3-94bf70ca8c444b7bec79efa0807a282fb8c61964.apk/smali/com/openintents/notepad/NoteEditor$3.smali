.class Lcom/openintents/notepad/NoteEditor$3;
.super Ljava/lang/Object;
.source "NoteEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openintents/notepad/NoteEditor;->getUnsavedChangesWarningDialog()Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/openintents/notepad/NoteEditor$3;->this$0:Lcom/openintents/notepad/NoteEditor;

    .line 1650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor$3;->this$0:Lcom/openintents/notepad/NoteEditor;

    # invokes: Lcom/openintents/notepad/NoteEditor;->saveNote()V
    invoke-static {v0}, Lcom/openintents/notepad/NoteEditor;->access$2(Lcom/openintents/notepad/NoteEditor;)V

    .line 1655
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor$3;->this$0:Lcom/openintents/notepad/NoteEditor;

    invoke-virtual {v0}, Lcom/openintents/notepad/NoteEditor;->finish()V

    .line 1656
    return-void
.end method
