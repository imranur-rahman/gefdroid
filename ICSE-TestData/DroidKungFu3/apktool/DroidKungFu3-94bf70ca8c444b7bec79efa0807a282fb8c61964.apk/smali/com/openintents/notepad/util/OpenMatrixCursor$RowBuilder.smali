.class public Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;
.super Ljava/lang/Object;
.source "OpenMatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openintents/notepad/util/OpenMatrixCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RowBuilder"
.end annotation


# instance fields
.field private final endIndex:I

.field private index:I

.field final synthetic this$0:Lcom/openintents/notepad/util/OpenMatrixCursor;


# direct methods
.method constructor <init>(Lcom/openintents/notepad/util/OpenMatrixCursor;II)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 202
    iput-object p1, p0, Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;->this$0:Lcom/openintents/notepad/util/OpenMatrixCursor;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput p2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;->index:I

    .line 201
    iput p3, p0, Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;->endIndex:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;
    .locals 3
    .param p1, "columnValue"    # Ljava/lang/Object;

    .prologue
    .line 212
    iget v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;->index:I

    iget v1, p0, Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;->endIndex:I

    if-ne v0, v1, :cond_0

    .line 213
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    .line 214
    const-string v1, "No more columns left."

    .line 213
    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;->this$0:Lcom/openintents/notepad/util/OpenMatrixCursor;

    # getter for: Lcom/openintents/notepad/util/OpenMatrixCursor;->data:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/openintents/notepad/util/OpenMatrixCursor;->access$0(Lcom/openintents/notepad/util/OpenMatrixCursor;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;->index:I

    aput-object p1, v0, v1

    .line 218
    return-object p0
.end method
