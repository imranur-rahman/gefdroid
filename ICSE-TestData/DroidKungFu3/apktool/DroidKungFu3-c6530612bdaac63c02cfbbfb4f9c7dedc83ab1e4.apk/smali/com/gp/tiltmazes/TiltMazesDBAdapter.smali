.class public Lcom/gp/tiltmazes/TiltMazesDBAdapter;
.super Ljava/lang/Object;
.source "TiltMazesDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gp/tiltmazes/TiltMazesDBAdapter$TiltMazesDBOpenHelper;
    }
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field private static final DATABASE_NAME:Ljava/lang/String; = "tiltmazes.db"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "mazes"

.field private static final DATABASE_VERSION:I = 0x5

.field public static final ID_COLUMN:I = 0x0

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_SOLUTION_STEPS:Ljava/lang/String; = "solution_steps"

.field public static final NAME_COLUMN:I = 0x1

.field public static final SOLUTION_STEPS_COLUMN:I = 0x2


# instance fields
.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mDBHelper:Lcom/gp/tiltmazes/TiltMazesDBAdapter$TiltMazesDBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 26
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 27
    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 28
    const-string v2, "solution_steps"

    aput-object v2, v0, v1

    .line 25
    sput-object v0, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->COLUMNS:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/gp/tiltmazes/TiltMazesDBAdapter$TiltMazesDBOpenHelper;

    const-string v1, "tiltmazes.db"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/gp/tiltmazes/TiltMazesDBAdapter$TiltMazesDBOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->mDBHelper:Lcom/gp/tiltmazes/TiltMazesDBAdapter$TiltMazesDBOpenHelper;

    .line 36
    return-void
.end method


# virtual methods
.method public allMazes()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 64
    const-string v1, "mazes"

    .line 65
    sget-object v2, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->COLUMNS:[Ljava/lang/String;

    .line 13
    const-string v7, "_id"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 63
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 45
    return-void
.end method

.method public getFirstUnsolved()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->unsolvedMazes()Landroid/database/Cursor;

    move-result-object v0

    .line 89
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 94
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method public open()Lcom/gp/tiltmazes/TiltMazesDBAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->mDBHelper:Lcom/gp/tiltmazes/TiltMazesDBAdapter$TiltMazesDBOpenHelper;

    invoke-virtual {v0}, Lcom/gp/tiltmazes/TiltMazesDBAdapter$TiltMazesDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    return-object p0
.end method

.method public unsolvedMazes()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    const-string v7, "_id"

    .line 75
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    const-string v1, "mazes"

    .line 77
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v7, v2, v8

    .line 78
    const-string v3, "solution_steps = ?"

    .line 79
    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v4, v8

    .line 82
    const-string v6, "_id"

    move-object v6, v5

    .line 75
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public updateMaze(II)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "solution_steps"    # I

    .prologue
    .line 49
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "solution_steps"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    iget-object v1, p0, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    const-string v2, "mazes"

    .line 55
    const-string v3, "_id = ? AND (solution_steps = ? OR solution_steps > ?)"

    .line 58
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 52
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 60
    return-void
.end method
