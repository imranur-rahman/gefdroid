.class public Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "NotesListCursorAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotesListCursorAdapter"


# instance fields
.field public mBusy:Z

.field mContext:Landroid/content/Context;

.field mCursorUtils:Lcom/openintents/notepad/noteslist/NotesListCursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/openintents/notepad/noteslist/NotesListCursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "cursorUtils"    # Lcom/openintents/notepad/noteslist/NotesListCursor;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 23
    iput-object p1, p0, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->mCursorUtils:Lcom/openintents/notepad/noteslist/NotesListCursor;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->mBusy:Z

    .line 27
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 31
    move-object v0, p1

    check-cast v0, Lcom/openintents/notepad/noteslist/NotesListItemView;

    move-object v3, v0

    .line 33
    .local v3, "nliv":Lcom/openintents/notepad/noteslist/NotesListItemView;
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "title":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "tags":Ljava/lang/String;
    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 36
    .local v1, "encrypted":J
    const/4 v8, 0x4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 37
    .local v7, "titleEncrypted":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "tagsEncrypted":Ljava/lang/String;
    invoke-virtual {v3, v1, v2}, Lcom/openintents/notepad/noteslist/NotesListItemView;->setEncrypted(J)V

    .line 41
    invoke-virtual {v3, v6}, Lcom/openintents/notepad/noteslist/NotesListItemView;->setTitle(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3, v4}, Lcom/openintents/notepad/noteslist/NotesListItemView;->setTags(Ljava/lang/String;)V

    .line 43
    iput-object v7, v3, Lcom/openintents/notepad/noteslist/NotesListItemView;->mTitleEncrypted:Ljava/lang/String;

    .line 44
    iput-object v5, v3, Lcom/openintents/notepad/noteslist/NotesListItemView;->mTagsEncrypted:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    new-instance v0, Lcom/openintents/notepad/noteslist/NotesListItemView;

    invoke-direct {v0, p1}, Lcom/openintents/notepad/noteslist/NotesListItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->mCursorUtils:Lcom/openintents/notepad/noteslist/NotesListCursor;

    invoke-virtual {v1, p1, p2}, Lcom/openintents/notepad/noteslist/NotesListCursor;->query(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method
