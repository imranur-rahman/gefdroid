.class Lcom/openintents/notepad/NoteEditor$2;
.super Landroid/text/method/ArrowKeyMovementMethod;
.source "NoteEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openintents/notepad/NoteEditor;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openintents/notepad/NoteEditor;


# direct methods
.method constructor <init>(Lcom/openintents/notepad/NoteEditor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openintents/notepad/NoteEditor$2;->this$0:Lcom/openintents/notepad/NoteEditor;

    .line 568
    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 573
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 575
    .local v0, "action":I
    if-ne v0, v8, :cond_0

    .line 576
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 577
    .local v5, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 579
    .local v6, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    sub-int/2addr v5, v7

    .line 580
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    .line 582
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    add-int/2addr v5, v7

    .line 583
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    .line 585
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 586
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 587
    .local v2, "line":I
    int-to-float v7, v5

    invoke-virtual {v1, v2, v7}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 589
    .local v4, "off":I
    const-class v7, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v4, v4, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 591
    .local v3, "link":[Landroid/text/style/ClickableSpan;
    array-length v7, v3

    if-eqz v7, :cond_0

    .line 592
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    move v7, v8

    .line 597
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/ClickableSpan;
    .end local v4    # "off":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :goto_0
    return v7

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0
.end method
