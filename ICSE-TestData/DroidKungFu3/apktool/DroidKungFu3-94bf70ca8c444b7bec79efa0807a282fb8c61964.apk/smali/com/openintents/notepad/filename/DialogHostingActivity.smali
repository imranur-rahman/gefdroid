.class public Lcom/openintents/notepad/filename/DialogHostingActivity;
.super Landroid/app/Activity;
.source "DialogHostingActivity.java"


# static fields
.field public static final DIALOG_ID_NO_FILE_MANAGER_AVAILABLE:I = 0x3

.field public static final DIALOG_ID_OPEN:I = 0x2

.field public static final DIALOG_ID_SAVE:I = 0x1

.field public static final EXTRA_DIALOG_ID:Ljava/lang/String; = "com.openintents.notepad.extra.dialog_id"

.field private static final TAG:Ljava/lang/String; = "FilenameActivity"

.field private static final debug:Z


# instance fields
.field mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mEditText:Landroid/widget/EditText;

.field mFilename:Ljava/lang/String;

.field mFilenamePickedListener:Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;

.field private mIsPausing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openintents/notepad/filename/DialogHostingActivity;->mIsPausing:Z

    .line 160
    new-instance v0, Lcom/openintents/notepad/filename/DialogHostingActivity$1;

    invoke-direct {v0, p0}, Lcom/openintents/notepad/filename/DialogHostingActivity$1;-><init>(Lcom/openintents/notepad/filename/DialogHostingActivity;)V

    iput-object v0, p0, Lcom/openintents/notepad/filename/DialogHostingActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 176
    new-instance v0, Lcom/openintents/notepad/filename/DialogHostingActivity$2;

    invoke-direct {v0, p0}, Lcom/openintents/notepad/filename/DialogHostingActivity$2;-><init>(Lcom/openintents/notepad/filename/DialogHostingActivity;)V

    iput-object v0, p0, Lcom/openintents/notepad/filename/DialogHostingActivity;->mFilenamePickedListener:Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/openintents/notepad/filename/DialogHostingActivity;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/openintents/notepad/filename/DialogHostingActivity;->mIsPausing:Z

    return v0
.end method

.method private openFile()V
    .locals 4

    .prologue
    const-string v3, "com.openintents.notepad.extra.uri"

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.openintents.action.PICK_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    invoke-static {p0, v0}, Lcom/openintents/util/IntentUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "com.openintents.notepad.extra.uri"

    invoke-virtual {p0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.openintents.notepad.extra.uri"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v1, "com.openintents.extra.TITLE"

    const v2, 0x7f06004e

    invoke-virtual {p0, v2}, Lcom/openintents/notepad/filename/DialogHostingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 102
    const-string v1, "com.openintents.extra.BUTTON_TEXT"

    const v2, 0x7f060051

    invoke-virtual {p0, v2}, Lcom/openintents/notepad/filename/DialogHostingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 103
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->finish()V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/openintents/notepad/util/FileUriUtils;->getFilename(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openintents/notepad/filename/DialogHostingActivity;->mFilename:Ljava/lang/String;

    .line 108
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/openintents/notepad/filename/DialogHostingActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private saveFile()V
    .locals 4

    .prologue
    const-string v3, "com.openintents.notepad.extra.uri"

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.openintents.action.PICK_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 80
    invoke-static {p0, v0}, Lcom/openintents/util/IntentUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "com.openintents.notepad.extra.uri"

    invoke-virtual {p0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.openintents.notepad.extra.uri"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "com.openintents.extra.TITLE"

    const v2, 0x7f06004d

    invoke-virtual {p0, v2}, Lcom/openintents/notepad/filename/DialogHostingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 83
    const-string v1, "com.openintents.extra.BUTTON_TEXT"

    const v2, 0x7f060050

    invoke-virtual {p0, v2}, Lcom/openintents/notepad/filename/DialogHostingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 84
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->finish()V

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/openintents/notepad/util/FileUriUtils;->getFilename(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openintents/notepad/filename/DialogHostingActivity;->mFilename:Ljava/lang/String;

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/openintents/notepad/filename/DialogHostingActivity;->showDialog(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    .local v1, "i":Landroid/content/Intent;
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 53
    const-string v2, "com.openintents.notepad.extra.dialog_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, "dialogId":I
    packed-switch v0, :pswitch_data_0

    .line 69
    .end local v0    # "dialogId":I
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local v0    # "dialogId":I
    :pswitch_0
    invoke-direct {p0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->saveFile()V

    goto :goto_0

    .line 61
    :pswitch_1
    invoke-direct {p0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->openFile()V

    goto :goto_0

    .line 65
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/openintents/notepad/filename/DialogHostingActivity;->showDialog(I)V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 136
    :goto_0
    if-nez v0, :cond_0

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 139
    :cond_0
    if-eqz v0, :cond_1

    .line 140
    iget-object v2, p0, Lcom/openintents/notepad/filename/DialogHostingActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 142
    :cond_1
    return-object v0

    .line 118
    :pswitch_0
    new-instance v1, Lcom/openintents/notepad/filename/FilenameDialog;

    invoke-direct {v1, p0}, Lcom/openintents/notepad/filename/FilenameDialog;-><init>(Landroid/content/Context;)V

    .line 119
    .local v1, "fd":Lcom/openintents/notepad/filename/FilenameDialog;
    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Lcom/openintents/notepad/filename/FilenameDialog;->setTitle(I)V

    .line 120
    iget-object v2, p0, Lcom/openintents/notepad/filename/DialogHostingActivity;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/openintents/notepad/filename/FilenameDialog;->setFilename(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/openintents/notepad/filename/DialogHostingActivity;->mFilenamePickedListener:Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;

    invoke-virtual {v1, v2}, Lcom/openintents/notepad/filename/FilenameDialog;->setOnFilenamePickedListener(Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;)V

    .line 122
    move-object v0, v1

    .line 123
    goto :goto_0

    .line 125
    .end local v1    # "fd":Lcom/openintents/notepad/filename/FilenameDialog;
    :pswitch_1
    new-instance v1, Lcom/openintents/notepad/filename/FilenameDialog;

    invoke-direct {v1, p0}, Lcom/openintents/notepad/filename/FilenameDialog;-><init>(Landroid/content/Context;)V

    .line 126
    .restart local v1    # "fd":Lcom/openintents/notepad/filename/FilenameDialog;
    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Lcom/openintents/notepad/filename/FilenameDialog;->setTitle(I)V

    .line 127
    iget-object v2, p0, Lcom/openintents/notepad/filename/DialogHostingActivity;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/openintents/notepad/filename/FilenameDialog;->setFilename(Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/openintents/notepad/filename/DialogHostingActivity;->mFilenamePickedListener:Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;

    invoke-virtual {v1, v2}, Lcom/openintents/notepad/filename/FilenameDialog;->setOnFilenamePickedListener(Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;)V

    .line 129
    move-object v0, v1

    .line 130
    goto :goto_0

    .line 132
    .end local v1    # "fd":Lcom/openintents/notepad/filename/FilenameDialog;
    :pswitch_2
    new-instance v0, Lcom/openintents/distribution/DownloadOIAppDialog;

    .line 133
    .end local v0    # "dialog":Landroid/app/Dialog;
    const/4 v2, 0x1

    .line 132
    invoke-direct {v0, p0, v2}, Lcom/openintents/distribution/DownloadOIAppDialog;-><init>(Landroid/content/Context;I)V

    .restart local v0    # "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 149
    packed-switch p1, :pswitch_data_0

    .line 158
    :goto_0
    :pswitch_0
    return-void

    .line 155
    :pswitch_1
    invoke-static {p0, p2}, Lcom/openintents/distribution/DownloadOIAppDialog;->onPrepareDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openintents/notepad/filename/DialogHostingActivity;->mIsPausing:Z

    .line 207
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openintents/notepad/filename/DialogHostingActivity;->mIsPausing:Z

    .line 198
    return-void
.end method
