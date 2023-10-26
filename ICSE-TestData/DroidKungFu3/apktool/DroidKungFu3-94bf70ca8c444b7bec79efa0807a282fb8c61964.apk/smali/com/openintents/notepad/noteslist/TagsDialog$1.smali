.class Lcom/openintents/notepad/noteslist/TagsDialog$1;
.super Ljava/lang/Object;
.source "TagsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openintents/notepad/noteslist/TagsDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openintents/notepad/noteslist/TagsDialog;


# direct methods
.method constructor <init>(Lcom/openintents/notepad/noteslist/TagsDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openintents/notepad/noteslist/TagsDialog$1;->this$0:Lcom/openintents/notepad/noteslist/TagsDialog;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/TagsDialog$1;->this$0:Lcom/openintents/notepad/noteslist/TagsDialog;

    # invokes: Lcom/openintents/notepad/noteslist/TagsDialog;->toggleTaglistPopup()V
    invoke-static {v0}, Lcom/openintents/notepad/noteslist/TagsDialog;->access$0(Lcom/openintents/notepad/noteslist/TagsDialog;)V

    .line 68
    return-void
.end method
