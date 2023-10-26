.class public Lcom/openintents/notepad/util/OpenMatrixCursor;
.super Landroid/database/AbstractCursor;
.source "OpenMatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;
    }
.end annotation


# instance fields
.field private final columnCount:I

.field private final columnNames:[Ljava/lang/String;

.field private data:[Ljava/lang/Object;

.field private rowCount:I


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 65
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/openintents/notepad/util/OpenMatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1
    .param p1, "columnNames"    # [Ljava/lang/String;
    .param p2, "initialCapacity"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    .line 48
    iput-object p1, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnNames:[Ljava/lang/String;

    .line 49
    array-length v0, p1

    iput v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    .line 51
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 52
    const/4 p2, 0x1

    .line 55
    :cond_0
    iget v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->data:[Ljava/lang/Object;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/openintents/notepad/util/OpenMatrixCursor;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->data:[Ljava/lang/Object;

    return-object v0
.end method

.method private addRow(Ljava/util/ArrayList;I)V
    .locals 6
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "columnValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 164
    .local v2, "size":I
    iget v3, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    if-eq v2, v3, :cond_0

    .line 165
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "columnNames.length = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    iget v5, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", columnValues.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    :cond_0
    iget v3, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    .line 170
    iget-object v1, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->data:[Ljava/lang/Object;

    .line 171
    .local v1, "localData":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 174
    return-void

    .line 172
    :cond_1
    add-int v3, p2, v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ensureCapacity(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 178
    iget-object v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    if-le p1, v2, :cond_1

    .line 179
    iget-object v1, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->data:[Ljava/lang/Object;

    .line 180
    .local v1, "oldData":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->data:[Ljava/lang/Object;

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    .line 181
    .local v0, "newSize":I
    if-ge v0, p1, :cond_0

    .line 182
    move v0, p1

    .line 184
    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->data:[Ljava/lang/Object;

    .line 185
    iget-object v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->data:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    .end local v0    # "newSize":I
    .end local v1    # "oldData":[Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public addRow(Ljava/lang/Iterable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget v6, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    iget v7, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    mul-int v5, v6, v7

    .line 132
    .local v5, "start":I
    iget v6, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    add-int v3, v5, v6

    .line 133
    .local v3, "end":I
    invoke-direct {p0, v3}, Lcom/openintents/notepad/util/OpenMatrixCursor;->ensureCapacity(I)V

    .line 135
    instance-of v6, p1, Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 136
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-direct {p0, p1, v5}, Lcom/openintents/notepad/util/OpenMatrixCursor;->addRow(Ljava/util/ArrayList;I)V

    .line 159
    :goto_0
    return-void

    .line 140
    .restart local p1    # "columnValues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_0
    move v1, v5

    .line 141
    .local v1, "current":I
    iget-object v4, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->data:[Ljava/lang/Object;

    .line 142
    .local v4, "localData":[Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 151
    if-eq v1, v3, :cond_3

    .line 153
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 154
    const-string v7, "columnValues.size() < columnNames.length"

    .line 153
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, "columnValue":Ljava/lang/Object;
    if-ne v1, v3, :cond_2

    .line 145
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 146
    const-string v7, "columnValues.size() > columnNames.length"

    .line 145
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 148
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "current":I
    .local v2, "current":I
    aput-object v0, v4, v1

    move v1, v2

    .end local v2    # "current":I
    .restart local v1    # "current":I
    goto :goto_1

    .line 158
    .end local v0    # "columnValue":Ljava/lang/Object;
    :cond_3
    iget v6, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    goto :goto_0
.end method

.method public addRow([Ljava/lang/Object;)V
    .locals 4
    .param p1, "columnValues"    # [Ljava/lang/Object;

    .prologue
    .line 110
    array-length v1, p1

    iget v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    if-eq v1, v2, :cond_0

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "columnNames.length = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget v3, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", columnValues.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 113
    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_0
    iget v1, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    iget v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    mul-int v0, v1, v2

    .line 117
    .local v0, "start":I
    iget v1, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/openintents/notepad/util/OpenMatrixCursor;->ensureCapacity(I)V

    .line 118
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->data:[Ljava/lang/Object;

    iget v3, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 72
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    if-lt p1, v0, :cond_1

    .line 73
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested column: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", # of columns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    iget v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->mPos:I

    if-gez v0, :cond_2

    .line 77
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "Before first row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    iget v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->mPos:I

    iget v1, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    if-lt v0, v1, :cond_3

    .line 80
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "After last row."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->data:[Ljava/lang/Object;

    iget v1, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->mPos:I

    iget v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    return v0
.end method

.method public getDouble(I)D
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/openintents/notepad/util/OpenMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 266
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 267
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 266
    :goto_0
    return-wide v1

    .line 268
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/openintents/notepad/util/OpenMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 259
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 260
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 259
    :goto_0
    return v1

    .line 261
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/openintents/notepad/util/OpenMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 246
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 245
    :goto_0
    return v1

    .line 247
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/openintents/notepad/util/OpenMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 253
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 252
    :goto_0
    return-wide v1

    .line 254
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/openintents/notepad/util/OpenMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 239
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 238
    :goto_0
    return v1

    .line 240
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/openintents/notepad/util/OpenMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/openintents/notepad/util/OpenMatrixCursor;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRow()Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;
    .locals 4

    .prologue
    .line 93
    iget v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    .line 94
    iget v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    iget v3, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    mul-int v0, v2, v3

    .line 95
    .local v0, "endIndex":I
    invoke-direct {p0, v0}, Lcom/openintents/notepad/util/OpenMatrixCursor;->ensureCapacity(I)V

    .line 96
    iget v2, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    sub-int v1, v0, v2

    .line 97
    .local v1, "start":I
    new-instance v2, Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;

    invoke-direct {v2, p0, v1, v0}, Lcom/openintents/notepad/util/OpenMatrixCursor$RowBuilder;-><init>(Lcom/openintents/notepad/util/OpenMatrixCursor;II)V

    return-object v2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 289
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/util/OpenMatrixCursor;->reset(I)V

    .line 290
    return-void
.end method

.method public reset(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 278
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 279
    const/4 p1, 0x1

    .line 282
    :cond_0
    iget v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->columnCount:I

    mul-int/2addr v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->data:[Ljava/lang/Object;

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->rowCount:I

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Lcom/openintents/notepad/util/OpenMatrixCursor;->mPos:I

    .line 286
    return-void
.end method
