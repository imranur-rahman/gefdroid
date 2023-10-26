.class public Lcom/openintents/notepad/NoteEditor;
.super Landroid/app/Activity;
.source "NoteEditor.java"

# interfaces
.implements Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openintents/notepad/NoteEditor$LinedEditText;
    }
.end annotation


# static fields
.field private static final BUNDLE_APPLY_TEXT:Ljava/lang/String; = "apply_text"

.field private static final BUNDLE_APPLY_TEXT_AFTER:Ljava/lang/String; = "apply_text_after"

.field private static final BUNDLE_APPLY_TEXT_BEFORE:Ljava/lang/String; = "apply_text_before"

.field private static final BUNDLE_FILE_CONTENT:Ljava/lang/String; = "file_content"

.field private static final BUNDLE_ORIGINAL_CONTENT:Ljava/lang/String; = "original_content"

.field private static final BUNDLE_SELECTION_START:Ljava/lang/String; = "selection_start"

.field private static final BUNDLE_SELECTION_STOP:Ljava/lang/String; = "selection_stop"

.field private static final BUNDLE_STATE:Ljava/lang/String; = "state"

.field private static final BUNDLE_UNDO_REVERT:Ljava/lang/String; = "undo_revert"

.field private static final BUNDLE_URI:Ljava/lang/String; = "uri"

.field private static final COLUMN_INDEX_ENCRYPTED:I = 0x3

.field private static final COLUMN_INDEX_ID:I = 0x0

.field private static final COLUMN_INDEX_NOTE:I = 0x1

.field private static final COLUMN_INDEX_TAGS:I = 0x2

.field private static final COLUMN_INDEX_THEME:I = 0x4

.field private static final DIALOG_THEME:I = 0x2

.field private static final DIALOG_UNSAVED_CHANGES:I = 0x1

.field private static final GROUP_ID_TEXT_SELECTION_ALTERNATIVE:I = 0x4d2

.field private static final MENU_DELETE:I = 0x3

.field private static final MENU_DISCARD:I = 0x2

.field private static final MENU_IMPORT:I = 0x6

.field private static final MENU_REVERT:I = 0x1

.field private static final MENU_SAVE:I = 0x7

.field private static final MENU_SAVE_AS:I = 0x8

.field private static final MENU_SETTINGS:I = 0xa

.field private static final MENU_THEME:I = 0x9

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final REQUEST_CODE_DECRYPT:I = 0x2

.field private static final REQUEST_CODE_SAVE_AS:I = 0x4

.field private static final REQUEST_CODE_TEXT_SELECTION_ALTERNATIVE:I = 0x3

.field private static final STATE_EDIT:I = 0x0

.field private static final STATE_EDIT_NOTE_FROM_SDCARD:I = 0x2

.field private static final STATE_INSERT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NoteEditor"

.field private static final debug:Z

.field public static mLinesColor:I

.field public static mLinesMode:I

.field private static sDecryptedText:Ljava/lang/String;

.field private static sSelectionStart:I

.field private static sSelectionStop:I


# instance fields
.field private mApplyText:Ljava/lang/String;

.field private mApplyTextAfter:Ljava/lang/String;

.field private mApplyTextBefore:Ljava/lang/String;

.field public mBackgroundPadding:I

.field mCurrentTypeface:Landroid/graphics/Typeface;

.field private mCursor:Landroid/database/Cursor;

.field private mDecryptedText:Ljava/lang/String;

.field private mEncrypted:J

.field private mFileContent:Ljava/lang/String;

.field private mNoteOnly:Z

.field private mOriginalContent:Ljava/lang/String;

.field private mSelectionStart:I

.field private mSelectionStop:I

.field private mState:I

.field private mText:Landroid/widget/EditText;

.field public mTextColor:I

.field public mTextSize:F

.field public mTextTypeface:Ljava/lang/String;

.field public mTextUpperCaseFont:Z

.field private mTextWatcherSdCard:Landroid/text/TextWatcher;

.field private mTheme:Ljava/lang/String;

.field private mUndoRevert:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 107
    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 108
    const-string v2, "note"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 109
    const-string v2, "tags"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 110
    const-string v2, "encrypted"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 111
    const-string v2, "theme"

    aput-object v2, v0, v1

    .line 106
    sput-object v0, Lcom/openintents/notepad/NoteEditor;->PROJECTION:[Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/openintents/notepad/NoteEditor;->sDecryptedText:Ljava/lang/String;

    .line 184
    sput v3, Lcom/openintents/notepad/NoteEditor;->sSelectionStart:I

    .line 185
    sput v3, Lcom/openintents/notepad/NoteEditor;->sSelectionStop:I

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openintents/notepad/NoteEditor;->mNoteOnly:Z

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 476
    new-instance v0, Lcom/openintents/notepad/NoteEditor$1;

    invoke-direct {v0, p0}, Lcom/openintents/notepad/NoteEditor$1;-><init>(Lcom/openintents/notepad/NoteEditor;)V

    iput-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mTextWatcherSdCard:Landroid/text/TextWatcher;

    .line 99
    return-void
.end method

.method static synthetic access$0(Lcom/openintents/notepad/NoteEditor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/openintents/notepad/NoteEditor;)V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->updateTitleSdCard()V

    return-void
.end method

.method static synthetic access$2(Lcom/openintents/notepad/NoteEditor;)V
    .locals 0

    .prologue
    .line 1294
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->saveNote()V

    return-void
.end method

.method private applyInsertText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1154
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mApplyTextBefore:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mApplyText:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mApplyTextAfter:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mApplyTextBefore:Ljava/lang/String;

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mApplyText:Ljava/lang/String;

    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mApplyTextAfter:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/openintents/notepad/NoteEditor;->insertAtPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iput-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mApplyTextBefore:Ljava/lang/String;

    .line 1161
    iput-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mApplyText:Ljava/lang/String;

    .line 1162
    iput-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mApplyTextAfter:Ljava/lang/String;

    .line 1164
    :cond_1
    return-void
.end method

.method private applyTheme()V
    .locals 3

    .prologue
    .line 1619
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    iget v2, p0, Lcom/openintents/notepad/NoteEditor;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1620
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mCurrentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1621
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    iget v2, p0, Lcom/openintents/notepad/NoteEditor;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1623
    iget-boolean v1, p0, Lcom/openintents/notepad/NoteEditor;->mTextUpperCaseFont:Z

    if-eqz v1, :cond_0

    .line 1625
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setAutoLinkMask(I)V

    .line 1627
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-static {}, Lcom/openintents/util/UpperCaseTransformationMethod;->getInstance()Lcom/openintents/util/UpperCaseTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1637
    :goto_0
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    .line 1638
    return-void

    .line 1629
    :cond_0
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1632
    invoke-static {p0}, Lcom/openintents/notepad/PreferenceActivity;->getAutoLinkFromPreference(Landroid/content/Context;)I

    move-result v0

    .line 1634
    .local v0, "autoLink":I
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setAutoLinkMask(I)V

    goto :goto_0
.end method

.method private final deleteNote()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1133
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1135
    iput-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    .line 1136
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1137
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    :cond_0
    return-void
.end method

.method public static deleteStaticDecryptedText()V
    .locals 1

    .prologue
    .line 872
    const/4 v0, 0x0

    sput-object v0, Lcom/openintents/notepad/NoteEditor;->sDecryptedText:Ljava/lang/String;

    .line 873
    return-void
.end method

.method private encryptNote(Z)V
    .locals 8
    .param p1, "encryptTags"    # Z

    .prologue
    const/4 v7, 0x1

    .line 823
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 824
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Lcom/openintents/notepad/util/ExtractTitle;->extractTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 825
    .local v4, "title":Ljava/lang/String;
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->getTags()Ljava/lang/String;

    move-result-object v2

    .line 828
    .local v2, "tags":Ljava/lang/String;
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->isNoteUnencrypted()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    move v1, v5

    .line 830
    .local v1, "isNoteEncrypted":Z
    :goto_0
    if-nez p1, :cond_0

    .line 831
    const/4 v2, 0x0

    .line 836
    :cond_0
    invoke-static {}, Lcom/openintents/notepad/crypto/EncryptActivity;->getPendingEncryptActivities()I

    move-result v5

    if-nez v5, :cond_3

    .line 837
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/openintents/notepad/crypto/EncryptActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 838
    .local v0, "i":Landroid/content/Intent;
    const-string v5, "com.openintents.notepad.extra.action"

    const-string v6, "com.openintents.action.ENCRYPT"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const-string v5, "com.openintents.extra.TEXT_ARRAY"

    invoke-static {v3, v4, v2}, Lcom/openintents/notepad/crypto/EncryptActivity;->getCryptoStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const-string v5, "com.openintents.notepad.extra.uri"

    iget-object v6, p0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 843
    const-string v5, "com.openintents.notepad.extra.content_unchanged"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 845
    :cond_1
    invoke-virtual {p0, v0}, Lcom/openintents/notepad/NoteEditor;->startActivity(Landroid/content/Intent;)V

    .line 851
    sput-object v3, Lcom/openintents/notepad/NoteEditor;->sDecryptedText:Ljava/lang/String;

    .line 852
    if-eqz v1, :cond_2

    .line 854
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mDecryptedText:Ljava/lang/String;

    .line 855
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    const v6, 0x7f060041

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(I)V

    .line 861
    :cond_2
    invoke-static {}, Lcom/openintents/notepad/crypto/EncryptActivity;->confirmEncryptActivityCalled()V

    .line 868
    .end local v0    # "i":Landroid/content/Intent;
    :cond_3
    return-void

    .end local v1    # "isNoteEncrypted":Z
    :cond_4
    move v1, v7

    .line 828
    goto :goto_0
.end method

.method private getMostRecentlyUsedTheme()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 464
    const/4 v7, 0x0

    .line 465
    .local v7, "theme":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 466
    sget-object v1, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 467
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "theme"

    aput-object v4, v2, v8

    .line 468
    const-string v5, "modified DESC"

    move-object v4, v3

    .line 465
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 469
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 472
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 473
    return-object v7
.end method

.method private getNoteFromContentProvider()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 609
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_6

    .line 610
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->requery()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 611
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 614
    iget v5, p0, Lcom/openintents/notepad/NoteEditor;->mState:I

    if-nez v5, :cond_3

    .line 615
    const v5, 0x7f060033

    invoke-virtual {p0, v5}, Lcom/openintents/notepad/NoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/openintents/notepad/NoteEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 620
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 621
    .local v2, "id":J
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 622
    .local v4, "note":Ljava/lang/String;
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/openintents/notepad/NoteEditor;->mEncrypted:J

    .line 623
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mTheme:Ljava/lang/String;

    .line 625
    iget-wide v5, p0, Lcom/openintents/notepad/NoteEditor;->mEncrypted:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 632
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 633
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    iget v6, p0, Lcom/openintents/notepad/NoteEditor;->mSelectionStart:I

    iget v7, p0, Lcom/openintents/notepad/NoteEditor;->mSelectionStop:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/EditText;->setSelection(II)V

    .line 672
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 673
    iput-object v4, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    .line 680
    .end local v2    # "id":J
    .end local v4    # "note":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 616
    :cond_3
    iget v5, p0, Lcom/openintents/notepad/NoteEditor;->mState:I

    if-ne v5, v6, :cond_0

    .line 617
    const v5, 0x7f060032

    invoke-virtual {p0, v5}, Lcom/openintents/notepad/NoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/openintents/notepad/NoteEditor;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 638
    .restart local v2    # "id":J
    .restart local v4    # "note":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mDecryptedText:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 641
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/openintents/notepad/NoteEditor;->mDecryptedText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    iget v6, p0, Lcom/openintents/notepad/NoteEditor;->mSelectionStart:I

    iget v7, p0, Lcom/openintents/notepad/NoteEditor;->mSelectionStop:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/EditText;->setSelection(II)V

    .line 645
    const v5, 0x108001f

    invoke-virtual {p0, v10, v5}, Lcom/openintents/notepad/NoteEditor;->setFeatureDrawableResource(II)V

    goto :goto_1

    .line 654
    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 655
    .local v1, "i":Landroid/content/Intent;
    const-string v5, "com.openintents.action.DECRYPT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const-string v5, "com.openintents.extra.TEXT"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    const-string v5, "com.openintents.notepad.extra.id"

    invoke-virtual {v1, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 660
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {p0, v1, v5}, Lcom/openintents/notepad/NoteEditor;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 661
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v5, 0x7f060049

    .line 662
    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 664
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 665
    const-string v5, "NoteEditor"

    const-string v6, "failed to invoke decrypt"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 677
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "id":J
    .end local v4    # "note":Ljava/lang/String;
    :cond_6
    const v5, 0x7f06003b

    invoke-virtual {p0, v5}, Lcom/openintents/notepad/NoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/openintents/notepad/NoteEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    const v6, 0x7f06003c

    invoke-virtual {p0, v6}, Lcom/openintents/notepad/NoteEditor;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getNoteFromFile()V
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    iget v1, p0, Lcom/openintents/notepad/NoteEditor;->mSelectionStart:I

    iget v2, p0, Lcom/openintents/notepad/NoteEditor;->mSelectionStop:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_0
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    .line 699
    :cond_0
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->updateTitleSdCard()V

    .line 700
    return-void

    .line 689
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getTags()Ljava/lang/String;
    .locals 3

    .prologue
    .line 905
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "tags":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 910
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getTextSizeLarge(Lcom/openintents/notepad/theme/ThemeAttributes;)F
    .locals 3
    .param p1, "ta"    # Lcom/openintents/notepad/theme/ThemeAttributes;

    .prologue
    .line 1609
    .line 1610
    const-string v1, "textSizeLarge"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/openintents/notepad/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v1

    int-to-float v0, v1

    .line 1611
    .local v0, "size":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 1613
    const v1, 0x3f9bd37a

    invoke-direct {p0, p1}, Lcom/openintents/notepad/NoteEditor;->getTextSizeMedium(Lcom/openintents/notepad/theme/ThemeAttributes;)F

    move-result v2

    mul-float v0, v1, v2

    .line 1615
    :cond_0
    return v0
.end method

.method private getTextSizeMedium(Lcom/openintents/notepad/theme/ThemeAttributes;)F
    .locals 5
    .param p1, "ta"    # Lcom/openintents/notepad/theme/ThemeAttributes;

    .prologue
    .line 1602
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 1604
    .local v0, "scale":F
    const-string v2, "textSizeMedium"

    const/high16 v3, 0x41b80000    # 23.0f

    mul-float/2addr v3, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Lcom/openintents/notepad/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v2

    int-to-float v1, v2

    .line 1605
    .local v1, "size":F
    return v1
.end method

.method private getTextSizeSmall(Lcom/openintents/notepad/theme/ThemeAttributes;)F
    .locals 3
    .param p1, "ta"    # Lcom/openintents/notepad/theme/ThemeAttributes;

    .prologue
    .line 1592
    .line 1593
    const-string v1, "textSizeSmall"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/openintents/notepad/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v1

    int-to-float v0, v1

    .line 1594
    .local v0, "size":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 1596
    const v1, 0x3f48590b

    invoke-direct {p0, p1}, Lcom/openintents/notepad/NoteEditor;->getTextSizeMedium(Lcom/openintents/notepad/theme/ThemeAttributes;)F

    move-result v2

    mul-float v0, v1, v2

    .line 1598
    :cond_0
    return v0
.end method

.method private getTextSizeTiny(Lcom/openintents/notepad/theme/ThemeAttributes;)F
    .locals 3
    .param p1, "ta"    # Lcom/openintents/notepad/theme/ThemeAttributes;

    .prologue
    .line 1582
    .line 1583
    const-string v1, "textSizeTiny"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/openintents/notepad/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v1

    int-to-float v0, v1

    .line 1584
    .local v0, "size":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 1586
    const v1, 0x3f2aaaab

    invoke-direct {p0, p1}, Lcom/openintents/notepad/NoteEditor;->getTextSizeSmall(Lcom/openintents/notepad/theme/ThemeAttributes;)F

    move-result v2

    mul-float v0, v1, v2

    .line 1588
    :cond_0
    return v0
.end method

.method private importNote()V
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 1241
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    .line 1243
    const/4 v10, 0x0

    .line 1246
    .local v10, "newUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 1247
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    .line 1248
    const-string v3, "note = ?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    aput-object v5, v4, v12

    const/4 v5, 0x0

    .line 1246
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1249
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1251
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1252
    .local v7, "id":J
    sget-object v0, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1282
    .end local v7    # "id":J
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1283
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1284
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1285
    const/high16 v0, 0x2000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1286
    invoke-virtual {p0, v9}, Lcom/openintents/notepad/NoteEditor;->setIntent(Landroid/content/Intent;)V

    .line 1287
    invoke-virtual {p0, v9}, Lcom/openintents/notepad/NoteEditor;->startActivity(Landroid/content/Intent;)V

    .line 1290
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->finish()V

    .line 1292
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1259
    :cond_1
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1260
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "note"

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const-string v0, "theme"

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mTheme:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1268
    if-nez v10, :cond_0

    .line 1269
    const-string v0, "NoteEditor"

    const-string v1, "Failed to insert new note."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->finish()V

    goto :goto_0
.end method

.method private insertAtPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "textBefore"    # Ljava/lang/String;
    .param p2, "textToInsert"    # Ljava/lang/String;
    .param p3, "textAfter"    # Ljava/lang/String;

    .prologue
    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1176
    .local v6, "originalText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v8

    .line 1177
    .local v8, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 1178
    .local v2, "endPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mDecryptedText:Ljava/lang/String;

    move-object v12, v0

    if-eqz v12, :cond_0

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mDecryptedText:Ljava/lang/String;

    move-object v6, v0

    .line 1181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/openintents/notepad/NoteEditor;->mSelectionStart:I

    move v8, v0

    .line 1182
    move-object/from16 v0, p0

    iget v0, v0, Lcom/openintents/notepad/NoteEditor;->mSelectionStop:I

    move v2, v0

    .line 1184
    :cond_0
    move v5, v8

    .line 1185
    .local v5, "newStartPos":I
    move v3, v2

    .line 1186
    .local v3, "newEndPos":I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1187
    .local v11, "values":Landroid/content/ContentValues;
    const-string v4, ""

    .line 1188
    .local v4, "newNote":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1189
    .local v7, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1

    .line 1190
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1191
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1195
    :goto_0
    if-eqz p2, :cond_2

    .line 1196
    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1197
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    add-int v3, v5, v12

    .line 1203
    :goto_1
    if-eqz p3, :cond_3

    .line 1204
    move-object v0, v7

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1208
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/openintents/notepad/NoteEditor;->mState:I

    move v12, v0

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 1211
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    .line 1212
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mSelectionStart:I

    .line 1213
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mSelectionStop:I

    .line 1233
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    move-object v12, v0

    invoke-virtual {v12, v4}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    move-object v12, v0

    invoke-virtual {v12, v5, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 1236
    return-void

    .line 1193
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v6, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1199
    :cond_2
    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1200
    .local v9, "text":Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1201
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int v3, v5, v12

    goto :goto_1

    .line 1206
    .end local v9    # "text":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1214
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mDecryptedText:Ljava/lang/String;

    move-object v12, v0

    if-eqz v12, :cond_5

    .line 1215
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mDecryptedText:Ljava/lang/String;

    goto :goto_3

    .line 1218
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/openintents/notepad/NoteEditor;->mNoteOnly:Z

    move v12, v0

    if-nez v12, :cond_6

    .line 1220
    const-string v12, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1221
    invoke-static {v4}, Lcom/openintents/notepad/util/ExtractTitle;->extractTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1222
    .local v10, "title":Ljava/lang/String;
    const-string v12, "title"

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    .end local v10    # "title":Ljava/lang/String;
    :cond_6
    const-string v12, "note"

    invoke-virtual {v11, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/NoteEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    move-object v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3
.end method

.method private isNoteUnencrypted()Z
    .locals 5

    .prologue
    .line 1031
    const-wide/16 v0, 0x0

    .line 1032
    .local v0, "encrypted":J
    iget-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1033
    iget-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1035
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 1036
    .local v2, "isNoteUnencrypted":Z
    :goto_0
    return v2

    .line 1035
    .end local v2    # "isNoteUnencrypted":Z
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0
.end method

.method private final revertNote()V
    .locals 4

    .prologue
    .line 1109
    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 1110
    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1111
    .local v1, "tmp":Ljava/lang/String;
    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setAutoLinkMask(I)V

    .line 1112
    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1114
    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1115
    iput-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mUndoRevert:Ljava/lang/String;

    .line 1121
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/openintents/notepad/PreferenceActivity;->getAutoLinkFromPreference(Landroid/content/Context;)I

    move-result v0

    .line 1122
    .local v0, "autolink":I
    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setAutoLinkMask(I)V

    .line 1127
    .end local v0    # "autolink":I
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_1
    return-void

    .line 1116
    .restart local v1    # "tmp":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mUndoRevert:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1118
    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mUndoRevert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 1119
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mUndoRevert:Ljava/lang/String;

    goto :goto_0
.end method

.method private saveAsNote()V
    .locals 3

    .prologue
    .line 1307
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    .line 1309
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1310
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.openintents.notepad.action.SAVE_TO_SD_CARD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1312
    const-string v1, "com.openintents.extra.TEXT"

    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/openintents/notepad/NoteEditor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1315
    return-void
.end method

.method private saveNote()V
    .locals 2

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    .line 1297
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/openintents/notepad/util/FileUriUtils;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 1298
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/openintents/notepad/activity/SaveFileActivity;->writeToFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 1300
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    iput-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    .line 1301
    return-void
.end method

.method private setLocalStyle(II)V
    .locals 5
    .param p1, "styleResId"    # I
    .param p2, "size"    # I

    .prologue
    .line 1426
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1428
    .local v0, "styleName":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/openintents/notepad/NoteEditor;->setRemoteStyle(Ljava/lang/String;I)Z

    move-result v1

    .line 1430
    .local v1, "themefound":Z
    if-nez v1, :cond_0

    .line 1432
    const-string v2, "NoteEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Local theme not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_0
    return-void
.end method

.method private setRemoteStyle(Ljava/lang/String;I)Z
    .locals 22
    .param p1, "styleName"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 1437
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1439
    const/16 v19, 0x0

    .line 1577
    :goto_0
    return v19

    .line 1442
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/NoteEditor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1444
    .local v13, "pm":Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/openintents/notepad/theme/ThemeUtils;->getPackageNameFromStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1446
    .local v12, "packageName":Ljava/lang/String;
    if-nez v12, :cond_1

    .line 1447
    const-string v19, "NoteEditor"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Invalid style name: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const/16 v19, 0x0

    goto :goto_0

    .line 1451
    :cond_1
    const/4 v9, 0x0

    .line 1453
    .local v9, "c":Landroid/content/Context;
    const/16 v19, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/NoteEditor;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1459
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1461
    .local v15, "res":Landroid/content/res/Resources;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 1464
    .local v18, "themeid":I
    if-nez v18, :cond_2

    .line 1465
    const-string v19, "NoteEditor"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Theme name not found: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    const/16 v19, 0x0

    goto :goto_0

    .line 1454
    .end local v15    # "res":Landroid/content/res/Resources;
    .end local v18    # "themeid":I
    :catch_0
    move-exception v11

    .line 1455
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "NoteEditor"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Package for style not found: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1470
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15    # "res":Landroid/content/res/Resources;
    .restart local v18    # "themeid":I
    :cond_2
    :try_start_1
    new-instance v17, Lcom/openintents/notepad/theme/ThemeAttributes;

    move-object/from16 v0, v17

    move-object v1, v9

    move-object v2, v12

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/openintents/notepad/theme/ThemeAttributes;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1472
    .local v17, "ta":Lcom/openintents/notepad/theme/ThemeAttributes;
    const-string v19, "textTypeface"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/openintents/notepad/theme/ThemeAttributes;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mTextTypeface:Ljava/lang/String;

    .line 1475
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 1478
    const-string v19, "monospace"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mTextTypeface:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1479
    sget-object v19, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mCurrentTypeface:Landroid/graphics/Typeface;

    .line 1497
    :cond_3
    :goto_1
    const-string v19, "textUpperCaseFont"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/theme/ThemeAttributes;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/openintents/notepad/NoteEditor;->mTextUpperCaseFont:Z

    .line 1499
    const-string v19, "textColor"

    const v20, 0x106000b

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/theme/ThemeAttributes;->getColor(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mTextColor:I

    .line 1505
    if-nez p2, :cond_9

    .line 1506
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/openintents/notepad/NoteEditor;->getTextSizeTiny(Lcom/openintents/notepad/theme/ThemeAttributes;)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mTextSize:F

    .line 1516
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1517
    const-string v19, "backgroundPadding"

    const/16 v20, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mBackgroundPadding:I

    .line 1518
    const-string v19, "backgroundPaddingLeft"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/openintents/notepad/NoteEditor;->mBackgroundPadding:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v6

    .line 1519
    .local v6, "backgroundPaddingLeft":I
    const-string v19, "backgroundPaddingTop"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/openintents/notepad/NoteEditor;->mBackgroundPadding:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v8

    .line 1520
    .local v8, "backgroundPaddingTop":I
    const-string v19, "backgroundPaddingRight"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/openintents/notepad/NoteEditor;->mBackgroundPadding:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I

    move-result v7

    .line 1521
    .local v7, "backgroundPaddingRight":I
    const-string v19, "backgroundPaddingBottom"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/openintents/notepad/NoteEditor;->mBackgroundPadding:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/theme/ThemeAttributes;->getDimensionPixelOffset(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    .line 1532
    .local v5, "backgroundPaddingBottom":I
    :try_start_2
    invoke-virtual {v13, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    .line 1533
    .local v14, "remoteRes":Landroid/content/res/Resources;
    const-string v19, "background"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/theme/ThemeAttributes;->getResourceId(Ljava/lang/String;I)I

    move-result v16

    .line 1534
    .local v16, "resid":I
    if-eqz v16, :cond_c

    .line 1535
    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1536
    .local v10, "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1548
    .end local v10    # "d":Landroid/graphics/drawable/Drawable;
    .end local v14    # "remoteRes":Landroid/content/res/Resources;
    .end local v16    # "resid":I
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/openintents/notepad/NoteEditor;->mBackgroundPadding:I

    move/from16 v19, v0

    if-gez v19, :cond_4

    .line 1549
    if-gez v6, :cond_4

    if-gez v8, :cond_4

    .line 1550
    if-gez v7, :cond_4

    if-ltz v5, :cond_5

    .line 1551
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v6

    move v2, v8

    move v3, v7

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1561
    .end local v5    # "backgroundPaddingBottom":I
    .end local v6    # "backgroundPaddingLeft":I
    .end local v7    # "backgroundPaddingRight":I
    .end local v8    # "backgroundPaddingTop":I
    :cond_5
    const-string v19, "lineMode"

    const/16 v20, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/theme/ThemeAttributes;->getInteger(Ljava/lang/String;I)I

    move-result v19

    sput v19, Lcom/openintents/notepad/NoteEditor;->mLinesMode:I

    .line 1562
    const-string v19, "lineColor"

    const v20, -0xffff80

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/theme/ThemeAttributes;->getColor(Ljava/lang/String;I)I

    move-result v19

    sput v19, Lcom/openintents/notepad/NoteEditor;->mLinesColor:I

    .line 1566
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1480
    :cond_6
    const-string v19, "sans"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mTextTypeface:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1481
    sget-object v19, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mCurrentTypeface:Landroid/graphics/Typeface;
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 1568
    .end local v17    # "ta":Lcom/openintents/notepad/theme/ThemeAttributes;
    :catch_1
    move-exception v19

    move-object/from16 v11, v19

    .line 1571
    .local v11, "e":Ljava/lang/UnsupportedOperationException;
    const-string v19, "NoteEditor"

    const-string v20, "UnsupportedOperationException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1572
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1482
    .end local v11    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v17    # "ta":Lcom/openintents/notepad/theme/ThemeAttributes;
    :cond_7
    :try_start_4
    const-string v19, "serif"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mTextTypeface:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1483
    sget-object v19, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mCurrentTypeface:Landroid/graphics/Typeface;
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 1573
    .end local v17    # "ta":Lcom/openintents/notepad/theme/ThemeAttributes;
    :catch_2
    move-exception v19

    move-object/from16 v11, v19

    .line 1576
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string v19, "NoteEditor"

    const-string v20, "NumberFormatException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1577
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1484
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v17    # "ta":Lcom/openintents/notepad/theme/ThemeAttributes;
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mTextTypeface:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v19

    if-nez v19, :cond_3

    .line 1488
    :try_start_6
    invoke-virtual {v13, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    .line 1489
    .restart local v14    # "remoteRes":Landroid/content/res/Resources;
    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mTextTypeface:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1489
    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mCurrentTypeface:Landroid/graphics/Typeface;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 1492
    .end local v14    # "remoteRes":Landroid/content/res/Resources;
    :catch_3
    move-exception v19

    move-object/from16 v11, v19

    .line 1493
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_7
    const-string v19, "NoteEditor"

    const-string v20, "Package not found for Typeface"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1507
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_9
    const/16 v19, 0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1508
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/openintents/notepad/NoteEditor;->getTextSizeSmall(Lcom/openintents/notepad/theme/ThemeAttributes;)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mTextSize:F

    goto/16 :goto_2

    .line 1509
    :cond_a
    const/16 v19, 0x2

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1510
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/openintents/notepad/NoteEditor;->getTextSizeMedium(Lcom/openintents/notepad/theme/ThemeAttributes;)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mTextSize:F

    goto/16 :goto_2

    .line 1512
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/openintents/notepad/NoteEditor;->getTextSizeLarge(Lcom/openintents/notepad/theme/ThemeAttributes;)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mTextSize:F
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 1539
    .restart local v5    # "backgroundPaddingBottom":I
    .restart local v6    # "backgroundPaddingLeft":I
    .restart local v7    # "backgroundPaddingRight":I
    .restart local v8    # "backgroundPaddingTop":I
    .restart local v14    # "remoteRes":Landroid/content/res/Resources;
    .restart local v16    # "resid":I
    :cond_c
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setBackgroundResource(I)V
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3

    .line 1541
    .end local v14    # "remoteRes":Landroid/content/res/Resources;
    .end local v16    # "resid":I
    :catch_4
    move-exception v19

    move-object/from16 v11, v19

    .line 1542
    .restart local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_9
    const-string v19, "NoteEditor"

    const-string v20, "Package not found for Theme background."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1543
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_5
    move-exception v19

    move-object/from16 v11, v19

    .line 1544
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v19, "NoteEditor"

    const-string v20, "Resource not found for Theme background."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_3
.end method

.method public static setThemeForAll(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1360
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1361
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "theme"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1363
    sget-object v2, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 1362
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1364
    return-void
.end method

.method private showNotesListSettings()V
    .locals 2

    .prologue
    .line 1641
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/openintents/notepad/PreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/NoteEditor;->startActivity(Landroid/content/Intent;)V

    .line 1642
    return-void
.end method

.method private startTextSelectionActivity(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1085
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1087
    .local v1, "newIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1088
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 1089
    .local v2, "start":I
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 1092
    .local v0, "end":I
    if-ge v0, v2, :cond_0

    .line 1093
    move v3, v0

    .line 1094
    .local v3, "swap":I
    move v0, v2

    .line 1095
    move v2, v3

    .line 1098
    .end local v3    # "swap":I
    :cond_0
    const-string v5, "com.openintents.extra.TEXT"

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    const-string v5, "com.openintents.extra.TEXT_BEFORE_SELECTION"

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    const-string v5, "com.openintents.extra.TEXT_AFTER_SELECTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    const/4 v5, 0x3

    invoke-virtual {p0, v1, v5}, Lcom/openintents/notepad/NoteEditor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1103
    return-void
.end method

.method private unencryptNote()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 880
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Lcom/openintents/notepad/util/ExtractTitle;->extractTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 882
    .local v3, "title":Ljava/lang/String;
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->getTags()Ljava/lang/String;

    move-result-object v1

    .line 885
    .local v1, "tags":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 886
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 887
    const-string v5, "title"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v5, "note"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v5, "encrypted"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 891
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 892
    iget-object v5, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->requery()Z

    .line 894
    const/4 v5, 0x4

    invoke-virtual {p0, v5, v8}, Lcom/openintents/notepad/NoteEditor;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 897
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/openintents/notepad/crypto/EncryptActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 898
    .local v0, "i":Landroid/content/Intent;
    const-string v5, "com.openintents.notepad.extra.action"

    const-string v6, "com.openintents.action.DECRYPT"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    const-string v5, "com.openintents.extra.TEXT_ARRAY"

    invoke-static {v8, v8, v1}, Lcom/openintents/notepad/crypto/EncryptActivity;->getCryptoStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    const-string v5, "com.openintents.notepad.extra.uri"

    iget-object v6, p0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    invoke-virtual {p0, v0}, Lcom/openintents/notepad/NoteEditor;->startActivity(Landroid/content/Intent;)V

    .line 902
    return-void
.end method

.method private updateTitleSdCard()V
    .locals 4

    .prologue
    .line 703
    const-string v1, ""

    .line 704
    .local v1, "modified":Ljava/lang/String;
    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    iget-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 705
    const-string v1, "* "

    .line 707
    :cond_0
    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/openintents/notepad/util/FileUriUtils;->getFilename(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "filename":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/openintents/notepad/NoteEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 711
    return-void
.end method


# virtual methods
.method getUnsavedChangesWarningDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1645
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1646
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1647
    const v1, 0x7f06005b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1648
    const v1, 0x7f06005c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1649
    const v1, 0x7f06005d

    .line 1650
    new-instance v2, Lcom/openintents/notepad/NoteEditor$3;

    invoke-direct {v2, p0}, Lcom/openintents/notepad/NoteEditor$3;-><init>(Lcom/openintents/notepad/NoteEditor;)V

    .line 1649
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1658
    const v1, 0x7f06005e

    .line 1659
    new-instance v2, Lcom/openintents/notepad/NoteEditor$4;

    invoke-direct {v2, p0}, Lcom/openintents/notepad/NoteEditor$4;-><init>(Lcom/openintents/notepad/NoteEditor;)V

    .line 1658
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1666
    const/high16 v1, 0x1040000

    .line 1667
    new-instance v2, Lcom/openintents/notepad/NoteEditor$5;

    invoke-direct {v2, p0}, Lcom/openintents/notepad/NoteEditor$5;-><init>(Lcom/openintents/notepad/NoteEditor;)V

    .line 1666
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1673
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1645
    return-object v0
.end method

.method public loadTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mTheme:Ljava/lang/String;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v8, "com.openintents.extra.TEXT"

    const-string v7, "NoteEditor"

    .line 1695
    packed-switch p1, :pswitch_data_0

    .line 1746
    :cond_0
    :goto_0
    return-void

    .line 1697
    :pswitch_0
    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_2

    .line 1698
    const-string v3, "com.openintents.extra.TEXT"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1699
    .local v0, "decryptedText":Ljava/lang/String;
    const-string v3, "com.openintents.notepad.extra.id"

    invoke-virtual {p3, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1703
    .local v1, "id":J
    cmp-long v3, v1, v5

    if-nez v3, :cond_1

    .line 1704
    const-string v3, "NoteEditor"

    const-string v3, "Wrong extra id"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    const-string v3, "Decrypted information incomplete"

    .line 1705
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1707
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1709
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->finish()V

    goto :goto_0

    .line 1714
    :cond_1
    iput-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mDecryptedText:Ljava/lang/String;

    .line 1715
    iput-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    goto :goto_0

    .line 1719
    .end local v0    # "decryptedText":Ljava/lang/String;
    .end local v1    # "id":J
    :cond_2
    const v3, 0x7f060049

    .line 1718
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 1720
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1721
    const-string v3, "NoteEditor"

    const-string v3, "decryption failed"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->finish()V

    goto :goto_0

    .line 1727
    :pswitch_1
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 1729
    const-string v3, "com.openintents.extra.TEXT"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mApplyText:Ljava/lang/String;

    .line 1730
    const-string v3, "com.openintents.extra.TEXT_BEFORE_SELECTION"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mApplyTextBefore:Ljava/lang/String;

    .line 1731
    const-string v3, "com.openintents.extra.TEXT_AFTER_SELECTION"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mApplyTextAfter:Ljava/lang/String;

    goto :goto_0

    .line 1737
    :pswitch_2
    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 1739
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    .line 1741
    iget-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    iput-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    .line 1743
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->updateTitleSdCard()V

    goto :goto_0

    .line 1695
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 271
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 275
    if-nez p1, :cond_0

    .line 277
    const/4 v3, 0x0

    sput-object v3, Lcom/openintents/notepad/NoteEditor;->sDecryptedText:Ljava/lang/String;

    .line 281
    :cond_0
    sget-object v3, Lcom/openintents/notepad/NoteEditor;->sDecryptedText:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mDecryptedText:Ljava/lang/String;

    .line 282
    sget-object v3, Lcom/openintents/notepad/NoteEditor;->sDecryptedText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 285
    invoke-static {}, Lcom/openintents/notepad/crypto/EncryptActivity;->cancelEncrypt()V

    .line 287
    invoke-static {}, Lcom/openintents/notepad/crypto/EncryptActivity;->getPendingEncryptActivities()I

    move-result v3

    if-nez v3, :cond_1

    .line 290
    const/4 v3, 0x0

    sput-object v3, Lcom/openintents/notepad/NoteEditor;->sDecryptedText:Ljava/lang/String;

    .line 294
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mSelectionStart:I

    .line 295
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mSelectionStop:I

    .line 299
    if-eqz p1, :cond_4

    .line 300
    const-string v3, "original_content"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    .line 301
    const-string v3, "undo_revert"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mUndoRevert:Ljava/lang/String;

    .line 302
    const-string v3, "state"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mState:I

    .line 303
    const-string v3, "uri"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    .line 304
    const-string v3, "selection_start"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mSelectionStart:I

    .line 305
    const-string v3, "selection_stop"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mSelectionStop:I

    .line 306
    const-string v3, "file_content"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mApplyText:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mApplyTextBefore:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mApplyTextAfter:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_2

    .line 309
    const-string v3, "apply_text"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mApplyText:Ljava/lang/String;

    .line 310
    const-string v3, "apply_text_before"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mApplyTextBefore:Ljava/lang/String;

    .line 311
    const-string v3, "apply_text_after"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mApplyTextAfter:Ljava/lang/String;

    .line 425
    :cond_2
    :goto_0
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/openintents/notepad/NoteEditor;->requestWindowFeature(I)Z

    .line 428
    const v3, 0x7f030003

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/openintents/notepad/NoteEditor;->setContentView(I)V

    .line 431
    const v3, 0x7f090006

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/openintents/notepad/NoteEditor;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    check-cast p1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    .line 433
    move-object/from16 v0, p0

    iget v0, v0, Lcom/openintents/notepad/NoteEditor;->mState:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mTextWatcherSdCard:Landroid/text/TextWatcher;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 439
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/openintents/notepad/NoteEditor;->mState:I

    move v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Lcom/openintents/notepad/NoteEditor;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/openintents/notepad/NoteEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    .line 446
    :goto_1
    new-instance v14, Landroid/widget/LinearLayout;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 447
    .local v14, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v3, 0x50

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 448
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v10, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 449
    .local v10, "adMogoLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/NoteEditor;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    new-instance v11, Lcom/adview/AdViewLayout;

    const-string v3, "SDK20112309270518scqknh3h07ank7k"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/adview/AdViewLayout;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 454
    .local v11, "adViewLayout":Lcom/adview/AdViewLayout;
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v12, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 455
    .local v12, "adViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v14, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->invalidate()V

    .line 457
    .end local v10    # "adMogoLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "adViewLayout":Lcom/adview/AdViewLayout;
    .end local v12    # "adViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "linearLayout":Landroid/widget/LinearLayout;
    :goto_2
    return-void

    .line 315
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/NoteEditor;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 318
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 321
    :cond_5
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mState:I

    .line 322
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mState:I

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    move-object v3, v0

    invoke-static {v3}, Lcom/openintents/notepad/util/FileUriUtils;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/openintents/notepad/NoteEditor;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 384
    :cond_6
    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 386
    new-instance v17, Landroid/content/ContentValues;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    move v1, v3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 387
    .local v17, "values":Landroid/content/ContentValues;
    invoke-direct/range {p0 .. p0}, Lcom/openintents/notepad/NoteEditor;->getMostRecentlyUsedTheme()Ljava/lang/String;

    move-result-object v16

    .line 388
    .local v16, "theme":Ljava/lang/String;
    const-string v3, "theme"

    move-object/from16 v0, v17

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v3, "com.openintents.extra.TAGS"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 391
    .local v15, "tags":Ljava/lang/String;
    const-string v3, "tags"

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/openintents/notepad/NoteEditor;->mState:I

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/NoteEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    move-object v3, v0

    if-nez v3, :cond_7

    .line 407
    const-string v3, "NoteEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to insert new note into "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/NoteEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/NoteEditor;->finish()V

    goto/16 :goto_2

    .line 415
    :cond_7
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/NoteEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 419
    .end local v15    # "tags":Ljava/lang/String;
    .end local v16    # "theme":Ljava/lang/String;
    .end local v17    # "values":Landroid/content/ContentValues;
    :cond_8
    const-string v3, "NoteEditor"

    const-string v4, "Unknown action, exiting"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/NoteEditor;->finish()V

    goto/16 :goto_2

    .line 443
    .end local v9    # "action":Ljava/lang/String;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_9
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1324
    packed-switch p1, :pswitch_data_0

    .line 1331
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1326
    :pswitch_0
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->getUnsavedChangesWarningDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1329
    :pswitch_1
    new-instance v0, Lcom/openintents/notepad/dialog/ThemeDialog;

    invoke-direct {v0, p0, p0}, Lcom/openintents/notepad/dialog/ThemeDialog;-><init>(Landroid/content/Context;Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;)V

    goto :goto_0

    .line 1324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 916
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 922
    const v1, 0x7f06002d

    invoke-interface {p1, v2, v9, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 923
    const/16 v3, 0x30

    const/16 v4, 0x72

    invoke-interface {v1, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v1

    .line 924
    const v3, 0x108004c

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 927
    const v1, 0x7f06002b

    invoke-interface {p1, v9, v8, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 928
    const/16 v3, 0x39

    const/16 v4, 0x64

    invoke-interface {v1, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v1

    .line 929
    const v3, 0x108003c

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 931
    const/4 v1, 0x6

    const v3, 0x7f060058

    invoke-interface {p1, v7, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 932
    const/16 v3, 0x31

    const/16 v4, 0x69

    invoke-interface {v1, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v1

    .line 933
    const v3, 0x1080033

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 935
    const/4 v1, 0x7

    const v3, 0x7f060059

    invoke-interface {p1, v7, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 936
    const/16 v3, 0x32

    const/16 v4, 0x78

    invoke-interface {v1, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v1

    .line 937
    const v3, 0x108004e

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 939
    const/16 v1, 0x8

    const v3, 0x7f06005a

    invoke-interface {p1, v7, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 940
    const/16 v3, 0x33

    const/16 v4, 0x61

    invoke-interface {v1, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    move-result-object v1

    .line 941
    const v3, 0x108004e

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 943
    const/16 v1, 0x9

    const v3, 0x7f06005f

    invoke-interface {p1, v8, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 944
    const v3, 0x1080042

    .line 943
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 944
    const/16 v3, 0x34

    const/16 v4, 0x74

    invoke-interface {v1, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 946
    const/16 v1, 0xa

    const v3, 0x7f06007a

    invoke-interface {p1, v8, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 947
    const v3, 0x1080049

    .line 946
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 947
    const/16 v3, 0x39

    const/16 v4, 0x73

    invoke-interface {v1, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 975
    iget-boolean v1, p0, Lcom/openintents/notepad/NoteEditor;->mNoteOnly:Z

    if-nez v1, :cond_0

    .line 979
    new-instance v6, Landroid/content/Intent;

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    invoke-direct {v6, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 980
    .local v6, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 985
    new-instance v0, Lcom/openintents/util/MenuIntentOptionsWithIcons;

    invoke-direct {v0, p0, p1}, Lcom/openintents/util/MenuIntentOptionsWithIcons;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    .line 986
    .local v0, "menu2":Lcom/openintents/util/MenuIntentOptionsWithIcons;
    const/high16 v1, 0x40000

    .line 987
    new-instance v4, Landroid/content/ComponentName;

    const-class v3, Lcom/openintents/notepad/NoteEditor;

    invoke-direct {v4, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move v3, v2

    move v7, v2

    move-object v8, v5

    .line 986
    invoke-virtual/range {v0 .. v8}, Lcom/openintents/util/MenuIntentOptionsWithIcons;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 990
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "intent":Landroid/content/Intent;
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 991
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v1, "com.openintents.category.TEXT_SELECTION_ALTERNATIVE"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    const-string v1, "text/plain"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 994
    const/16 v1, 0x4d2

    .line 995
    new-instance v4, Landroid/content/ComponentName;

    const-class v3, Lcom/openintents/notepad/NoteEditor;

    invoke-direct {v4, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move v3, v2

    move v7, v2

    move-object v8, v5

    .line 994
    invoke-virtual/range {v0 .. v8}, Lcom/openintents/util/MenuIntentOptionsWithIcons;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 999
    .end local v0    # "menu2":Lcom/openintents/util/MenuIntentOptionsWithIcons;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_0
    return v9
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1679
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1680
    iget v0, p0, Lcom/openintents/notepad/NoteEditor;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    .line 1682
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1684
    invoke-virtual {p0, v2}, Lcom/openintents/notepad/NoteEditor;->showDialog(I)V

    move v0, v2

    .line 1690
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoadTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1336
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->loadTheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 1042
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1069
    :goto_0
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const/16 v1, 0x4d2

    if-ne v0, v1, :cond_0

    .line 1072
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/openintents/notepad/NoteEditor;->startTextSelectionActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 1077
    :goto_1
    return v0

    .line 1044
    :pswitch_1
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->deleteNote()V

    .line 1045
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->finish()V

    goto :goto_0

    .line 1048
    :pswitch_2
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->revertNote()V

    goto :goto_0

    .line 1051
    :pswitch_3
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->revertNote()V

    goto :goto_0

    .line 1054
    :pswitch_4
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->importNote()V

    goto :goto_0

    .line 1057
    :pswitch_5
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->saveNote()V

    goto :goto_0

    .line 1060
    :pswitch_6
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->saveAsNote()V

    goto :goto_0

    .line 1063
    :pswitch_7
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->setThemeSettings()V

    move v0, v2

    .line 1064
    goto :goto_1

    .line 1066
    :pswitch_8
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->showNotesListSettings()V

    move v0, v2

    .line 1067
    goto :goto_1

    .line 1077
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1

    .line 1042
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .locals 14

    .prologue
    .line 740
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 743
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAutoLinkMask(I)V

    .line 748
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 752
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 754
    .local v7, "encrypted":J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_5

    .line 755
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v11

    .line 756
    .local v11, "text":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    .line 762
    .local v9, "length":I
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v9, :cond_1

    iget-boolean v0, p0, Lcom/openintents/notepad/NoteEditor;->mNoteOnly:Z

    if-nez v0, :cond_1

    .line 763
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/NoteEditor;->setResult(I)V

    .line 764
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->deleteNote()V

    .line 816
    .end local v7    # "encrypted":J
    .end local v9    # "length":I
    .end local v11    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 768
    .restart local v7    # "encrypted":J
    .restart local v9    # "length":I
    .restart local v11    # "text":Ljava/lang/String;
    :cond_1
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 771
    .local v13, "values":Landroid/content/ContentValues;
    iget-boolean v0, p0, Lcom/openintents/notepad/NoteEditor;->mNoteOnly:Z

    if-nez v0, :cond_4

    .line 772
    const-string v10, ""

    .line 773
    .local v10, "oldText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "note"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 774
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 775
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 777
    :cond_2
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 779
    const-string v0, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 782
    :cond_3
    invoke-static {v11}, Lcom/openintents/notepad/util/ExtractTitle;->extractTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 783
    .local v12, "title":Ljava/lang/String;
    const-string v0, "title"

    invoke-virtual {v13, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "oldText":Ljava/lang/String;
    .end local v12    # "title":Ljava/lang/String;
    :cond_4
    const-string v0, "note"

    invoke-virtual {v13, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v0, "theme"

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mTheme:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 801
    .end local v9    # "length":I
    .end local v11    # "text":Ljava/lang/String;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_5
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 802
    .restart local v13    # "values":Landroid/content/ContentValues;
    const-string v0, "theme"

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mTheme:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mDecryptedText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 809
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/openintents/notepad/NoteEditor;->encryptNote(Z)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1006
    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    iget-object v3, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v4

    .line 1008
    .local v0, "contentChanged":Z
    :goto_0
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->isNoteUnencrypted()Z

    move-result v1

    .line 1012
    .local v1, "isNoteUnencrypted":Z
    const/high16 v2, 0x40000

    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1014
    iget v2, p0, Lcom/openintents/notepad/NoteEditor;->mState:I

    if-ne v2, v6, :cond_1

    .line 1016
    invoke-interface {p1, v4, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1017
    invoke-interface {p1, v5, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1018
    invoke-interface {p1, v6, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1019
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1027
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .end local v0    # "contentChanged":Z
    .end local v1    # "isNoteUnencrypted":Z
    :cond_0
    move v0, v5

    .line 1006
    goto :goto_0

    .line 1022
    .restart local v0    # "contentChanged":Z
    .restart local v1    # "isNoteUnencrypted":Z
    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/openintents/notepad/NoteEditor;->mUndoRevert:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v4

    :goto_2
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1023
    invoke-interface {p1, v5, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1024
    invoke-interface {p1, v6, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_1

    :cond_2
    move v2, v5

    .line 1022
    goto :goto_2
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 543
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 549
    invoke-static {p0}, Lcom/openintents/notepad/PreferenceActivity;->getAutoLinkFromPreference(Landroid/content/Context;)I

    move-result v0

    .line 551
    .local v0, "autoLink":I
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setAutoLinkMask(I)V

    .line 553
    iput-wide v3, p0, Lcom/openintents/notepad/NoteEditor;->mEncrypted:J

    .line 555
    iget v1, p0, Lcom/openintents/notepad/NoteEditor;->mState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/openintents/notepad/NoteEditor;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 556
    :cond_0
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->getNoteFromContentProvider()V

    .line 561
    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/openintents/notepad/NoteEditor;->mEncrypted:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mDecryptedText:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 562
    :cond_2
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->applyInsertText()V

    .line 568
    :cond_3
    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    new-instance v2, Lcom/openintents/notepad/NoteEditor$2;

    invoke-direct {v2, p0}, Lcom/openintents/notepad/NoteEditor$2;-><init>(Lcom/openintents/notepad/NoteEditor;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 603
    invoke-virtual {p0}, Lcom/openintents/notepad/NoteEditor;->loadTheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openintents/notepad/NoteEditor;->setTheme(Ljava/lang/String;)V

    .line 604
    return-void

    .line 557
    :cond_4
    iget v1, p0, Lcom/openintents/notepad/NoteEditor;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 558
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->getNoteFromFile()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/openintents/notepad/NoteEditor;->mSelectionStart:I

    .line 721
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/openintents/notepad/NoteEditor;->mSelectionStop:I

    .line 722
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    .line 726
    const-string v0, "original_content"

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mOriginalContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v0, "undo_revert"

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mUndoRevert:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v0, "state"

    iget v1, p0, Lcom/openintents/notepad/NoteEditor;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    const-string v0, "uri"

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v0, "selection_start"

    iget v1, p0, Lcom/openintents/notepad/NoteEditor;->mSelectionStart:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 731
    const-string v0, "selection_stop"

    iget v1, p0, Lcom/openintents/notepad/NoteEditor;->mSelectionStop:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 732
    const-string v0, "file_content"

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mFileContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v0, "apply_text"

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mApplyText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v0, "apply_text_before"

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mApplyTextBefore:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v0, "apply_text_after"

    iget-object v1, p0, Lcom/openintents/notepad/NoteEditor;->mApplyTextAfter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public onSaveTheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    .line 1341
    invoke-virtual {p0, p1}, Lcom/openintents/notepad/NoteEditor;->saveTheme(Ljava/lang/String;)V

    .line 1342
    return-void
.end method

.method public onSetTheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    .line 1346
    invoke-virtual {p0, p1}, Lcom/openintents/notepad/NoteEditor;->setTheme(Ljava/lang/String;)V

    .line 1347
    return-void
.end method

.method public onSetThemeForAll(Ljava/lang/String;)V
    .locals 0
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    .line 1351
    invoke-static {p0, p1}, Lcom/openintents/notepad/NoteEditor;->setThemeForAll(Landroid/content/Context;Ljava/lang/String;)V

    .line 1352
    return-void
.end method

.method public readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 13
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v12, "NoteEditor"

    const-string v11, "File not found"

    .line 498
    const/4 v5, 0x0

    .line 499
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 500
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 501
    .local v2, "dis":Ljava/io/DataInputStream;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 504
    .local v7, "sb":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 507
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 508
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 511
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v3, "dis":Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v8

    if-nez v8, :cond_1

    .line 522
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 523
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 524
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 538
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_1
    return-object v8

    .line 515
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v8

    if-eqz v8, :cond_0

    .line 517
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 526
    :catch_0
    move-exception v8

    move-object v4, v8

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 527
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_2
    const-string v8, "NoteEditor"

    const-string v8, "File not found"

    invoke-static {v12, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    const v8, 0x7f060054

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 529
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move-object v8, v10

    .line 530
    goto :goto_1

    .line 531
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 532
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    const-string v8, "NoteEditor"

    const-string v8, "File not found"

    invoke-static {v12, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    const v8, 0x7f060053

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 534
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    move-object v8, v10

    .line 535
    goto :goto_1

    .line 531
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v8

    move-object v4, v8

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v8

    move-object v4, v8

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    move-object v4, v8

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 526
    :catch_5
    move-exception v8

    move-object v4, v8

    goto :goto_2

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v8

    move-object v4, v8

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v4, v8

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public saveTheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/openintents/notepad/NoteEditor;->mTheme:Ljava/lang/String;

    .line 1404
    return-void
.end method

.method setTheme(Ljava/lang/String;)V
    .locals 3
    .param p1, "themeName"    # Ljava/lang/String;

    .prologue
    .line 1412
    invoke-static {p0}, Lcom/openintents/notepad/PreferenceActivity;->getFontSizeFromPrefs(Landroid/content/Context;)I

    move-result v0

    .line 1415
    .local v0, "size":I
    invoke-direct {p0, p1, v0}, Lcom/openintents/notepad/NoteEditor;->setRemoteStyle(Ljava/lang/String;I)Z

    move-result v1

    .line 1417
    .local v1, "themeFound":Z
    if-nez v1, :cond_0

    .line 1419
    const v2, 0x7f080001

    invoke-direct {p0, v2, v0}, Lcom/openintents/notepad/NoteEditor;->setLocalStyle(II)V

    .line 1422
    :cond_0
    invoke-direct {p0}, Lcom/openintents/notepad/NoteEditor;->applyTheme()V

    .line 1423
    return-void
.end method

.method setThemeSettings()V
    .locals 1

    .prologue
    .line 1318
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/NoteEditor;->showDialog(I)V

    .line 1319
    return-void
.end method
