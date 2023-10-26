.class public Lcom/feasy/jewels/Gel/ScoreList;
.super Landroid/app/Activity;
.source "ScoreList.java"


# instance fields
.field private final PREFS_NAME:Ljava/lang/String;

.field private final mImgOrder:[I

.field private mList:Landroid/widget/ListView;

.field private mScoreArray:[I

.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    sget-object v0, Lcom/feasy/jewels/Gel/GMenu;->PREFS_NAME:Ljava/lang/String;

    iput-object v0, p0, Lcom/feasy/jewels/Gel/ScoreList;->PREFS_NAME:Ljava/lang/String;

    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 33
    iput-object v0, p0, Lcom/feasy/jewels/Gel/ScoreList;->mImgOrder:[I

    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/feasy/jewels/Gel/ScoreList;->mScoreArray:[I

    .line 21
    return-void

    .line 24
    nop

    :array_0
    .array-data 4
        0x7f02001e
        0x7f02001f
        0x7f020020
        0x7f020021
        0x7f020022
        0x7f020023
        0x7f020024
        0x7f020025
        0x7f020026
    .end array-data
.end method

.method private loadHightScore()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 102
    iget-object v2, p0, Lcom/feasy/jewels/Gel/ScoreList;->PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/feasy/jewels/Gel/ScoreList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    .local v1, "settings":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 106
    return-void

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/feasy/jewels/Gel/ScoreList;->mScoreArray:[I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "highScore"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v11, 0x2

    const/4 v9, 0x1

    const-string v12, "img"

    const-string v10, "name"

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0, v9}, Lcom/feasy/jewels/Gel/ScoreList;->requestWindowFeature(I)Z

    .line 46
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/ScoreList;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/feasy/jewels/Gel/ScoreList;->window:Landroid/view/Window;

    .line 47
    iget-object v1, p0, Lcom/feasy/jewels/Gel/ScoreList;->window:Landroid/view/Window;

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 52
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/feasy/jewels/Gel/ScoreList;->setContentView(I)V

    .line 53
    const-string v1, "High Score"

    invoke-virtual {p0, v1}, Lcom/feasy/jewels/Gel/ScoreList;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    invoke-direct {p0}, Lcom/feasy/jewels/Gel/ScoreList;->loadHightScore()V

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v1, 0x9

    if-lt v6, v1, :cond_0

    .line 73
    const-string v1, "main"

    const-string v3, "users.add"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 77
    const v3, 0x7f030001

    .line 78
    new-array v4, v11, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "img"

    aput-object v12, v4, v1

    const-string v1, "name"

    aput-object v10, v4, v9

    .line 80
    new-array v5, v11, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 75
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 82
    .local v0, "saImageItems":Landroid/widget/SimpleAdapter;
    const-string v1, "main"

    const-string v3, "new SimpleAdapter"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Lcom/feasy/jewels/Gel/ScoreList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/feasy/jewels/Gel/ScoreList;->mList:Landroid/widget/ListView;

    .line 86
    iget-object v1, p0, Lcom/feasy/jewels/Gel/ScoreList;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v1, p0, Lcom/feasy/jewels/Gel/ScoreList;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 91
    iget-object v1, p0, Lcom/feasy/jewels/Gel/ScoreList;->mList:Landroid/widget/ListView;

    new-instance v3, Lcom/feasy/jewels/Gel/ScoreList$1;

    invoke-direct {v3, p0}, Lcom/feasy/jewels/Gel/ScoreList$1;-><init>(Lcom/feasy/jewels/Gel/ScoreList;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    return-void

    .line 61
    .end local v0    # "saImageItems":Landroid/widget/SimpleAdapter;
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v8, "user":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/feasy/jewels/Gel/ScoreList;->mScoreArray:[I

    aget v7, v1, v6

    .line 64
    .local v7, "score":I
    const-string v1, "img"

    iget-object v1, p0, Lcom/feasy/jewels/Gel/ScoreList;->mImgOrder:[I

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    if-nez v7, :cond_1

    .line 67
    const-string v1, "name"

    const-string v1, ""

    invoke-virtual {v8, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :goto_1
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 69
    :cond_1
    const-string v1, "name"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    nop

    :array_0
    .array-data 4
        0x7f060001
        0x7f060002
    .end array-data
.end method
