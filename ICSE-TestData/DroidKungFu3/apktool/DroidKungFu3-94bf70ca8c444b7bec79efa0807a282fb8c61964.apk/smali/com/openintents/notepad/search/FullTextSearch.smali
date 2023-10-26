.class public Lcom/openintents/notepad/search/FullTextSearch;
.super Ljava/lang/Object;
.source "FullTextSearch.java"


# static fields
.field static final COLUMNS:[Ljava/lang/String;

.field private static PREVIEW_CHARS_BEFORE:I = 0x0

.field private static final PREVIEW_CHARS_LENGTH:I = 0x23


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/16 v0, 0x8

    sput v0, Lcom/openintents/notepad/search/FullTextSearch;->PREVIEW_CHARS_BEFORE:I

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 26
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 27
    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 28
    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 29
    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 30
    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    .line 25
    sput-object v0, Lcom/openintents/notepad/search/FullTextSearch;->COLUMNS:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static columnValues(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/Object;
    .locals 3
    .param p0, "id"    # J
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 93
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 95
    aput-object p2, v0, v1

    const/4 v1, 0x2

    .line 96
    aput-object p3, v0, v1

    const/4 v1, 0x3

    .line 97
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 93
    return-object v0
.end method

.method public static getCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "sqlquery":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, "queryUpper":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 40
    const/4 p1, 0x5

    new-array v2, p1, [Ljava/lang/String;

    .end local p1    # "query":Ljava/lang/String;
    const/4 p1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, p1

    const/4 p1, 0x1

    const-string v3, "title"

    aput-object v3, v2, p1

    const/4 p1, 0x2

    const-string v3, "tags"

    aput-object v3, v2, p1

    const/4 p1, 0x3

    const-string v3, "encrypted"

    aput-object v3, v2, p1

    const/4 p1, 0x4

    const-string v3, "note"

    aput-object v3, v2, p1

    .line 41
    const-string v3, "(title like ? ) or (tags like ? ) or (note like ? )"

    .line 44
    const/4 p1, 0x3

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object v5, v4, p1

    const/4 p1, 0x1

    aput-object v5, v4, p1

    const/4 p1, 0x2

    aput-object v5, v4, p1

    .line 45
    invoke-static {p0}, Lcom/openintents/notepad/PreferenceActivity;->getSortOrderFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .end local v5    # "sqlquery":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 47
    .local p0, "c":Landroid/database/Cursor;
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/openintents/notepad/search/FullTextSearch;->COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 49
    .local p1, "cursor":Landroid/database/MatrixCursor;
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    return-object p1

    .line 50
    :cond_1
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 51
    .local v0, "encrypted":J
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 52
    .end local v0    # "encrypted":J
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 53
    .local v3, "id":J
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, "title":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "tag":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "note":Ljava/lang/String;
    move-object v0, v1

    .line 59
    .local v0, "info":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 61
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "tag":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 63
    :cond_3
    if-eqz v5, :cond_5

    .line 65
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "info":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, "p":I
    sget v1, Lcom/openintents/notepad/search/FullTextSearch;->PREVIEW_CHARS_BEFORE:I

    sub-int v1, v0, v1

    .line 67
    .end local v0    # "p":I
    .local v1, "p":I
    const-string v0, "..."

    .line 68
    .local v0, "ell1":Ljava/lang/String;
    const-string v2, "..."

    .line 69
    .local v2, "ell2":Ljava/lang/String;
    if-gez v1, :cond_6

    .line 70
    const/4 v1, 0x0

    .line 71
    const-string v0, ""

    move v6, v1

    .end local v1    # "p":I
    .local v6, "p":I
    move-object v1, v0

    .line 73
    .end local v0    # "ell1":Ljava/lang/String;
    .local v1, "ell1":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v6, 0x23

    .line 74
    .local v0, "e":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v0, v9, :cond_4

    .line 75
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 76
    const-string v2, ""

    .line 78
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "ell1":Ljava/lang/String;
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "e":I
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "info":Ljava/lang/String;
    const-string v1, "\n"

    const-string v2, " "

    .end local v2    # "ell2":Ljava/lang/String;
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .end local v6    # "p":I
    :cond_5
    sget-object v1, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v3, v4, v8, v0, v1}, Lcom/openintents/notepad/search/FullTextSearch;->columnValues(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .local v0, "ell1":Ljava/lang/String;
    .local v1, "p":I
    .restart local v2    # "ell2":Ljava/lang/String;
    :cond_6
    move v6, v1

    .end local v1    # "p":I
    .restart local v6    # "p":I
    move-object v1, v0

    .end local v0    # "ell1":Ljava/lang/String;
    .local v1, "ell1":Ljava/lang/String;
    goto :goto_1
.end method
