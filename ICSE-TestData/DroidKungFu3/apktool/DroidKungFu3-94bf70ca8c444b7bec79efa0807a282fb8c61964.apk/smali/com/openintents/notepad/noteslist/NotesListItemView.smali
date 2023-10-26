.class public Lcom/openintents/notepad/noteslist/NotesListItemView;
.super Landroid/widget/LinearLayout;
.source "NotesListItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotesListItemView"


# instance fields
.field mContext:Landroid/content/Context;

.field private mStatus:Landroid/widget/ImageView;

.field private mTags:Landroid/widget/TextView;

.field protected mTagsEncrypted:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field protected mTitleEncrypted:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/openintents/notepad/noteslist/NotesListItemView;->mContext:Landroid/content/Context;

    .line 32
    iget-object v1, p0, Lcom/openintents/notepad/noteslist/NotesListItemView;->mContext:Landroid/content/Context;

    .line 33
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    check-cast v0, Landroid/view/LayoutInflater;

    .line 36
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030005

    const/4 v2, 0x1

    .line 35
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/openintents/notepad/noteslist/NotesListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/openintents/notepad/noteslist/NotesListItemView;->mTitle:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/openintents/notepad/noteslist/NotesListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/openintents/notepad/noteslist/NotesListItemView;->mTags:Landroid/widget/TextView;

    .line 40
    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Lcom/openintents/notepad/noteslist/NotesListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/openintents/notepad/noteslist/NotesListItemView;->mStatus:Landroid/widget/ImageView;

    .line 41
    return-void
.end method


# virtual methods
.method public setEncrypted(J)V
    .locals 2
    .param p1, "encrypted"    # J

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListItemView;->mStatus:Landroid/widget/ImageView;

    const v1, 0x108002f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListItemView;->mStatus:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 2
    .param p1, "tags"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListItemView;->mTags:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListItemView;->mTags:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListItemView;->mTags:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/openintents/notepad/noteslist/NotesListItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
