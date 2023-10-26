.class Lcom/openintents/notepad/noteslist/NotesList$2;
.super Landroid/database/DataSetObserver;
.source "NotesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openintents/notepad/noteslist/NotesList;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/openintents/notepad/noteslist/NotesList$2;->this$0:Lcom/openintents/notepad/noteslist/NotesList;

    .line 254
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesList$2;->this$0:Lcom/openintents/notepad/noteslist/NotesList;

    invoke-virtual {v0}, Lcom/openintents/notepad/noteslist/NotesList;->updateTagList()V

    .line 258
    return-void
.end method
