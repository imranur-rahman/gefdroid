.class public Lcom/feasy/jewels/Gel/Bomb;
.super Ljava/lang/Object;
.source "Bomb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feasy/jewels/Gel/Bomb$Point;
    }
.end annotation


# instance fields
.field bitmap:[Landroid/graphics/Bitmap;

.field height:I

.field vector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/feasy/jewels/Gel/Bomb$Point;",
            ">;"
        }
    .end annotation
.end field

.field width:I


# direct methods
.method public constructor <init>([Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p1, "mb"    # [Landroid/graphics/Bitmap;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    .line 18
    iput-object p1, p0, Lcom/feasy/jewels/Gel/Bomb;->bitmap:[Landroid/graphics/Bitmap;

    .line 19
    iput p2, p0, Lcom/feasy/jewels/Gel/Bomb;->width:I

    .line 20
    iput p3, p0, Lcom/feasy/jewels/Gel/Bomb;->height:I

    .line 21
    return-void
.end method


# virtual methods
.method public add(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "type"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    new-instance v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/feasy/jewels/Gel/Bomb$Point;-><init>(Lcom/feasy/jewels/Gel/Bomb;III)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public move()V
    .locals 4

    .prologue
    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->trimToSize()V

    .line 35
    return-void

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v2, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->translating:I

    .line 30
    iget-object v3, p0, Lcom/feasy/jewels/Gel/Bomb;->bitmap:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v1, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->type:I

    aget-object v1, v3, v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 29
    div-int/lit8 v1, v1, 0x2

    if-le v2, v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 28
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public paint(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    iget v1, p0, Lcom/feasy/jewels/Gel/Bomb;->width:I

    iget v2, p0, Lcom/feasy/jewels/Gel/Bomb;->height:I

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 53
    return-void

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/feasy/jewels/Gel/Bomb;->bitmap:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v1, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->type:I

    aget-object v2, v2, v1

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Rect;

    .line 43
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v5, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->x:I

    .line 44
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v1, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->translating:I

    .line 42
    add-int/2addr v5, v1

    .line 44
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v6, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->y:I

    .line 45
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v1, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->translating:I

    .line 44
    add-int/2addr v6, v1

    .line 45
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v7, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->x:I

    .line 46
    iget-object v8, p0, Lcom/feasy/jewels/Gel/Bomb;->bitmap:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v1, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->type:I

    aget-object v1, v8, v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 45
    add-int/2addr v7, v1

    .line 47
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v1, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->translating:I

    .line 45
    sub-int/2addr v7, v1

    .line 47
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v8, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->y:I

    .line 48
    iget-object v9, p0, Lcom/feasy/jewels/Gel/Bomb;->bitmap:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v1, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->type:I

    aget-object v1, v9, v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 47
    add-int/2addr v8, v1

    .line 49
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v1, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->translating:I

    .line 47
    sub-int v1, v8, v1

    invoke-direct {v4, v5, v6, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 50
    iget-object v1, p0, Lcom/feasy/jewels/Gel/Bomb;->vector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/feasy/jewels/Gel/Bomb$Point;

    iget v2, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->translating:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/feasy/jewels/Gel/Bomb$Point;->translating:I

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
