.class Lcom/gp/tiltmazes/SelectMazeActivity$1;
.super Landroid/widget/CursorAdapter;
.source "SelectMazeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gp/tiltmazes/SelectMazeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gp/tiltmazes/SelectMazeActivity;


# direct methods
.method constructor <init>(Lcom/gp/tiltmazes/SelectMazeActivity;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/database/Cursor;
    .param p4, "$anonymous2"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gp/tiltmazes/SelectMazeActivity$1;->this$0:Lcom/gp/tiltmazes/SelectMazeActivity;

    .line 59
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v8, ""

    .line 72
    sget-object v4, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gp/tiltmazes/MapDesign;

    .line 74
    .local v0, "m":Lcom/gp/tiltmazes/MapDesign;
    const v4, 0x7f060011

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 75
    .local v3, "mazeSolvedTickbox":Landroid/widget/ImageView;
    const v4, 0x7f060005

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, "mazeName":Landroid/widget/TextView;
    const v4, 0x7f060012

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    .local v2, "mazeSolutionSteps":Landroid/widget/TextView;
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 79
    const v4, 0x108000f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    const-string v4, ""

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MapDesign;->getSizeX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MapDesign;->getSizeY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 93
    invoke-virtual {v0}, Lcom/gp/tiltmazes/MapDesign;->getGoalCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " goal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/gp/tiltmazes/MapDesign;->getGoalCount()I

    move-result v5

    if-le v5, v6, :cond_1

    const-string v5, "s"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void

    .line 83
    :cond_0
    const v4, 0x1080010

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Solved in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 87
    const-string v5, " steps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    :cond_1
    const-string v5, ""

    move-object v5, v8

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "rowView":Landroid/view/View;
    invoke-virtual {p0, v1, p1, p2}, Lcom/gp/tiltmazes/SelectMazeActivity$1;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 67
    return-object v1
.end method
