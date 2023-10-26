.class public Lcom/gp/tiltmazes/SelectMazeActivity;
.super Landroid/app/ListActivity;
.source "SelectMazeActivity.java"


# instance fields
.field private mDB:Lcom/gp/tiltmazes/TiltMazesDBAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Lcom/gp/tiltmazes/TiltMazesDBAdapter;

    invoke-virtual {p0}, Lcom/gp/tiltmazes/SelectMazeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gp/tiltmazes/TiltMazesDBAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->open()Lcom/gp/tiltmazes/TiltMazesDBAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/gp/tiltmazes/SelectMazeActivity;->mDB:Lcom/gp/tiltmazes/TiltMazesDBAdapter;

    .line 59
    new-instance v0, Lcom/gp/tiltmazes/SelectMazeActivity$1;

    invoke-virtual {p0}, Lcom/gp/tiltmazes/SelectMazeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/gp/tiltmazes/SelectMazeActivity;->mDB:Lcom/gp/tiltmazes/TiltMazesDBAdapter;

    invoke-virtual {v2}, Lcom/gp/tiltmazes/TiltMazesDBAdapter;->allMazes()Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/gp/tiltmazes/SelectMazeActivity$1;-><init>(Lcom/gp/tiltmazes/SelectMazeActivity;Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-virtual {p0, v0}, Lcom/gp/tiltmazes/SelectMazeActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/gp/tiltmazes/SelectMazeActivity;->setTitle(I)V

    .line 98
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/gp/tiltmazes/SelectMazeActivity;->setContentView(I)V

    .line 99
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "selected_maze"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/gp/tiltmazes/SelectMazeActivity;->setResult(ILandroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/gp/tiltmazes/SelectMazeActivity;->finish()V

    .line 107
    return-void
.end method
