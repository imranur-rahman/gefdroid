.class public Lcom/openintents/notepad/noteslist/NotesList;
.super Lcom/openintents/distribution/DistributionLibraryListActivity;
.source "NotesList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/waps/UpdatePointsNotifier;


# static fields
.field private static final BUNDLE_CONTEXTMENUINFO_ID:Ljava/lang/String; = "ctx_menu_id"

.field private static final BUNDLE_CONTEXTMENUINFO_POSITION:Ljava/lang/String; = "ctx_menu_position"

.field private static final BUNDLE_LAST_FILTER:Ljava/lang/String; = "last_filter"

.field private static final CATEGORY_ALTERNATIVE_GLOBAL:I = 0x1

.field private static final DIALOG_DISTRIBUTION_START:I = 0x64

.field private static final DIALOG_GET_FROM_MARKET:I = 0x3

.field private static final DIALOG_TAGS:I = 0x1

.field private static final MENU_DISTRIBUTION_START:I = 0x65

.field private static final MENU_ITEM_DELETE:I = 0x1

.field private static final MENU_ITEM_EDIT_TAGS:I = 0x8

.field private static final MENU_ITEM_ENCRYPT:I = 0x6

.field private static final MENU_ITEM_INSERT:I = 0x2

.field private static final MENU_ITEM_SEND_BY_EMAIL:I = 0x3

.field private static final MENU_ITEM_UNENCRYPT:I = 0x7

.field private static final MENU_OPEN:I = 0xa

.field private static final MENU_SEARCH:I = 0xc

.field private static final MENU_SETTINGS:I = 0xb

.field public static OVER_DAY:I = 0x0

.field private static final REQUEST_CODE_DECRYPT_TITLE:I = 0x3

.field private static final REQUEST_CODE_OPEN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "NotesList"

.field private static final debug:Z

.field public static wanpuPoints:I


# instance fields
.field private final DECRYPT_DELAY:I

.field private emptyTextView:Landroid/widget/TextView;

.field mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field mCursorUtils:Lcom/openintents/notepad/noteslist/NotesListCursor;

.field private mDecryptionFailed:Z

.field private mDecryptionSucceeded:Z

.field private mHandler:Landroid/os/Handler;

.field mLastFilter:Ljava/lang/String;

.field mSelectedTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    sput v0, Lcom/openintents/notepad/noteslist/NotesList;->wanpuPoints:I

    .line 156
    const/16 v0, 0xa

    sput v0, Lcom/openintents/notepad/noteslist/NotesList;->OVER_DAY:I

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/openintents/distribution/DistributionLibraryListActivity;-><init>()V

    .line 139
    const/16 v0, 0x64

    iput v0, p0, Lcom/openintents/notepad/noteslist/NotesList;->DECRYPT_DELAY:I

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/openintents/notepad/noteslist/NotesList;->mHandler:Landroid/os/Handler;

    .line 1220
    new-instance v0, Lcom/openintents/notepad/noteslist/NotesList$1;

    invoke-direct {v0, p0}, Lcom/openintents/notepad/noteslist/NotesList$1;-><init>(Lcom/openintents/notepad/noteslist/NotesList;)V

    iput-object v0, p0, Lcom/openintents/notepad/noteslist/NotesList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    return-void
.end method

.method private checkAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 411
    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    if-nez v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mCursorUtils:Lcom/openintents/notepad/noteslist/NotesListCursor;

    invoke-virtual {v1, v2, v2}, Lcom/openintents/notepad/noteslist/NotesListCursor;->query(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 426
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    iget-object v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mCursorUtils:Lcom/openintents/notepad/noteslist/NotesListCursor;

    invoke-direct {v1, p0, v0, v2}, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/openintents/notepad/noteslist/NotesListCursor;)V

    iput-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    .line 427
    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    invoke-virtual {p0, v1}, Lcom/openintents/notepad/noteslist/NotesList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 429
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->updateQuery()V

    .line 433
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    invoke-virtual {v1}, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    goto :goto_0
.end method

.method private editTags()V
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/noteslist/NotesList;->showDialog(I)V

    .line 821
    return-void
.end method

.method private encryptNote(JLjava/lang/String;)V
    .locals 12
    .param p1, "id"    # J
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 782
    .local v1, "noteUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 783
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "note"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "tags"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "encrypted"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    .line 784
    const/4 v4, 0x0

    invoke-static {p0}, Lcom/openintents/notepad/PreferenceActivity;->getSortOrderFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 782
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 786
    .local v6, "c":Landroid/database/Cursor;
    const-string v11, ""

    .line 787
    .local v11, "title":Ljava/lang/String;
    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/noteslist/NotesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 788
    .local v10, "text":Ljava/lang/String;
    const-string v9, ""

    .line 789
    .local v9, "tags":Ljava/lang/String;
    const/4 v7, 0x0

    .line 790
    .local v7, "encrypted":I
    if-eqz v6, :cond_0

    .line 791
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 792
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 793
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 794
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 795
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 798
    :cond_0
    const-string v0, "com.openintents.action.ENCRYPT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    .line 800
    const v0, 0x7f060046

    .line 801
    const/4 v1, 0x0

    .line 799
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .end local v1    # "noteUri":Landroid/net/Uri;
    move-result-object v0

    .line 801
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 817
    :goto_0
    return-void

    .line 805
    .restart local v1    # "noteUri":Landroid/net/Uri;
    :cond_1
    const-string v0, "com.openintents.action.DECRYPT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v7, :cond_2

    .line 807
    const v0, 0x7f060047

    .line 808
    const/4 v1, 0x0

    .line 806
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .end local v1    # "noteUri":Landroid/net/Uri;
    move-result-object v0

    .line 808
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 812
    .restart local v1    # "noteUri":Landroid/net/Uri;
    :cond_2
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/openintents/notepad/crypto/EncryptActivity;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 813
    .local v8, "i":Landroid/content/Intent;
    const-string v0, "com.openintents.notepad.extra.action"

    invoke-virtual {v8, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    const-string v0, "com.openintents.extra.TEXT_ARRAY"

    invoke-static {v10, v11, v9}, Lcom/openintents/notepad/crypto/EncryptActivity;->getCryptoStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    const-string v0, "com.openintents.notepad.extra.uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "noteUri":Landroid/net/Uri;
    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    invoke-virtual {p0, v8}, Lcom/openintents/notepad/noteslist/NotesList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getSdCardPath()Ljava/io/File;
    .locals 1

    .prologue
    .line 826
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 825
    return-object v0
.end method

.method private insertNewNote()V
    .locals 3

    .prologue
    .line 633
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 634
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.openintents.extra.TAGS"

    iget-object v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mSelectedTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0, v0}, Lcom/openintents/notepad/noteslist/NotesList;->startActivity(Landroid/content/Intent;)V

    .line 636
    return-void
.end method

.method private openFromSdCard()V
    .locals 7

    .prologue
    const-string v6, "/"

    .line 644
    invoke-direct {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getSdCardPath()Ljava/io/File;

    move-result-object v2

    .line 645
    .local v2, "sdcard":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "directory":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    :cond_0
    invoke-static {v0}, Lcom/openintents/notepad/util/FileUriUtils;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 651
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/openintents/notepad/filename/DialogHostingActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 652
    .local v1, "i":Landroid/content/Intent;
    const-string v4, "com.openintents.notepad.extra.dialog_id"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 653
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 654
    const/4 v4, 0x5

    invoke-virtual {p0, v1, v4}, Lcom/openintents/notepad/noteslist/NotesList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 655
    return-void
.end method

.method private saveFile(Landroid/net/Uri;Ljava/io/File;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 1185
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "encrypted"

    aput-object v1, v2, v10

    const-string v1, "note"

    aput-object v1, v2, v11

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1187
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1188
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1189
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1190
    .local v7, "encrypted":J
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1191
    .local v9, "note":Ljava/lang/String;
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    .line 1194
    invoke-virtual {p0, p2, v9}, Lcom/openintents/notepad/noteslist/NotesList;->writeToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 1203
    .end local v7    # "encrypted":J
    .end local v9    # "note":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    const-string v0, "NotesList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error saving file: Uri not valid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private search()V
    .locals 0

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->onSearchRequested()Z

    .line 640
    return-void
.end method

.method private sendNoteByEmail(J)V
    .locals 13
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 738
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 741
    .local v1, "noteUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 742
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "title"

    aput-object v4, v2, v11

    const-string v4, "note"

    aput-object v4, v2, v12

    .line 743
    invoke-static {p0}, Lcom/openintents/notepad/PreferenceActivity;->getSortOrderFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    .line 741
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 745
    .local v6, "c":Landroid/database/Cursor;
    const-string v10, ""

    .line 746
    .local v10, "title":Ljava/lang/String;
    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/noteslist/NotesList;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 747
    .local v7, "content":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 748
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 749
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 750
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 756
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 757
    .local v9, "i":Landroid/content/Intent;
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    const-string v0, "text/plain"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 760
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v9, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/openintents/notepad/noteslist/NotesList;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v8

    .line 765
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    const v0, 0x7f06003f

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 766
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 767
    const-string v0, "NotesList"

    const-string v2, "Email client not installed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showNotesListSettings()V
    .locals 2

    .prologue
    .line 830
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/openintents/notepad/PreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/noteslist/NotesList;->startActivity(Landroid/content/Intent;)V

    .line 831
    return-void
.end method


# virtual methods
.method public decryptDelayed()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 879
    invoke-static {}, Lcom/openintents/notepad/noteslist/NotesListCursor;->getNextEncryptedString()Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "encryptedString":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 881
    invoke-virtual {p0, v3}, Lcom/openintents/notepad/noteslist/NotesList;->setProgressBarIndeterminateVisibility(Z)V

    .line 882
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/openintents/notepad/noteslist/NotesList;->decryptDelayed(Ljava/lang/String;J)V

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-boolean v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDecryptionFailed:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDecryptionSucceeded:Z

    if-nez v2, :cond_2

    .line 887
    iget-object v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    invoke-virtual {v2}, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Lcom/openintents/notepad/noteslist/NotesListCursor;

    .line 888
    .local v1, "nlc":Lcom/openintents/notepad/noteslist/NotesListCursor;
    iget-boolean v2, v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContainsEncryptedStrings:Z

    if-eqz v2, :cond_0

    .line 890
    invoke-virtual {p0, v3}, Lcom/openintents/notepad/noteslist/NotesList;->setProgressBarIndeterminateVisibility(Z)V

    .line 891
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/openintents/notepad/noteslist/NotesList;->decryptDelayed(Ljava/lang/String;J)V

    goto :goto_0

    .line 895
    .end local v1    # "nlc":Lcom/openintents/notepad/noteslist/NotesListCursor;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/openintents/notepad/noteslist/NotesList;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0
.end method

.method public decryptDelayed(Ljava/lang/String;J)V
    .locals 2
    .param p1, "encryptedTitle"    # Ljava/lang/String;
    .param p2, "delayMillis"    # J

    .prologue
    .line 900
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/openintents/notepad/noteslist/NotesList$5;

    invoke-direct {v1, p0, p1}, Lcom/openintents/notepad/noteslist/NotesList$5;-><init>(Lcom/openintents/notepad/noteslist/NotesList;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 907
    return-void
.end method

.method public decryptTitle(Ljava/lang/String;)V
    .locals 4
    .param p1, "encryptedTitle"    # Ljava/lang/String;

    .prologue
    .line 911
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 912
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.openintents.action.DECRYPT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    if-eqz p1, :cond_0

    .line 914
    const-string v2, "com.openintents.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    const-string v2, "com.openintents.notepad.extra.encrypted_text"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    :cond_0
    const-string v2, "com.openintents.extra.PROMPT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 921
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/openintents/notepad/noteslist/NotesList;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDecryptionFailed:Z

    .line 929
    const-string v2, "NotesList"

    const-string v3, "failed to invoke encrypt"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getTaglist(Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 9
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x0

    .line 987
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 988
    .local v4, "tagset":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, -0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 989
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1004
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1007
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1009
    new-array v5, v8, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/openintents/notepad/noteslist/NotesList;
    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 990
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/openintents/notepad/noteslist/NotesList;
    :cond_1
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 991
    .local v3, "tags":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 993
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, "smalltaglist":[Ljava/lang/String;
    array-length v5, v1

    move v6, v8

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v2, v1, v6

    .line 995
    .local v2, "tag":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 996
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public getUpdatePoints(Ljava/lang/String;I)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 1233
    sput p2, Lcom/openintents/notepad/noteslist/NotesList;->wanpuPoints:I

    .line 1234
    const-string v0, "NotesList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUpdatePoints:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/openintents/notepad/noteslist/NotesList;->wanpuPoints:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    return-void
.end method

.method public getUpdatePointsFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 1239
    const/4 v0, 0x0

    sput v0, Lcom/openintents/notepad/noteslist/NotesList;->wanpuPoints:I

    .line 1240
    const-string v0, "NotesList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUpdatePointsFailed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/openintents/notepad/noteslist/NotesList;->wanpuPoints:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 1094
    packed-switch p1, :pswitch_data_0

    .line 1181
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1096
    :pswitch_1
    if-ne p2, v4, :cond_2

    if-eqz p3, :cond_2

    .line 1097
    const-string v4, "com.openintents.extra.TEXT"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, "decryptedText":Ljava/lang/String;
    const-string v4, "com.openintents.notepad.extra.encrypted_text"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1100
    .local v1, "encryptedText":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1106
    sget-object v4, Lcom/openintents/notepad/noteslist/NotesListCursor;->mEncryptedStringHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    :cond_1
    iput-boolean v5, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDecryptionSucceeded:Z

    .line 1111
    sput-boolean v5, Lcom/openintents/notepad/noteslist/NotesListCursor;->mLoggedIn:Z

    .line 1116
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->decryptDelayed()V

    goto :goto_0

    .line 1120
    .end local v0    # "decryptedText":Ljava/lang/String;
    .end local v1    # "encryptedText":Ljava/lang/String;
    :cond_2
    iput-boolean v5, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDecryptionFailed:Z

    .line 1121
    invoke-virtual {p0, v6}, Lcom/openintents/notepad/noteslist/NotesList;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 1125
    :pswitch_2
    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_0

    .line 1127
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/openintents/notepad/util/FileUriUtils;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 1129
    .local v2, "filename":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1131
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/openintents/notepad/NoteEditor;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1132
    .local v3, "i":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1134
    invoke-virtual {p0, v3}, Lcom/openintents/notepad/noteslist/NotesList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1136
    .end local v3    # "i":Landroid/content/Intent;
    :cond_3
    const v4, 0x7f060054

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 1137
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1094
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 701
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iput-object v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v2, v4

    .line 733
    :goto_0
    return v2

    .line 702
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 703
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "NotesList"

    const-string v3, "bad menuInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    .line 704
    goto :goto_0

    .line 710
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :pswitch_1
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 711
    iget-object v3, p0, Lcom/openintents/notepad/noteslist/NotesList;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v3, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 710
    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 712
    .local v1, "noteUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move v2, v5

    .line 715
    goto :goto_0

    .line 718
    .end local v1    # "noteUri":Landroid/net/Uri;
    :pswitch_2
    iget-object v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v2, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/openintents/notepad/noteslist/NotesList;->sendNoteByEmail(J)V

    move v2, v5

    .line 719
    goto :goto_0

    .line 721
    :pswitch_3
    iget-object v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v2, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-string v4, "com.openintents.action.ENCRYPT"

    invoke-direct {p0, v2, v3, v4}, Lcom/openintents/notepad/noteslist/NotesList;->encryptNote(JLjava/lang/String;)V

    move v2, v5

    .line 722
    goto :goto_0

    .line 724
    :pswitch_4
    iget-object v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v2, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    const-string v4, "com.openintents.action.DECRYPT"

    invoke-direct {p0, v2, v3, v4}, Lcom/openintents/notepad/noteslist/NotesList;->encryptNote(JLjava/lang/String;)V

    move v2, v5

    .line 725
    goto :goto_0

    .line 727
    :pswitch_5
    invoke-direct {p0}, Lcom/openintents/notepad/noteslist/NotesList;->editTags()V

    move v2, v5

    .line 728
    goto :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/openintents/distribution/DistributionLibraryListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/openintents/notepad/noteslist/NotesList;->requestWindowFeature(I)Z

    .line 163
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x400

    .line 164
    const/16 v12, 0x400

    .line 163
    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 170
    iget-object v10, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDistribution:Lcom/openintents/distribution/DistributionLibrary;

    const/16 v11, 0x65

    const/16 v12, 0x64

    invoke-virtual {v10, v11, v12}, Lcom/openintents/distribution/DistributionLibrary;->setFirst(II)V

    .line 174
    iget-object v10, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDistribution:Lcom/openintents/distribution/DistributionLibrary;

    invoke-virtual {v10}, Lcom/openintents/distribution/DistributionLibrary;->showEulaOrNewVersion()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 292
    :goto_0
    return-void

    .line 178
    :cond_0
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/openintents/notepad/noteslist/NotesList;->setDefaultKeyMode(I)V

    .line 182
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 183
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_1

    .line 184
    sget-object v10, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 187
    :cond_1
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/openintents/notepad/noteslist/NotesList;->requestWindowFeature(I)Z

    .line 190
    const v10, 0x7f030004

    invoke-virtual {p0, v10}, Lcom/openintents/notepad/noteslist/NotesList;->setContentView(I)V

    .line 192
    const v10, 0x7f090009

    invoke-virtual {p0, v10}, Lcom/openintents/notepad/noteslist/NotesList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/openintents/notepad/noteslist/NotesList;->emptyTextView:Landroid/widget/TextView;

    .line 194
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 195
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getListView()Landroid/widget/ListView;

    move-result-object v10

    iget-object v11, p0, Lcom/openintents/notepad/noteslist/NotesList;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 196
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getListView()Landroid/widget/ListView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 226
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/openintents/notepad/noteslist/NotesList;->mLastFilter:Ljava/lang/String;

    .line 228
    if-eqz p1, :cond_2

    .line 229
    const-string v10, "last_filter"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/openintents/notepad/noteslist/NotesList;->mLastFilter:Ljava/lang/String;

    .line 232
    const-string v10, "ctx_menu_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 233
    const-string v10, "ctx_menu_id"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 234
    .local v4, "id":J
    const-string v10, "ctx_menu_position"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 235
    .local v8, "position":I
    new-instance v10, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v8, v4, v5}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v10, p0, Lcom/openintents/notepad/noteslist/NotesList;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 239
    .end local v4    # "id":J
    .end local v8    # "position":I
    :cond_2
    new-instance v10, Lcom/openintents/notepad/noteslist/NotesListCursor;

    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/openintents/notepad/noteslist/NotesListCursor;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v10, p0, Lcom/openintents/notepad/noteslist/NotesList;->mCursorUtils:Lcom/openintents/notepad/noteslist/NotesListCursor;

    .line 244
    invoke-direct {p0}, Lcom/openintents/notepad/noteslist/NotesList;->checkAdapter()V

    .line 246
    const-string v10, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 247
    const v10, 0x7f060039

    invoke-virtual {p0, v10}, Lcom/openintents/notepad/noteslist/NotesList;->setTitle(I)V

    .line 250
    :cond_3
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->updateTagList()V

    .line 252
    iget-object v10, p0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 254
    .local v3, "cur":Landroid/database/Cursor;
    new-instance v10, Lcom/openintents/notepad/noteslist/NotesList$2;

    invoke-direct {v10, p0}, Lcom/openintents/notepad/noteslist/NotesList$2;-><init>(Lcom/openintents/notepad/noteslist/NotesList;)V

    invoke-interface {v3, v10}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 261
    const v10, 0x7f090008

    invoke-virtual {p0, v10}, Lcom/openintents/notepad/noteslist/NotesList;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 263
    .local v9, "s":Landroid/widget/Spinner;
    new-instance v10, Lcom/openintents/notepad/noteslist/NotesList$3;

    invoke-direct {v10, p0}, Lcom/openintents/notepad/noteslist/NotesList$3;-><init>(Lcom/openintents/notepad/noteslist/NotesList;)V

    .line 262
    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 275
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDecryptionFailed:Z

    .line 276
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDecryptionSucceeded:Z

    .line 278
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 279
    .local v7, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v10, 0x50

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 280
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v0, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 281
    .local v0, "adMogoLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v7, v0}, Lcom/openintents/notepad/noteslist/NotesList;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    new-instance v1, Lcom/adview/AdViewLayout;

    const-string v10, "SDK20112309270518scqknh3h07ank7k"

    invoke-direct {v1, p0, v10}, Lcom/adview/AdViewLayout;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 286
    .local v1, "adViewLayout":Lcom/adview/AdViewLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v2, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 287
    .local v2, "adViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v7, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->invalidate()V

    .line 290
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    .line 291
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/waps/AppConnect;->getPoints(Lcom/waps/UpdatePointsNotifier;)V

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 20
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 662
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v18, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .local v18, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/noteslist/NotesList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    move v6, v0

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/database/Cursor;

    .line 669
    .local v14, "cursor":Landroid/database/Cursor;
    if-nez v14, :cond_1

    .line 696
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v18    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_0
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v15

    .line 664
    .local v15, "e":Ljava/lang/ClassCastException;
    const-string v5, "NotesList"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 674
    .end local v15    # "e":Ljava/lang/ClassCastException;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/noteslist/NotesList;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 675
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    move-wide v6, v0

    .line 674
    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 677
    .local v19, "noteUri":Landroid/net/Uri;
    const/4 v5, 0x3

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 680
    .local v16, "encrypted":J
    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 682
    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const v8, 0x7f06004a

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 685
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0x7f06002b

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 689
    const-wide/16 v5, 0x0

    cmp-long v5, v16, v5

    if-nez v5, :cond_0

    .line 690
    new-instance v11, Landroid/content/Intent;

    const/4 v5, 0x0

    move-object v0, v11

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 691
    .local v11, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v11, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    const/high16 v6, 0x40000

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 693
    new-instance v9, Landroid/content/ComponentName;

    const-class v5, Lcom/openintents/notepad/noteslist/NotesList;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p1

    .line 692
    invoke-interface/range {v5 .. v13}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 937
    packed-switch p1, :pswitch_data_0

    .line 944
    :pswitch_0
    invoke-super {p0, p1}, Lcom/openintents/distribution/DistributionLibraryListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 939
    :pswitch_1
    new-instance v0, Lcom/openintents/notepad/noteslist/TagsDialog;

    invoke-direct {v0, p0}, Lcom/openintents/notepad/noteslist/TagsDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 941
    :pswitch_2
    new-instance v0, Lcom/openintents/distribution/DownloadOIAppDialog;

    .line 942
    const/4 v1, 0x2

    .line 941
    invoke-direct {v0, p0, v1}, Lcom/openintents/distribution/DownloadOIAppDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 937
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v8, 0x73

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 509
    invoke-super {p0, p1}, Lcom/openintents/distribution/DistributionLibraryListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 513
    const/4 v3, 0x2

    const v4, 0x7f06002c

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x31

    .line 514
    const/16 v7, 0x69

    .line 513
    invoke-interface {v3, v4, v7}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v3

    .line 514
    const v4, 0x1080033

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 516
    const/16 v3, 0xc

    const v4, 0x7f060064

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x32

    invoke-interface {v3, v4, v8}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v3

    .line 517
    const v4, 0x108004f

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 519
    const/16 v3, 0xa

    const v4, 0x7f06004e

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x33

    .line 520
    const/16 v7, 0x6f

    .line 519
    invoke-interface {v3, v4, v7}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v3

    .line 520
    const v4, 0x7f020003

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 522
    const/16 v3, 0xb

    const v4, 0x7f06007a

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 523
    const v4, 0x1080049

    .line 522
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 523
    const/16 v4, 0x39

    invoke-interface {v3, v4, v8}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 526
    iget-object v3, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDistribution:Lcom/openintents/distribution/DistributionLibrary;

    invoke-virtual {v3, p1}, Lcom/openintents/distribution/DistributionLibrary;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 532
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v6, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 534
    .local v6, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    new-instance v0, Lcom/openintents/util/MenuIntentOptionsWithIcons;

    invoke-direct {v0, p0, p1}, Lcom/openintents/util/MenuIntentOptionsWithIcons;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    .line 543
    .local v0, "menu2":Lcom/openintents/util/MenuIntentOptionsWithIcons;
    new-instance v4, Landroid/content/ComponentName;

    const-class v3, Lcom/openintents/notepad/noteslist/NotesList;

    invoke-direct {v4, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move v3, v2

    move v7, v2

    move-object v8, v5

    .line 542
    invoke-virtual/range {v0 .. v8}, Lcom/openintents/util/MenuIntentOptionsWithIcons;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 545
    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 488
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waps/AppConnect;->finalize()V

    .line 489
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/waps/AppConnect;->spendPoints(ILcom/waps/UpdatePointsNotifier;)V

    .line 490
    invoke-super {p0}, Lcom/openintents/distribution/DistributionLibraryListActivity;->onDestroy()V

    .line 491
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 18
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    .line 1017
    .local v4, "c":Landroid/database/Cursor;
    move-object v0, v4

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1019
    const/16 v16, 0x3

    move-object v0, v4

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1021
    .local v7, "encrypted":J
    const/16 v16, 0x4

    move-object v0, v4

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1025
    .local v9, "encryptedTitle":Ljava/lang/String;
    const/16 v16, 0x1

    move-object v0, v4

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1028
    .local v13, "title":Ljava/lang/String;
    const-wide/16 v16, 0x0

    cmp-long v16, v7, v16

    if-eqz v16, :cond_0

    .line 1029
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 1033
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1034
    .local v10, "intent":Landroid/content/Intent;
    const-string v16, "com.openintents.action.DECRYPT"

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    const-string v16, "com.openintents.extra.TEXT"

    move-object v0, v10

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    const-string v16, "com.openintents.notepad.extra.encrypted_text"

    move-object v0, v10

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    const-string v16, "com.openintents.extra.PROMPT"

    const/16 v17, 0x1

    move-object v0, v10

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1041
    const/16 v16, 0x3

    :try_start_0
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/noteslist/NotesList;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    .end local v10    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1042
    .restart local v10    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 1043
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/openintents/notepad/noteslist/NotesList;->mDecryptionFailed:Z

    .line 1048
    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/openintents/notepad/noteslist/NotesList;->showDialog(I)V

    .line 1049
    const-string v16, "NotesList"

    const-string v17, "failed to invoke encrypt"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1055
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/noteslist/NotesList;->getIntent()Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 1057
    .local v14, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/noteslist/NotesList;->getIntent()Landroid/content/Intent;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1058
    .local v3, "action":Ljava/lang/String;
    const-string v16, "android.intent.action.PICK"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 1059
    const-string v16, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1062
    :cond_1
    const/16 v16, -0x1

    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/noteslist/NotesList;->setResult(ILandroid/content/Intent;)V

    .line 1063
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/noteslist/NotesList;->finish()V

    goto :goto_0

    .line 1064
    :cond_2
    const-string v16, "android.intent.action.CREATE_SHORTCUT"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1065
    new-instance v5, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v5, "data":Landroid/content/Intent;
    invoke-virtual {v5, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1068
    move-object v15, v13

    .line 1069
    .local v15, "useTitle":Ljava/lang/String;
    const-wide/16 v16, 0x0

    cmp-long v16, v7, v16

    if-eqz v16, :cond_3

    .line 1073
    move-object v15, v9

    .line 1076
    :cond_3
    new-instance v11, Landroid/content/Intent;

    const-string v16, "android.intent.action.CREATE_SHORTCUT"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v11, "shortcut":Landroid/content/Intent;
    const-string v16, "android.intent.extra.shortcut.NAME"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1078
    const-string v16, "android.intent.extra.shortcut.INTENT"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1079
    const v16, 0x7f020001

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v12

    .line 1080
    .local v12, "sir":Landroid/content/Intent$ShortcutIconResource;
    const-string v16, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object v0, v11

    move-object/from16 v1, v16

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1083
    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/noteslist/NotesList;->setResult(ILandroid/content/Intent;)V

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/noteslist/NotesList;->finish()V

    goto/16 :goto_0

    .line 1087
    .end local v5    # "data":Landroid/content/Intent;
    .end local v11    # "shortcut":Landroid/content/Intent;
    .end local v12    # "sir":Landroid/content/Intent$ShortcutIconResource;
    .end local v15    # "useTitle":Ljava/lang/String;
    :cond_4
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.EDIT"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/openintents/notepad/noteslist/NotesList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x1

    .line 592
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 593
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 594
    .local v1, "day":I
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 595
    .local v2, "hour":I
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 596
    .local v3, "minutes":I
    const-string v5, "NotesList"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "day:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--hour:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-minutes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    sget v5, Lcom/openintents/notepad/noteslist/NotesList;->wanpuPoints:I

    const/16 v6, 0x32

    if-ge v5, v6, :cond_2

    sget v5, Lcom/openintents/notepad/noteslist/NotesList;->OVER_DAY:I

    if-gt v1, v5, :cond_0

    const/16 v5, 0x12

    if-lt v2, v5, :cond_2

    if-lt v3, v9, :cond_2

    .line 599
    :cond_0
    sget v5, Lcom/openintents/notepad/noteslist/NotesList;->wanpuPoints:I

    if-nez v5, :cond_1

    move v4, v9

    .line 600
    .local v4, "nowPoints":I
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 601
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u7684\u79ef\u5206\u5df2\u4e0d\u8db350(\u60a8\u76ee\u524d\u7684\u79ef\u5206\u4e3a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\uff0c\u8bf7\u4e0b\u8f7d\u5e94\u7528\u5e76\u6fc0\u6d3b\u65b9\u53ef\u4f7f\u7528\u8be5\u529f\u80fd.\u8c22\u8c22\u60a8\u4e00\u76f4\u4ee5\u6765\u7684\u652f\u6301."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 602
    const-string v6, "\u786e\u5b9a"

    new-instance v7, Lcom/openintents/notepad/noteslist/NotesList$4;

    invoke-direct {v7, p0}, Lcom/openintents/notepad/noteslist/NotesList$4;-><init>(Lcom/openintents/notepad/noteslist/NotesList;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 608
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v5, v8

    .line 625
    .end local v4    # "nowPoints":I
    :goto_1
    return v5

    .line 599
    :cond_1
    sget v5, Lcom/openintents/notepad/noteslist/NotesList;->wanpuPoints:I

    move v4, v5

    goto :goto_0

    .line 611
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 625
    invoke-super {p0, p1}, Lcom/openintents/distribution/DistributionLibraryListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_1

    .line 613
    :sswitch_0
    invoke-direct {p0}, Lcom/openintents/notepad/noteslist/NotesList;->insertNewNote()V

    move v5, v8

    .line 614
    goto :goto_1

    .line 616
    :sswitch_1
    invoke-direct {p0}, Lcom/openintents/notepad/noteslist/NotesList;->search()V

    move v5, v8

    .line 617
    goto :goto_1

    .line 619
    :sswitch_2
    invoke-direct {p0}, Lcom/openintents/notepad/noteslist/NotesList;->openFromSdCard()V

    move v5, v8

    .line 620
    goto :goto_1

    .line 622
    :sswitch_3
    invoke-direct {p0}, Lcom/openintents/notepad/noteslist/NotesList;->showNotesListSettings()V

    move v5, v8

    .line 623
    goto :goto_1

    .line 611
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 456
    invoke-super {p0}, Lcom/openintents/distribution/DistributionLibraryListActivity;->onPause()V

    .line 458
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesList;->mCursorUtils:Lcom/openintents/notepad/noteslist/NotesListCursor;

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mCurrentFilter:Ljava/lang/String;

    iput-object v0, p0, Lcom/openintents/notepad/noteslist/NotesList;->mLastFilter:Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/noteslist/NotesList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 474
    sput-boolean v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mLoggedIn:Z

    .line 479
    const/4 v0, 0x1

    sput-boolean v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mSuspendQueries:Z

    .line 480
    iput-boolean v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDecryptionFailed:Z

    .line 481
    iput-boolean v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDecryptionSucceeded:Z

    .line 482
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 952
    packed-switch p1, :pswitch_data_0

    .line 975
    :goto_0
    :pswitch_0
    return-void

    .line 954
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/openintents/notepad/noteslist/TagsDialog;

    move-object v2, v0

    .line 956
    .local v2, "d":Lcom/openintents/notepad/noteslist/TagsDialog;
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/openintents/notepad/noteslist/NotesList;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v9, v9, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 958
    .local v7, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    invoke-virtual {v8}, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 959
    .local v1, "c":Landroid/database/Cursor;
    iget-object v8, p0, Lcom/openintents/notepad/noteslist/NotesList;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v8, v8, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 960
    const/4 v8, 0x2

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 961
    .local v6, "tags":Ljava/lang/String;
    const/4 v8, 0x3

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 963
    .local v3, "encrypted":J
    invoke-virtual {v2, v7}, Lcom/openintents/notepad/noteslist/TagsDialog;->setUri(Landroid/net/Uri;)V

    .line 964
    invoke-virtual {v2, v6}, Lcom/openintents/notepad/noteslist/TagsDialog;->setTags(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v2, v3, v4}, Lcom/openintents/notepad/noteslist/TagsDialog;->setEncrypted(J)V

    .line 967
    invoke-virtual {p0, v1}, Lcom/openintents/notepad/noteslist/NotesList;->getTaglist(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v5

    .line 968
    .local v5, "taglist":[Ljava/lang/String;
    invoke-virtual {v2, v5}, Lcom/openintents/notepad/noteslist/TagsDialog;->setTagList([Ljava/lang/String;)V

    goto :goto_0

    .line 972
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v2    # "d":Lcom/openintents/notepad/noteslist/TagsDialog;
    .end local v3    # "encrypted":J
    .end local v5    # "taglist":[Ljava/lang/String;
    .end local v6    # "tags":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :pswitch_2
    invoke-static {p0, p2}, Lcom/openintents/distribution/DownloadOIAppDialog;->onPrepareDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0

    .line 952
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x40000

    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 550
    invoke-super {p0, p1}, Lcom/openintents/distribution/DistributionLibraryListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 551
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    move v9, v13

    .line 558
    .local v9, "haveItems":Z
    :goto_0
    if-eqz v9, :cond_2

    .line 560
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 561
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getSelectedItemId()J

    move-result-wide v11

    .line 560
    invoke-static {v3, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 564
    .local v10, "uri":Landroid/net/Uri;
    new-array v5, v13, [Landroid/content/Intent;

    .line 565
    .local v5, "specifics":[Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.EDIT"

    invoke-direct {v3, v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v3, v5, v2

    .line 566
    new-array v8, v13, [Landroid/view/MenuItem;

    .line 569
    .local v8, "items":[Landroid/view/MenuItem;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 570
    .local v6, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    new-instance v0, Lcom/openintents/util/MenuIntentOptionsWithIcons;

    invoke-direct {v0, p0, p1}, Lcom/openintents/util/MenuIntentOptionsWithIcons;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    .local v0, "menu2":Lcom/openintents/util/MenuIntentOptionsWithIcons;
    move v3, v2

    move v7, v2

    .line 576
    invoke-virtual/range {v0 .. v8}, Lcom/openintents/util/MenuIntentOptionsWithIcons;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 580
    aget-object v1, v8, v2

    if-eqz v1, :cond_0

    .line 581
    aget-object v1, v8, v2

    const/16 v2, 0x31

    const/16 v3, 0x65

    invoke-interface {v1, v2, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 587
    .end local v0    # "menu2":Lcom/openintents/util/MenuIntentOptionsWithIcons;
    .end local v5    # "specifics":[Landroid/content/Intent;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "items":[Landroid/view/MenuItem;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return v13

    .end local v9    # "haveItems":Z
    :cond_1
    move v9, v2

    .line 551
    goto :goto_0

    .line 584
    .restart local v9    # "haveItems":Z
    :cond_2
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeGroup(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    invoke-super {p0}, Lcom/openintents/distribution/DistributionLibraryListActivity;->onResume()V

    .line 346
    invoke-static {p0}, Lcom/waps/AppConnect;->getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/waps/AppConnect;->getPoints(Lcom/waps/UpdatePointsNotifier;)V

    .line 349
    sput-boolean v2, Lcom/openintents/notepad/noteslist/NotesListCursor;->mSuspendQueries:Z

    .line 354
    invoke-direct {p0}, Lcom/openintents/notepad/noteslist/NotesList;->checkAdapter()V

    .line 356
    iget-boolean v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDecryptionFailed:Z

    if-nez v1, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->decryptDelayed()V

    .line 363
    :goto_0
    iget-boolean v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDecryptionSucceeded:Z

    if-eqz v1, :cond_0

    .line 364
    const/4 v1, 0x1

    sput-boolean v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mLoggedIn:Z

    .line 368
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.openintents.action.CRYPTO_LOGGED_OUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/openintents/notepad/noteslist/NotesList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    return-void

    .line 360
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iput-boolean v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mDecryptionFailed:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 496
    invoke-super {p0, p1}, Lcom/openintents/distribution/DistributionLibraryListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 498
    const-string v0, "last_filter"

    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mCursorUtils:Lcom/openintents/notepad/noteslist/NotesListCursor;

    iget-object v1, v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mCurrentFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesList;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 501
    const-string v0, "ctx_menu_id"

    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-wide v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 502
    const-string v0, "ctx_menu_position"

    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 504
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 836
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "NotesList"

    .line 840
    packed-switch p2, :pswitch_data_0

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 842
    :pswitch_0
    const-string v1, "NotesList"

    const-string v1, "idle"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    iput-boolean v2, v1, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->mBusy:Z

    .line 845
    sget-object v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mEncryptedStringList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 846
    sget-object v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mEncryptedStringList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 847
    .local v0, "encryptedString":Ljava/lang/String;
    const-string v1, "NotesList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decrypt idle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-virtual {p0, v0}, Lcom/openintents/notepad/noteslist/NotesList;->decryptTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 869
    .end local v0    # "encryptedString":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    iput-boolean v3, v1, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->mBusy:Z

    goto :goto_0

    .line 872
    :pswitch_2
    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    iput-boolean v3, v1, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->mBusy:Z

    goto :goto_0

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected updateQuery()V
    .locals 5

    .prologue
    .line 440
    const v2, 0x7f090008

    invoke-virtual {p0, v2}, Lcom/openintents/notepad/noteslist/NotesList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 442
    .local v1, "s":Landroid/widget/Spinner;
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    .line 443
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mSelectedTag:Ljava/lang/String;

    .line 449
    :goto_0
    iget-object v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    iget-object v3, p0, Lcom/openintents/notepad/noteslist/NotesList;->mLastFilter:Ljava/lang/String;

    iget-object v4, p0, Lcom/openintents/notepad/noteslist/NotesList;->mSelectedTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 450
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

    invoke-virtual {v2, v0}, Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 452
    return-void

    .line 445
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/openintents/notepad/noteslist/NotesList;->mSelectedTag:Ljava/lang/String;

    goto :goto_0
.end method

.method protected updateTagList()V
    .locals 14

    .prologue
    .line 296
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v12, "taglist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v0, 0x7f06006e

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/noteslist/NotesList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 302
    .local v1, "notesUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/NotesList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 303
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tags"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "encrypted"

    aput-object v4, v2, v3

    .line 304
    const/4 v3, 0x0

    .line 305
    const/4 v4, 0x0

    .line 306
    const/4 v5, 0x0

    .line 302
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 308
    .local v9, "managedCursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    .end local v1    # "notesUri":Landroid/net/Uri;
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 311
    .local v13, "tags":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 313
    .local v7, "encrypted":J
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    const-wide/16 v2, 0x0

    cmp-long v0, v7, v2

    if-nez v0, :cond_1

    .line 315
    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_3

    .line 327
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 309
    if-nez v0, :cond_0

    .line 330
    .end local v7    # "encrypted":J
    .end local v13    # "tags":Ljava/lang/String;
    :cond_2
    const v0, 0x7f090008

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/noteslist/NotesList;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 331
    .local v10, "s":Landroid/widget/Spinner;
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    invoke-direct {v6, p0, v0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 332
    .local v6, "adapter":Landroid/widget/ArrayAdapter;
    const v0, 0x1090009

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 333
    invoke-virtual {v10, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 336
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 337
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 341
    :goto_1
    return-void

    .line 315
    .end local v6    # "adapter":Landroid/widget/ArrayAdapter;
    .end local v10    # "s":Landroid/widget/Spinner;
    .restart local v7    # "encrypted":J
    .restart local v13    # "tags":Ljava/lang/String;
    :cond_3
    aget-object v11, v0, v2

    .line 316
    .local v11, "tag":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 317
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v7    # "encrypted":J
    .end local v11    # "tag":Ljava/lang/String;
    .end local v13    # "tags":Ljava/lang/String;
    .restart local v6    # "adapter":Landroid/widget/ArrayAdapter;
    .restart local v10    # "s":Landroid/widget/Spinner;
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1
.end method

.method writeToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1207
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1208
    .local v1, "fstream":Ljava/io/FileWriter;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1209
    .local v2, "out":Ljava/io/BufferedWriter;
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 1211
    const v3, 0x7f060055

    .line 1212
    const/4 v4, 0x0

    .line 1211
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 1212
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    .end local v1    # "fstream":Ljava/io/FileWriter;
    .end local v2    # "out":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 1213
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1214
    .local v0, "e":Ljava/io/IOException;
    const v3, 0x7f060052

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 1215
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1216
    const-string v3, "NotesList"

    const-string v4, "Error writing file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
