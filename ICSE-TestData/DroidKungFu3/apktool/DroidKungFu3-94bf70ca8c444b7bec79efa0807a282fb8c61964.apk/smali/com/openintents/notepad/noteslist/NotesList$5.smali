.class Lcom/openintents/notepad/noteslist/NotesList$5;
.super Ljava/lang/Object;
.source "NotesList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openintents/notepad/noteslist/NotesList;->decryptDelayed(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openintents/notepad/noteslist/NotesList;

.field private final synthetic val$encryptedTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openintents/notepad/noteslist/NotesList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openintents/notepad/noteslist/NotesList$5;->this$0:Lcom/openintents/notepad/noteslist/NotesList;

    iput-object p2, p0, Lcom/openintents/notepad/noteslist/NotesList$5;->val$encryptedTitle:Ljava/lang/String;

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesList$5;->this$0:Lcom/openintents/notepad/noteslist/NotesList;

    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList$5;->val$encryptedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/openintents/notepad/noteslist/NotesList;->decryptTitle(Ljava/lang/String;)V

    .line 904
    return-void
.end method
