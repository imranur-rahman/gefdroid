.class public Lcom/openintents/notepad/search/SearchQueryResultsActivity;
.super Landroid/app/ListActivity;
.source "SearchQueryResultsActivity.java"


# instance fields
.field mAdapter:Lcom/openintents/notepad/noteslist/NotesListCursorAdapter;

.field mCursorUtils:Lcom/openintents/notepad/noteslist/NotesListCursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 12
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .param p2, "entryPoint"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x5

    .line 99
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "queryString":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v6, "i":Landroid/content/Intent;
    sget-object v1, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 104
    new-instance v1, Lcom/openintents/notepad/noteslist/NotesListCursor;

    invoke-direct {v1, p0, v6}, Lcom/openintents/notepad/noteslist/NotesListCursor;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->mCursorUtils:Lcom/openintents/notepad/noteslist/NotesListCursor;

    .line 105
    iget-object v1, p0, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->mCursorUtils:Lcom/openintents/notepad/noteslist/NotesListCursor;

    invoke-virtual {v1, v2, v2}, Lcom/openintents/notepad/noteslist/NotesListCursor;->query(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 107
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-static {p0, v7}, Lcom/openintents/notepad/search/FullTextSearch;->getCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 108
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .line 109
    const v2, 0x1090004

    .line 111
    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "suggest_text_1"

    aput-object v1, v4, v10

    const-string v1, "suggest_text_2"

    aput-object v1, v4, v11

    .line 112
    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 108
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 114
    .local v0, "adapter":Landroid/widget/SimpleCursorAdapter;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 116
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 117
    .local v8, "t":Landroid/widget/TextView;
    const v1, 0x7f060066

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v7, v2, v10

    invoke-virtual {p0, v1, v2}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 119
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 120
    invoke-virtual {p0}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 122
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 123
    const v2, 0x1090003

    new-array v4, v10, [Ljava/lang/String;

    invoke-direct {v1, p0, v2, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    .end local v8    # "t":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, v0}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 112
    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method private showItem(Landroid/content/Intent;)V
    .locals 2
    .param p1, "queryIntent"    # Landroid/content/Intent;

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    invoke-virtual {p0}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->finish()V

    .line 138
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "queryAction":Ljava/lang/String;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "onCreate()"

    invoke-direct {p0, v1, v2}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-direct {p0, v1}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->showItem(Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->finish()V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 142
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 144
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-ltz v1, :cond_0

    .line 145
    sget-object v1, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 148
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 80
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "queryAction":Ljava/lang/String;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "onNewIntent()"

    invoke-direct {p0, v1, v2}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->doSearchQuery(Landroid/content/Intent;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-direct {p0, v1}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->showItem(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/openintents/notepad/search/SearchQueryResultsActivity;->finish()V

    goto :goto_0
.end method
