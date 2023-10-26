.class public Lcom/openintents/notepad/NoteEditor$LinedEditText;
.super Landroid/widget/EditText;
.source "NoteEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openintents/notepad/NoteEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinedEditText"
.end annotation


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 223
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/openintents/notepad/NoteEditor$LinedEditText;->mRect:Landroid/graphics/Rect;

    .line 224
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/openintents/notepad/NoteEditor$LinedEditText;->mPaint:Landroid/graphics/Paint;

    .line 225
    iget-object v0, p0, Lcom/openintents/notepad/NoteEditor$LinedEditText;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 230
    sget v3, Lcom/openintents/notepad/NoteEditor;->mLinesMode:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    move v11, v3

    .line 231
    .local v11, "fullWidth":Z
    :goto_0
    sget v3, Lcom/openintents/notepad/NoteEditor;->mLinesMode:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    move/from16 v20, v3

    .line 232
    .local v20, "textlines":Z
    :goto_1
    sget v3, Lcom/openintents/notepad/NoteEditor;->mLinesMode:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    move/from16 v17, v3

    .line 233
    .local v17, "pagelines":Z
    :goto_2
    if-nez v20, :cond_0

    if-eqz v17, :cond_1

    .line 234
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor$LinedEditText;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    sget v4, Lcom/openintents/notepad/NoteEditor;->mLinesColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/NoteEditor$LinedEditText;->getLineCount()I

    move-result v10

    .line 237
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor$LinedEditText;->mRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 238
    .local v18, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openintents/notepad/NoteEditor$LinedEditText;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    .line 240
    .local v8, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/NoteEditor$LinedEditText;->getHeight()I

    move-result v12

    .line 241
    .local v12, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/NoteEditor$LinedEditText;->getLineHeight()I

    move-result v15

    .line 242
    .local v15, "line_height":I
    div-int v3, v12, v15

    add-int/lit8 v16, v3, 0x1

    .line 244
    .local v16, "page_size":I
    const/4 v9, 0x0

    .line 245
    .local v9, "baseline":I
    const/4 v14, 0x0

    .line 246
    .local v14, "left":I
    const/16 v19, 0x0

    .line 247
    .local v19, "right":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-lt v13, v10, :cond_5

    .line 257
    if-eqz v17, :cond_1

    .line 259
    move v13, v10

    :goto_4
    move v0, v13

    move/from16 v1, v16

    if-lt v0, v1, :cond_7

    .line 265
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v9    # "baseline":I
    .end local v10    # "count":I
    .end local v12    # "height":I
    .end local v13    # "i":I
    .end local v14    # "left":I
    .end local v15    # "line_height":I
    .end local v16    # "page_size":I
    .end local v18    # "r":Landroid/graphics/Rect;
    .end local v19    # "right":I
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 266
    return-void

    .line 230
    .end local v11    # "fullWidth":Z
    .end local v17    # "pagelines":Z
    .end local v20    # "textlines":Z
    :cond_2
    const/4 v3, 0x0

    move v11, v3

    goto :goto_0

    .line 231
    .restart local v11    # "fullWidth":Z
    :cond_3
    const/4 v3, 0x0

    move/from16 v20, v3

    goto :goto_1

    .line 232
    .restart local v20    # "textlines":Z
    :cond_4
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_2

    .line 248
    .restart local v8    # "paint":Landroid/graphics/Paint;
    .restart local v9    # "baseline":I
    .restart local v10    # "count":I
    .restart local v12    # "height":I
    .restart local v13    # "i":I
    .restart local v14    # "left":I
    .restart local v15    # "line_height":I
    .restart local v16    # "page_size":I
    .restart local v17    # "pagelines":Z
    .restart local v18    # "r":Landroid/graphics/Rect;
    .restart local v19    # "right":I
    :cond_5
    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/openintents/notepad/NoteEditor$LinedEditText;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v9

    .line 249
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v14, v0

    .line 250
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    .line 251
    if-eqz v11, :cond_6

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/NoteEditor$LinedEditText;->getLeft()I

    move-result v14

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/openintents/notepad/NoteEditor$LinedEditText;->getRight()I

    move-result v19

    .line 255
    :cond_6
    int-to-float v4, v14

    add-int/lit8 v3, v9, 0x1

    int-to-float v5, v3

    move/from16 v0, v19

    int-to-float v0, v0

    move v6, v0

    add-int/lit8 v3, v9, 0x1

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 247
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 260
    :cond_7
    add-int/2addr v9, v15

    .line 261
    int-to-float v4, v14

    add-int/lit8 v3, v9, 0x1

    int-to-float v5, v3

    move/from16 v0, v19

    int-to-float v0, v0

    move v6, v0

    add-int/lit8 v3, v9, 0x1

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 259
    add-int/lit8 v13, v13, 0x1

    goto :goto_4
.end method
