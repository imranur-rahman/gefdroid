.class Lcom/openintents/notepad/noteslist/NotesList$1;
.super Landroid/content/BroadcastReceiver;
.source "NotesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openintents/notepad/noteslist/NotesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openintents/notepad/noteslist/NotesList;


# direct methods
.method constructor <init>(Lcom/openintents/notepad/noteslist/NotesList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openintents/notepad/noteslist/NotesList$1;->this$0:Lcom/openintents/notepad/noteslist/NotesList;

    .line 1220
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1224
    invoke-static {}, Lcom/openintents/notepad/noteslist/NotesListCursor;->flushDecryptedStringHashMap()V

    .line 1225
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesList$1;->this$0:Lcom/openintents/notepad/noteslist/NotesList;

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    invoke-virtual {v0}, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 1226
    return-void
.end method
