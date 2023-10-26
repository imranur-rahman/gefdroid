.class Lcom/openintents/notepad/noteslist/NotesListCursor$1;
.super Landroid/database/ContentObserver;
.source "NotesListCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openintents/notepad/noteslist/NotesListCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openintents/notepad/noteslist/NotesListCursor;


# direct methods
.method constructor <init>(Lcom/openintents/notepad/noteslist/NotesListCursor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openintents/notepad/noteslist/NotesListCursor$1;->this$0:Lcom/openintents/notepad/noteslist/NotesListCursor;

    .line 104
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 116
    sget-boolean v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mSuspendQueries:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListCursor$1;->this$0:Lcom/openintents/notepad/noteslist/NotesListCursor;

    invoke-virtual {v0}, Lcom/openintents/notepad/noteslist/NotesListCursor;->requery()Z

    .line 120
    :cond_0
    return-void
.end method
