.class Lcom/feasy/jewels/Gel/MoreGame;
.super Ljava/lang/Object;
.source "MoreGame.java"


# instance fields
.field private mDlg:Landroid/app/AlertDialog;

.field private mParent:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/feasy/jewels/Gel/MoreGame;->mParent:Landroid/app/Activity;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/feasy/jewels/Gel/MoreGame;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/feasy/jewels/Gel/MoreGame;->mDlg:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public goApp(I)V
    .locals 4
    .param p1, "adId"    # I

    .prologue
    .line 101
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 102
    .local v2, "url":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 103
    const-string v2, "market://details?id=com.feasy.app.memory.BombFace"

    .line 111
    :goto_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 112
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 113
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/feasy/jewels/Gel/MoreGame;->mParent:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 114
    return-void

    .line 104
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v3, 0x1

    if-ne v3, p1, :cond_1

    .line 105
    const-string v2, "market://details?id=com.feasy.at.gmail.SesameStreetPuzzle"

    goto :goto_0

    .line 106
    :cond_1
    const/4 v3, 0x2

    if-ne v3, p1, :cond_2

    .line 107
    const-string v2, "market://details?id=com.feasy.game.MoleWhacking"

    goto :goto_0

    .line 109
    :cond_2
    const-string v2, "http://market.android.com/search?q=pub:\"PlayStation\""

    goto :goto_0
.end method

.method public show()V
    .locals 14

    .prologue
    .line 31
    iget-object v1, p0, Lcom/feasy/jewels/Gel/MoreGame;->mParent:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 32
    .local v7, "factory":Landroid/view/LayoutInflater;
    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 34
    .local v6, "entryDlg":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/feasy/jewels/Gel/MoreGame;->mParent:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/feasy/jewels/Gel/MoreGame;->mDlg:Landroid/app/AlertDialog;

    .line 37
    const v1, 0x7f060013

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 40
    .local v8, "lv":Landroid/widget/ListView;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v9, "rec1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v10, "rec2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v11, "rec3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v12, "rec4":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v13, "rec5":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "img"

    const/high16 v3, 0x7f020000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "name"

    const-string v3, "Bomb Face Memory"

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v1, "img"

    const v3, 0x7f020001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "name"

    const-string v3, "SesameStreet Puzzle"

    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v1, "img"

    const v3, 0x7f020002

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "name"

    const-string v3, "Mole Whacking"

    invoke-virtual {v11, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v1, "img"

    const v3, 0x7f020004

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "name"

    const-string v3, "More Game"

    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v1, "img"

    const v3, 0x7f02000b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "name"

    const-string v3, "Back"

    invoke-virtual {v13, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/feasy/jewels/Gel/MoreGame;->mParent:Landroid/app/Activity;

    .line 69
    const v3, 0x7f030006

    .line 70
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "img"

    .end local v6    # "entryDlg":Landroid/view/View;
    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v4, v5

    .line 72
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    .line 68
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 74
    .local v0, "saImageItems":Landroid/widget/SimpleAdapter;
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    const/high16 v1, -0x1000000

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 79
    new-instance v1, Lcom/feasy/jewels/Gel/MoreGame$1;

    invoke-direct {v1, p0}, Lcom/feasy/jewels/Gel/MoreGame$1;-><init>(Lcom/feasy/jewels/Gel/MoreGame;)V

    invoke-virtual {v8, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-object v1, p0, Lcom/feasy/jewels/Gel/MoreGame;->mDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 98
    return-void

    .line 72
    :array_0
    .array-data 4
        0x7f060014
        0x7f060015
    .end array-data
.end method
