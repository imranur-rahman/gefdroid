.class public Lcom/openintents/notepad/NotePadProvider;
.super Landroid/content/ContentProvider;
.source "NotePadProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openintents/notepad/NotePadProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "note_pad.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final NOTES:I = 0x1

.field private static final NOTES_TABLE_NAME:Ljava/lang/String; = "notes"

.field private static final NOTE_ID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NotePadProvider"

.field private static sNotesProjectionMap:Ljava/util/HashMap;
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

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/openintents/notepad/NotePadProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-string v7, "modified"

    const-string v6, "encrypted"

    const-string v5, "created"

    const-string v4, "com.openintents.notepad"

    const-string v3, "_id"

    .line 310
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/openintents/notepad/NotePadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 311
    sget-object v0, Lcom/openintents/notepad/NotePadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.openintents.notepad"

    const-string v1, "notes"

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    sget-object v0, Lcom/openintents/notepad/NotePadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.openintents.notepad"

    const-string v1, "notes/#"

    const/4 v2, 0x2

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/openintents/notepad/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    .line 315
    sget-object v0, Lcom/openintents/notepad/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/openintents/notepad/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/openintents/notepad/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "note"

    const-string v2, "note"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/openintents/notepad/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "created"

    const-string v1, "created"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/openintents/notepad/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "modified"

    const-string v1, "modified"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/openintents/notepad/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "tags"

    const-string v2, "tags"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/openintents/notepad/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "encrypted"

    const-string v1, "encrypted"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/openintents/notepad/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "theme"

    const-string v2, "theme"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const-string v11, "notes"

    .line 249
    iget-object v8, p0, Lcom/openintents/notepad/NotePadProvider;->mOpenHelper:Lcom/openintents/notepad/NotePadProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/openintents/notepad/NotePadProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 251
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v0, v7

    check-cast v0, [J

    move-object v1, v0

    .line 252
    .local v1, "affectedRows":[J
    sget-object v8, Lcom/openintents/notepad/NotePadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 268
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unknown URI "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 254
    :pswitch_0
    const-string v8, "notes"

    invoke-static {v3, v11, p2, p3}, Lcom/openintents/util/ProviderUtils;->getAffectedRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v1

    .line 255
    const-string v8, "notes"

    invoke-virtual {v3, v11, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 271
    .local v2, "count":I
    :goto_0
    invoke-virtual {p0}, Lcom/openintents/notepad/NotePadProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 273
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.openintents.action.DELETED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 275
    const-string v7, "com.openintents.extra.AFFECTED_ROWS"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0}, Lcom/openintents/notepad/NotePadProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    return v2

    .line 259
    .end local v2    # "count":I
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 260
    .local v5, "noteId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "_id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 261
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " AND ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x29

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 260
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, "whereString":Ljava/lang/String;
    const-string v8, "notes"

    invoke-static {v3, v11, v6, p3}, Lcom/openintents/util/ProviderUtils;->getAffectedRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v1

    .line 264
    const-string v8, "notes"

    invoke-virtual {v3, v11, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 265
    .restart local v2    # "count":I
    goto :goto_0

    .line 261
    .end local v2    # "count":I
    .end local v6    # "whereString":Ljava/lang/String;
    :cond_0
    const-string v9, ""

    goto :goto_1

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 185
    sget-object v0, Lcom/openintents/notepad/NotePadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URI "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.openintents.notepad.note"

    .line 190
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.openintents.notepad.note"

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 200
    sget-object v8, Lcom/openintents/notepad/NotePadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 201
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unknown URI "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 205
    :cond_0
    if-eqz p2, :cond_5

    .line 206
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 211
    .local v7, "values":Landroid/content/ContentValues;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 214
    .local v3, "now":Ljava/lang/Long;
    const-string v8, "created"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 215
    const-string v8, "created"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    :cond_1
    const-string v8, "modified"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 219
    const-string v8, "modified"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    :cond_2
    const-string v8, "title"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 223
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 224
    .local v4, "r":Landroid/content/res/Resources;
    const-string v8, "title"

    const v9, 0x104000f

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v4    # "r":Landroid/content/res/Resources;
    :cond_3
    const-string v8, "note"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 228
    const-string v8, "note"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_4
    iget-object v8, p0, Lcom/openintents/notepad/NotePadProvider;->mOpenHelper:Lcom/openintents/notepad/NotePadProvider$DatabaseHelper;

    invoke-virtual {v8}, Lcom/openintents/notepad/NotePadProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 232
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "notes"

    const-string v9, "note"

    invoke-virtual {v0, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 233
    .local v5, "rowId":J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_6

    .line 234
    sget-object v8, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 235
    .local v2, "noteUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/openintents/notepad/NotePadProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 237
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.openintents.action.INSERTED"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0}, Lcom/openintents/notepad/NotePadProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    return-object v2

    .line 208
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "noteUri":Landroid/net/Uri;
    .end local v3    # "now":Ljava/lang/Long;
    .end local v5    # "rowId":J
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_5
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .restart local v7    # "values":Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 244
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "now":Ljava/lang/Long;
    .restart local v5    # "rowId":J
    :cond_6
    new-instance v8, Landroid/database/SQLException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to insert row into "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/openintents/notepad/NotePadProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/openintents/notepad/NotePadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openintents/notepad/NotePadProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openintents/notepad/NotePadProvider;->mOpenHelper:Lcom/openintents/notepad/NotePadProvider$DatabaseHelper;

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const-string v3, "notes"

    .line 148
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 150
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/openintents/notepad/NotePadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 163
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URI "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :pswitch_0
    const-string v2, "notes"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 153
    sget-object v2, Lcom/openintents/notepad/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 168
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/openintents/notepad/NotePadProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/openintents/notepad/PreferenceActivity;->getSortOrderFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, "orderBy":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/openintents/notepad/NotePadProvider;->mOpenHelper:Lcom/openintents/notepad/NotePadProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/openintents/notepad/NotePadProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 176
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 179
    .local v8, "c":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/openintents/notepad/NotePadProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 180
    return-object v8

    .line 157
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "notes"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 158
    sget-object v2, Lcom/openintents/notepad/NotePadProvider;->sNotesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "_id="

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_0
    move-object v7, p5

    .restart local v7    # "orderBy":Ljava/lang/String;
    goto :goto_1

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const-string v7, "notes"

    .line 283
    iget-object v4, p0, Lcom/openintents/notepad/NotePadProvider;->mOpenHelper:Lcom/openintents/notepad/NotePadProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/openintents/notepad/NotePadProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 285
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/openintents/notepad/NotePadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 297
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown URI "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 287
    :pswitch_0
    const-string v4, "notes"

    invoke-virtual {v1, v7, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 300
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lcom/openintents/notepad/NotePadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 302
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.openintents.action.MODIFIED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0}, Lcom/openintents/notepad/NotePadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    return v0

    .line 291
    .end local v0    # "count":I
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 292
    .local v3, "noteId":Ljava/lang/String;
    const-string v4, "notes"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 293
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " AND ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-virtual {v1, v7, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 294
    .restart local v0    # "count":I
    goto :goto_0

    .line 293
    .end local v0    # "count":I
    :cond_0
    const-string v5, ""

    goto :goto_1

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
