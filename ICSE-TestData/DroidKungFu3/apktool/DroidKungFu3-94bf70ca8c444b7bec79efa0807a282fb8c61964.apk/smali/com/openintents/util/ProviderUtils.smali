.class public Lcom/openintents/util/ProviderUtils;
.super Ljava/lang/Object;
.source "ProviderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAffectedRows(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J
    .locals 13
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x0

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v6

    .line 34
    :goto_0
    return-object v1

    .line 25
    :cond_0
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v12

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 27
    .local v10, "c":Landroid/database/Cursor;
    move-object v0, v6

    check-cast v0, [J

    move-object v9, v0

    .line 28
    .local v9, "affectedRows":[J
    if-eqz v10, :cond_1

    .line 29
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v9, v1, [J

    .line 30
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .end local v11    # "i":I
    :cond_1
    move-object v1, v9

    .line 34
    goto :goto_0

    .line 31
    .restart local v11    # "i":I
    :cond_2
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v9, v11

    .line 30
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method
