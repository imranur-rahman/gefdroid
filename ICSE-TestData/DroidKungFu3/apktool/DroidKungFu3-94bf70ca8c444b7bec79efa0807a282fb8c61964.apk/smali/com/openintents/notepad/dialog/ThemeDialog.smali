.class public Lcom/openintents/notepad/dialog/ThemeDialog;
.super Landroid/app/AlertDialog;
.source "ThemeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/AlertDialog;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final BUNDLE_THEME:Ljava/lang/String; = "theme"

.field private static final TAG:Ljava/lang/String; = "ThemeDialog"


# instance fields
.field mCheckBox:Landroid/widget/CheckBox;

.field mContext:Landroid/content/Context;

.field mListInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field mListener:Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p1, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object p1, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListener:Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;

    .line 70
    invoke-direct {p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->init()V

    .line 71
    return-void
.end method

.method private getSelectedTheme()Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    iget-object v2, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 226
    .local v0, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListInfo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;

    .line 228
    .local v1, "ti":Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;
    iget-object v2, v1, Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;->styleName:Ljava/lang/String;

    .line 230
    .end local v1    # "ti":Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 12

    .prologue
    const/16 v11, 0x14

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 74
    invoke-virtual {p0, v9}, Lcom/openintents/notepad/dialog/ThemeDialog;->setInverseBackgroundForced(Z)V

    .line 76
    iget-object v4, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 78
    .local v0, "inflate":Landroid/view/LayoutInflater;
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    const v6, 0x103000c

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 80
    const v4, 0x7f030002

    .line 81
    const/4 v5, 0x0

    .line 80
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 83
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/openintents/notepad/dialog/ThemeDialog;->setView(Landroid/view/View;)V

    .line 85
    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    .line 86
    iget-object v4, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 87
    iget-object v4, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 88
    iget-object v4, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 90
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, "ll":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 92
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v11, v10, v11, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 93
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 94
    iget-object v4, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 96
    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 98
    const v4, 0x7f060060

    invoke-virtual {p0, v4}, Lcom/openintents/notepad/dialog/ThemeDialog;->setTitle(I)V

    .line 100
    const/4 v4, -0x1

    iget-object v5, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f06006a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 101
    iget-object v4, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f06006b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v7, v4, p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    invoke-virtual {p0, p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->prepareDialog()V

    .line 105
    return-void
.end method

.method private updateList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 134
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListener:Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v3}, Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;->onLoadTheme()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "theme":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 139
    const v4, 0x7f080001

    .line 138
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 151
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "pos":I
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 164
    :goto_2
    return-void

    .line 140
    .end local v0    # "pos":I
    :cond_1
    const-string v3, "2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 142
    const v4, 0x7f080002

    .line 141
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 143
    :cond_2
    const-string v3, "3"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 145
    const v4, 0x7f080003

    .line 144
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 154
    .restart local v0    # "pos":I
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;

    .line 155
    .local v2, "ti":Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;
    iget-object v4, v2, Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;->styleName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 156
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 159
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_2

    .line 162
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public fillThemes()V
    .locals 8

    .prologue
    .line 108
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    const-string v4, "com.openintents.notepad"

    invoke-static {v3, v4}, Lcom/openintents/notepad/theme/ThemeUtils;->getThemeInfos(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListInfo:Ljava/util/List;

    .line 110
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 111
    .local v1, "s":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 112
    .local v0, "i":I
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 118
    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    const v7, 0x103000c

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 119
    const v6, 0x109000f

    invoke-direct {v4, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v3, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    return-void

    .line 112
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;

    .line 113
    .local v2, "ti":Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;
    iget-object v4, v2, Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;->title:Ljava/lang/String;

    aput-object v4, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->pressCancel()V

    .line 206
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 196
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->pressOk()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->pressCancel()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->getSelectedTheme()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "theme":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListener:Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v1, v0}, Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;->onSetTheme(Ljava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v2, "theme"

    const-string v3, "ThemeDialog"

    .line 178
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 180
    const-string v1, "ThemeDialog"

    const-string v1, "onRestore"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->getSelectedTheme()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "theme":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 185
    const-string v1, "theme"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "theme"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "ThemeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRestore theme "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListener:Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v1, v0}, Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;->onSetTheme(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 168
    const-string v2, "ThemeDialog"

    const-string v3, "onSaveInstanceState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 171
    .local v0, "b":Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->getSelectedTheme()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "theme":Ljava/lang/String;
    const-string v2, "theme"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-object v0
.end method

.method public prepareDialog()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->fillThemes()V

    .line 126
    invoke-direct {p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->updateList()V

    .line 127
    iget-object v0, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/openintents/notepad/PreferenceActivity;->getThemeSetForAll(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 128
    return-void
.end method

.method public pressCancel()V
    .locals 2

    .prologue
    .line 236
    iget-object v1, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListener:Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v1}, Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;->onLoadTheme()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "theme":Ljava/lang/String;
    iget-object v1, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListener:Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v1, v0}, Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;->onSetTheme(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public pressOk()V
    .locals 3

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/openintents/notepad/dialog/ThemeDialog;->getSelectedTheme()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "theme":Ljava/lang/String;
    iget-object v2, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListener:Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v2, v1}, Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;->onSaveTheme(Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListener:Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v2, v1}, Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;->onSetTheme(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 216
    .local v0, "setForAllThemes":Z
    iget-object v2, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/openintents/notepad/PreferenceActivity;->setThemeSetForAll(Landroid/content/Context;Z)V

    .line 218
    if-eqz v0, :cond_0

    .line 219
    iget-object v2, p0, Lcom/openintents/notepad/dialog/ThemeDialog;->mListener:Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;

    invoke-interface {v2, v1}, Lcom/openintents/notepad/dialog/ThemeDialog$ThemeDialogListener;->onSetThemeForAll(Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method
