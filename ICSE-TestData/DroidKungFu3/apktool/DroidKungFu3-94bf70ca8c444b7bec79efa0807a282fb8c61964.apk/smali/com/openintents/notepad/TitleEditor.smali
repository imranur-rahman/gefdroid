.class public Lcom/openintents/notepad/TitleEditor;
.super Landroid/app/Activity;
.source "TitleEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COLUMN_INDEX_TITLE:I = 0x1

.field public static final EDIT_TITLE_ACTION:Ljava/lang/String; = "com.android.notepad.action.EDIT_TITLE"

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mText:Landroid/widget/EditText;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 45
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 46
    const-string v2, "title"

    aput-object v2, v0, v1

    .line 44
    sput-object v0, Lcom/openintents/notepad/TitleEditor;->PROJECTION:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/openintents/notepad/TitleEditor;->finish()V

    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/TitleEditor;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/openintents/notepad/TitleEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/openintents/notepad/TitleEditor;->mUri:Landroid/net/Uri;

    .line 77
    iget-object v1, p0, Lcom/openintents/notepad/TitleEditor;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/openintents/notepad/TitleEditor;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/openintents/notepad/TitleEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/openintents/notepad/TitleEditor;->mCursor:Landroid/database/Cursor;

    .line 80
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/TitleEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/openintents/notepad/TitleEditor;->mText:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/TitleEditor;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 84
    .local v6, "b":Landroid/widget/Button;
    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 102
    iget-object v1, p0, Lcom/openintents/notepad/TitleEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 104
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p0, Lcom/openintents/notepad/TitleEditor;->mText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/openintents/notepad/TitleEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/openintents/notepad/TitleEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/openintents/notepad/TitleEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/openintents/notepad/TitleEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 94
    iget-object v0, p0, Lcom/openintents/notepad/TitleEditor;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/openintents/notepad/TitleEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    return-void
.end method
