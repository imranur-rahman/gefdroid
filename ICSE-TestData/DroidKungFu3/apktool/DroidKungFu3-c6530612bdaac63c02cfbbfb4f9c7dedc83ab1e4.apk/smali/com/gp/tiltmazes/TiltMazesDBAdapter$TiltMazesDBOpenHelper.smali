.class Lcom/gp/tiltmazes/TiltMazesDBAdapter$TiltMazesDBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TiltMazesDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gp/tiltmazes/TiltMazesDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TiltMazesDBOpenHelper"
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table mazes (_id integer primary key autoincrement, name text not null, solution_steps integer);"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 109
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 113
    const-string v3, "create table mazes (_id integer primary key autoincrement, name text not null, solution_steps integer);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 117
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "solution_steps"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "id":I
    sget-object v3, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    return-void

    .line 121
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gp/tiltmazes/MapDesign;

    .line 122
    .local v1, "map":Lcom/gp/tiltmazes/MapDesign;
    const-string v4, "_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v4, "name"

    invoke-virtual {v1}, Lcom/gp/tiltmazes/MapDesign;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v4, "mazes"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "id":I
    .end local v1    # "map":Lcom/gp/tiltmazes/MapDesign;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    .line 131
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 132
    throw v3
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 138
    const-string v0, "drop table if exists mazes"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/gp/tiltmazes/TiltMazesDBAdapter$TiltMazesDBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 140
    return-void
.end method
