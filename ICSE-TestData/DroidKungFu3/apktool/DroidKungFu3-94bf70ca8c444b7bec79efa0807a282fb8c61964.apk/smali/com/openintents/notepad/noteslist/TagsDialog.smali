.class public Lcom/openintents/notepad/noteslist/TagsDialog;
.super Landroid/app/AlertDialog;
.source "TagsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final BUNDLE_ENCRYPTED:Ljava/lang/String; = "encrypted"

.field private static final BUNDLE_TAGLIST:Ljava/lang/String; = "taglist"

.field private static final BUNDLE_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "TagsDialog"


# instance fields
.field mContext:Landroid/content/Context;

.field mEncrypted:J

.field mTagList:[Ljava/lang/String;

.field mTextView:Landroid/widget/MultiAutoCompleteTextView;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mContext:Landroid/content/Context;

    .line 51
    const v3, 0x7f06004a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/openintents/notepad/noteslist/TagsDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    const v3, 0x104000a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Lcom/openintents/notepad/noteslist/TagsDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 53
    const/high16 v3, 0x1040000

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/openintents/notepad/noteslist/TagsDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/high16 v3, 0x7f030000

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/openintents/notepad/noteslist/TagsDialog;->setView(Landroid/view/View;)V

    .line 61
    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v3, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTextView:Landroid/widget/MultiAutoCompleteTextView;

    .line 62
    iget-object v3, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTextView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v4, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;

    invoke-direct {v4}, Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 63
    iget-object v3, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTextView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v3, v5}, Landroid/widget/MultiAutoCompleteTextView;->setThreshold(I)V

    .line 64
    iget-object v3, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTextView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v4, Lcom/openintents/notepad/noteslist/TagsDialog$1;

    invoke-direct {v4, p0}, Lcom/openintents/notepad/noteslist/TagsDialog$1;-><init>(Lcom/openintents/notepad/noteslist/TagsDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-array v1, v5, [Ljava/lang/String;

    .line 72
    .local v1, "mTagList":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 73
    iget-object v3, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTextView:Landroid/widget/MultiAutoCompleteTextView;

    const v4, 0x7f06004c

    invoke-virtual {v3, v4}, Landroid/widget/MultiAutoCompleteTextView;->setHint(I)V

    .line 85
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/openintents/notepad/noteslist/TagsDialog;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/openintents/notepad/noteslist/TagsDialog;->toggleTaglistPopup()V

    return-void
.end method

.method private toggleTaglistPopup()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTextView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTextView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->dismissDropDown()V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTextView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->showDropDown()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/openintents/notepad/noteslist/TagsDialog;->saveTags()V

    .line 122
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 171
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mUri:Landroid/net/Uri;

    .line 172
    const-string v0, "encrypted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mEncrypted:J

    .line 173
    const-string v0, "taglist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTagList:[Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTagList:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/noteslist/TagsDialog;->setTagList([Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 162
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "uri"

    iget-object v2, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "encrypted"

    iget-wide v2, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mEncrypted:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 164
    const-string v1, "taglist"

    iget-object v2, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTagList:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    return-object v0
.end method

.method saveTags()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 125
    iget-object v3, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTextView:Landroid/widget/MultiAutoCompleteTextView;

    if-nez v3, :cond_0

    .line 126
    const-string v3, "TagsDialog"

    const-string v4, "mTextView is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTextView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "tags":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 137
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-wide v3, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mEncrypted:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 141
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 142
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    const-string v3, "tags"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    iget-object v3, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 150
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mContext:Landroid/content/Context;

    const-class v4, Lcom/openintents/notepad/crypto/EncryptActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "com.openintents.notepad.extra.action"

    const-string v4, "com.openintents.action.ENCRYPT"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v3, "com.openintents.extra.TEXT_ARRAY"

    invoke-static {v7, v7, v1}, Lcom/openintents/notepad/crypto/EncryptActivity;->getCryptoStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v3, "com.openintents.notepad.extra.uri"

    iget-object v4, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v3, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public setEncrypted(J)V
    .locals 0
    .param p1, "encrypted"    # J

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mEncrypted:J

    .line 115
    return-void
.end method

.method public setTagList([Ljava/lang/String;)V
    .locals 4
    .param p1, "taglist"    # [Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTagList:[Ljava/lang/String;

    .line 102
    if-eqz p1, :cond_0

    .line 103
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mContext:Landroid/content/Context;

    .line 104
    const v2, 0x109000a

    iget-object v3, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTagList:[Ljava/lang/String;

    .line 103
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 105
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTextView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 1
    .param p1, "tags"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mTextView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/openintents/notepad/noteslist/TagsDialog;->mUri:Landroid/net/Uri;

    .line 97
    return-void
.end method
