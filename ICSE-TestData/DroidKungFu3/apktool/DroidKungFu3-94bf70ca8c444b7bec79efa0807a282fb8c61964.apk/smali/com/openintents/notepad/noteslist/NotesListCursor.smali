.class public Lcom/openintents/notepad/noteslist/NotesListCursor;
.super Lcom/openintents/notepad/util/OpenMatrixCursor;
.source "NotesListCursor.java"


# static fields
.field public static final COLUMN_INDEX_ENCRYPTED:I = 0x3

.field public static final COLUMN_INDEX_ID:I = 0x0

.field public static final COLUMN_INDEX_TAGS:I = 0x2

.field public static final COLUMN_INDEX_TAGS_ENCRYPTED:I = 0x5

.field public static final COLUMN_INDEX_TITLE:I = 0x1

.field public static final COLUMN_INDEX_TITLE_ENCRYPTED:I = 0x4

.field public static final PROJECTION:[Ljava/lang/String;

.field protected static final PROJECTION_DB:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NotesListCursor"

.field static final TAGS_DECRYPTED:Ljava/lang/String; = "tags_decrypted"

.field static final TITLE_DECRYPTED:Ljava/lang/String; = "title_decrypted"

.field private static final debug:Z

.field public static mEncryptedStringHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mEncryptedStringList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mLoggedIn:Z

.field static mSuspendQueries:Z


# instance fields
.field public mContainsEncryptedStrings:Z

.field mContentObserver:Landroid/database/ContentObserver;

.field mContext:Landroid/content/Context;

.field public mCurrentFilter:Ljava/lang/String;

.field mDbCursor:Landroid/database/Cursor;

.field mIntent:Landroid/content/Intent;

.field public mSelectedTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33
    new-array v0, v6, [Ljava/lang/String;

    .line 34
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 35
    const-string v1, "title"

    aput-object v1, v0, v2

    .line 36
    const-string v1, "tags"

    aput-object v1, v0, v4

    .line 37
    const-string v1, "encrypted"

    aput-object v1, v0, v5

    .line 33
    sput-object v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->PROJECTION_DB:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 46
    const-string v1, "title"

    aput-object v1, v0, v2

    .line 47
    const-string v1, "tags"

    aput-object v1, v0, v4

    .line 48
    const-string v1, "encrypted"

    aput-object v1, v0, v5

    .line 49
    const-string v1, "title_decrypted"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    .line 50
    const-string v2, "tags_decrypted"

    aput-object v2, v0, v1

    .line 44
    sput-object v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->PROJECTION:[Ljava/lang/String;

    .line 62
    sput-boolean v3, Lcom/openintents/notepad/noteslist/NotesListCursor;->mLoggedIn:Z

    .line 65
    sput-boolean v3, Lcom/openintents/notepad/noteslist/NotesListCursor;->mSuspendQueries:Z

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mEncryptedStringHashMap:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mEncryptedStringList:Ljava/util/List;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    sget-object v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/openintents/notepad/util/OpenMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/openintents/notepad/noteslist/NotesListCursor$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/openintents/notepad/noteslist/NotesListCursor$1;-><init>(Lcom/openintents/notepad/noteslist/NotesListCursor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContentObserver:Landroid/database/ContentObserver;

    .line 95
    iput-object p1, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mIntent:Landroid/content/Intent;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mCurrentFilter:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContainsEncryptedStrings:Z

    .line 100
    return-void
.end method

.method public static addForEncryption(Ljava/lang/String;)V
    .locals 1
    .param p0, "encryptedString"    # Ljava/lang/String;

    .prologue
    .line 311
    sget-object v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mEncryptedStringList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    sget-object v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mEncryptedStringList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    return-void
.end method

.method public static flushDecryptedStringHashMap()V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mEncryptedStringHashMap:Ljava/util/HashMap;

    .line 306
    const/4 v0, 0x0

    sput-boolean v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mLoggedIn:Z

    .line 307
    return-void
.end method

.method public static getNextEncryptedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    sget-object v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mEncryptedStringList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    sget-object v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mEncryptedStringList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "encryptedString":Ljava/lang/String;
    move-object v1, v0

    .line 321
    .end local v0    # "encryptedString":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private runQuery(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 28
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 153
    if-eqz p1, :cond_2

    .line 154
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mCurrentFilter:Ljava/lang/String;

    .line 158
    :goto_0
    if-eqz p2, :cond_3

    .line 159
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mSelectedTag:Ljava/lang/String;

    .line 164
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContentObserver:Landroid/database/ContentObserver;

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 167
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    .line 169
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mIntent:Landroid/content/Intent;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/openintents/notepad/noteslist/NotesListCursor;->PROJECTION_DB:[Ljava/lang/String;

    .line 170
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContext:Landroid/content/Context;

    move-object v8, v0

    invoke-static {v8}, Lcom/openintents/notepad/PreferenceActivity;->getSortOrderFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 169
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContentObserver:Landroid/database/ContentObserver;

    move-object v4, v0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/noteslist/NotesListCursor;->reset()V

    .line 181
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContainsEncryptedStrings:Z

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x7f060041

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 185
    .local v12, "encryptedlabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 186
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 302
    return-void

    .line 156
    .end local v12    # "encryptedlabel":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mCurrentFilter:Ljava/lang/String;

    goto/16 :goto_0

    .line 161
    :cond_3
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mSelectedTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 187
    .restart local v12    # "encryptedlabel":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 188
    .local v13, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 189
    .local v25, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 190
    .local v22, "tags":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 191
    .local v10, "encrypted":J
    const-string v27, ""

    .line 192
    .local v27, "titleEncrypted":Ljava/lang/String;
    const-string v24, ""

    .line 195
    .local v24, "tagsEncrypted":Ljava/lang/String;
    const/16 v18, 0x0

    .line 197
    .local v18, "skipEncrypted":Z
    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-lez v3, :cond_6

    .line 199
    sget-object v3, Lcom/openintents/notepad/noteslist/NotesListCursor;->mEncryptedStringHashMap:Ljava/util/HashMap;

    move-object v0, v3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 201
    .local v26, "titleDecrypted":Ljava/lang/String;
    if-eqz v26, :cond_a

    .line 203
    move-object/from16 v25, v26

    .line 216
    :goto_3
    if-eqz v22, :cond_5

    .line 217
    sget-object v3, Lcom/openintents/notepad/noteslist/NotesListCursor;->mEncryptedStringHashMap:Ljava/util/HashMap;

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 218
    .local v23, "tagsDecrypted":Ljava/lang/String;
    if-eqz v23, :cond_b

    .line 220
    move-object/from16 v22, v23

    .line 234
    .end local v23    # "tagsDecrypted":Ljava/lang/String;
    :cond_5
    :goto_4
    sget-boolean v3, Lcom/openintents/notepad/noteslist/NotesListCursor;->mLoggedIn:Z

    if-nez v3, :cond_6

    .line 237
    move-object/from16 v25, v12

    .line 238
    const-string v22, ""

    .line 242
    .end local v26    # "titleDecrypted":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x0

    .line 244
    .local v9, "addrow":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mCurrentFilter:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mSelectedTag:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 246
    const/4 v9, 0x1

    .line 289
    :cond_7
    :goto_5
    if-eqz v9, :cond_1

    .line 290
    if-nez v22, :cond_8

    .line 291
    const-string v22, ""

    .line 294
    :cond_8
    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-eqz v3, :cond_9

    .line 295
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContainsEncryptedStrings:Z

    .line 298
    :cond_9
    const/4 v3, 0x6

    new-array v15, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v15, v3

    const/4 v3, 0x1

    aput-object v25, v15, v3

    const/4 v3, 0x2

    aput-object v22, v15, v3

    const/4 v3, 0x3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v15, v3

    const/4 v3, 0x4

    aput-object v27, v15, v3

    const/4 v3, 0x5

    aput-object v24, v15, v3

    .line 299
    .local v15, "row":[Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/openintents/notepad/noteslist/NotesListCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 207
    .end local v9    # "addrow":Z
    .end local v15    # "row":[Ljava/lang/Object;
    .restart local v26    # "titleDecrypted":Ljava/lang/String;
    :cond_a
    invoke-static/range {v25 .. v25}, Lcom/openintents/notepad/noteslist/NotesListCursor;->addForEncryption(Ljava/lang/String;)V

    .line 210
    move-object/from16 v27, v25

    .line 211
    move-object/from16 v25, v12

    .line 213
    const/16 v18, 0x1

    goto :goto_3

    .line 224
    .restart local v23    # "tagsDecrypted":Ljava/lang/String;
    :cond_b
    invoke-static/range {v22 .. v22}, Lcom/openintents/notepad/noteslist/NotesListCursor;->addForEncryption(Ljava/lang/String;)V

    .line 227
    move-object/from16 v24, v22

    .line 228
    const-string v22, ""

    .line 230
    const/16 v18, 0x1

    goto :goto_4

    .line 247
    .end local v23    # "tagsDecrypted":Ljava/lang/String;
    .end local v26    # "titleDecrypted":Ljava/lang/String;
    .restart local v9    # "addrow":Z
    :cond_c
    if-eqz v18, :cond_d

    .line 249
    const/4 v9, 0x0

    goto :goto_5

    .line 254
    :cond_d
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string v3, " "

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 258
    const-string v3, " "

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v3, ","

    const-string v4, " "

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 260
    .local v19, "spacetags":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .end local v19    # "spacetags":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 264
    .local v17, "searchstring":Ljava/lang/String;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v20, "tagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 266
    const-string v3, ","

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_6
    if-lt v5, v4, :cond_10

    .line 273
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mCurrentFilter:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mSelectedTag:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 282
    :goto_7
    if-nez v9, :cond_7

    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-eqz v3, :cond_7

    .line 285
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContainsEncryptedStrings:Z

    goto/16 :goto_5

    .line 266
    :cond_10
    aget-object v21, v3, v5

    .line 267
    .local v21, "tagString":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_11

    .line 268
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 275
    .end local v21    # "tagString":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mSelectedTag:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mCurrentFilter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    goto :goto_7

    .line 278
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mCurrentFilter:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mSelectedTag:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    move v9, v3

    .line 278
    :goto_8
    goto/16 :goto_7

    .line 279
    :cond_14
    const/4 v3, 0x0

    move v9, v3

    goto :goto_8
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Lcom/openintents/notepad/util/OpenMatrixCursor;->close()V

    .line 329
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 338
    :cond_0
    invoke-super {p0}, Lcom/openintents/notepad/util/OpenMatrixCursor;->deactivate()V

    .line 339
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 349
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 350
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mDbCursor:Landroid/database/Cursor;

    .line 354
    :cond_0
    invoke-super {p0}, Lcom/openintents/notepad/util/OpenMatrixCursor;->finalize()V

    .line 355
    return-void
.end method

.method public query(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Lcom/openintents/notepad/noteslist/NotesListCursor;

    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/openintents/notepad/noteslist/NotesListCursor;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 140
    .local v0, "cursor":Lcom/openintents/notepad/noteslist/NotesListCursor;
    invoke-direct {v0, p1, p2}, Lcom/openintents/notepad/noteslist/NotesListCursor;->runQuery(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 141
    return-object v0
.end method

.method public requery()Z
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mCurrentFilter:Ljava/lang/String;

    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesListCursor;->mSelectedTag:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/openintents/notepad/noteslist/NotesListCursor;->runQuery(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 129
    invoke-super {p0}, Lcom/openintents/notepad/util/OpenMatrixCursor;->requery()Z

    move-result v0

    return v0
.end method
