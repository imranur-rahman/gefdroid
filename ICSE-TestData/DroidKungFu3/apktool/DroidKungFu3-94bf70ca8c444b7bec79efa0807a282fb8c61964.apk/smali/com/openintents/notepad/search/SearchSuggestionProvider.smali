.class public Lcom/openintents/notepad/search/SearchSuggestionProvider;
.super Landroid/content/ContentProvider;
.source "SearchSuggestionProvider.java"


# static fields
.field public static AUTHORITY:Ljava/lang/String; = null

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_SUGGEST:I = 0x0

.field private static final SHORTCUT_REFRESH:I = 0x1

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-string v0, "com.openintents.notepad.search.SuggestionProvider"

    sput-object v0, Lcom/openintents/notepad/search/SearchSuggestionProvider;->AUTHORITY:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/openintents/notepad/search/SearchSuggestionProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/openintents/notepad/search/SearchSuggestionProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 52
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 53
    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 54
    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 55
    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 56
    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    .line 51
    sput-object v0, Lcom/openintents/notepad/search/SearchSuggestionProvider;->COLUMNS:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 65
    .local v0, "matcher":Landroid/content/UriMatcher;
    sget-object v1, Lcom/openintents/notepad/search/SearchSuggestionProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v1, Lcom/openintents/notepad/search/SearchSuggestionProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v1, Lcom/openintents/notepad/search/SearchSuggestionProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_shortcut"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v1, Lcom/openintents/notepad/search/SearchSuggestionProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_shortcut/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-object v0
.end method

.method private columnValues(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;

    .prologue
    .line 142
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 144
    aput-object p3, v0, v1

    const/4 v1, 0x2

    .line 145
    aput-object p4, v0, v1

    const/4 v1, 0x3

    .line 146
    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 142
    return-object v0
.end method

.method private getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/openintents/notepad/search/SearchSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 114
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 115
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "tags"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "encrypted"

    aput-object v4, v2, v3

    .line 116
    const-string v3, "(title like ? ) or (title like ? )"

    .line 118
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "% "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v7}, Lcom/openintents/notepad/PreferenceActivity;->getSortOrderFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    .local v6, "c":Landroid/database/Cursor;
    new-instance v8, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/openintents/notepad/search/SearchSuggestionProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 122
    .local v8, "cursor":Landroid/database/MatrixCursor;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    return-object v8

    .line 123
    :cond_1
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 124
    .local v9, "encrypted":J
    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 126
    .local v1, "id":J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "title":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "tag":Ljava/lang/String;
    sget-object v0, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .local v5, "uri":Landroid/net/Uri;
    move-object v0, p0

    .line 129
    invoke-direct/range {v0 .. v5}, Lcom/openintents/notepad/search/SearchSuggestionProvider;->columnValues(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private refreshShortcut(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "shortcutId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 203
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 188
    sget-object v0, Lcom/openintents/notepad/search/SearchSuggestionProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    .line 192
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 80
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "selection not allowed for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_0
    if-eqz p4, :cond_1

    array-length v2, p4

    if-eqz v2, :cond_1

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "selectionArgs not allowed for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sortOrder not allowed for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_2
    sget-object v2, Lcom/openintents/notepad/search/SearchSuggestionProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown URL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :pswitch_0
    const/4 v0, 0x0

    .line 92
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 93
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/openintents/notepad/search/SearchSuggestionProvider;->getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 101
    .end local v0    # "query":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 97
    :pswitch_1
    const/4 v1, 0x0

    .line 98
    .local v1, "shortcutId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 99
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/openintents/notepad/search/SearchSuggestionProvider;->refreshShortcut(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
