.class Lcom/openintents/notepad/noteslist/NotesList$4;
.super Ljava/lang/Object;
.source "NotesList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openintents/notepad/noteslist/NotesList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    iput-object p1, p0, Lcom/openintents/notepad/noteslist/NotesList$4;->this$0:Lcom/openintents/notepad/noteslist/NotesList;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 605
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesList$4;->this$0:Lcom/openintents/notepad/noteslist/NotesList;

    invoke-static {v0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList$4;->this$0:Lcom/openintents/notepad/noteslist/NotesList;

    invoke-virtual {v0, v1}, Lcom/waps/AppConnect;->showOffers(Landroid/content/Context;)V

    .line 607
    return-void
.end method
