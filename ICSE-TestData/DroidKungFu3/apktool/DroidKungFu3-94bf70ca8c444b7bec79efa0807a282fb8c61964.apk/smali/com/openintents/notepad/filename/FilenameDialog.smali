.class public Lcom/openintents/notepad/filename/FilenameDialog;
.super Landroid/app/AlertDialog;
.source "FilenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;
    }
.end annotation


# static fields
.field private static final BUNDLE_TAGS:Ljava/lang/String; = "tags"

.field protected static final DIALOG_ID_NO_FILE_MANAGER_AVAILABLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FilenameDialog"


# instance fields
.field mContext:Landroid/content/Context;

.field mEditText:Landroid/widget/EditText;

.field mListener:Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/openintents/notepad/filename/FilenameDialog;->mContext:Landroid/content/Context;

    .line 37
    const v3, 0x7f06004a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/openintents/notepad/filename/FilenameDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    const v3, 0x104000a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Lcom/openintents/notepad/filename/FilenameDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 39
    const/high16 v3, 0x1040000

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/openintents/notepad/filename/FilenameDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 40
    const/high16 v3, 0x7f020000

    invoke-virtual {p0, v3}, Lcom/openintents/notepad/filename/FilenameDialog;->setIcon(I)V

    .line 43
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 44
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030001

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 45
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/openintents/notepad/filename/FilenameDialog;->setView(Landroid/view/View;)V

    .line 47
    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/openintents/notepad/filename/FilenameDialog;->mEditText:Landroid/widget/EditText;

    .line 52
    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 54
    .local v0, "buttonFileManager":Landroid/widget/ImageButton;
    new-instance v3, Lcom/openintents/notepad/filename/FilenameDialog$1;

    invoke-direct {v3, p0}, Lcom/openintents/notepad/filename/FilenameDialog$1;-><init>(Lcom/openintents/notepad/filename/FilenameDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/openintents/notepad/filename/FilenameDialog;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/openintents/notepad/filename/FilenameDialog;->openFileManager()V

    return-void
.end method

.method private openFileManager()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/openintents/notepad/filename/FilenameDialog;->showNoFileManagerAvailableDialog()V

    .line 105
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 72
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/openintents/notepad/filename/FilenameDialog;->openOrSave()V

    .line 76
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 124
    const-string v1, "tags"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "tags":Ljava/lang/String;
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "tags"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-object v0
.end method

.method openOrSave()V
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/openintents/notepad/filename/FilenameDialog;->mListener:Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/openintents/notepad/filename/FilenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lcom/openintents/notepad/filename/FilenameDialog;->mListener:Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;

    invoke-interface {v1, v0}, Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;->onFilenamePicked(Ljava/lang/String;)V

    .line 83
    .end local v0    # "filename":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/openintents/notepad/filename/FilenameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public setOnFilenamePickedListener(Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/openintents/notepad/filename/FilenameDialog;->mListener:Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;

    .line 69
    return-void
.end method

.method showNoFileManagerAvailableDialog()V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/openintents/notepad/filename/FilenameDialog;->mContext:Landroid/content/Context;

    const-class v2, Lcom/openintents/notepad/filename/DialogHostingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.openintents.notepad.extra.dialog_id"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/openintents/notepad/filename/FilenameDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
