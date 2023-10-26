.class public Lcom/openintents/notepad/activity/SaveFileActivity;
.super Landroid/app/Activity;
.source "SaveFileActivity.java"


# static fields
.field private static final BUNDLE_SAVE_CONTENT:Ljava/lang/String; = "save_content"

.field private static final BUNDLE_SAVE_FILENAME:Ljava/lang/String; = "save_filename"

.field private static final DIALOG_OVERWRITE_WARNING:I = 0x1

.field private static final REQUEST_CODE_SAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SaveFileActivity"


# instance fields
.field mSaveContent:Ljava/lang/String;

.field mSaveFilename:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/openintents/notepad/activity/SaveFileActivity;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/openintents/notepad/activity/SaveFileActivity;->writeToFileAndFinish()V

    return-void
.end method

.method private askForFilename(Landroid/net/Uri;)V
    .locals 3
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/openintents/notepad/filename/DialogHostingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.openintents.notepad.extra.dialog_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v0, v2}, Lcom/openintents/notepad/activity/SaveFileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    return-void
.end method

.method private getFilenameFromNoteTitle(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 13
    .param p1, "noteUri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v3, 0x0

    const-string v10, ""

    .line 125
    invoke-direct {p0}, Lcom/openintents/notepad/activity/SaveFileActivity;->getSdCardPath()Ljava/io/File;

    move-result-object v9

    .line 128
    .local v9, "sdcard":Ljava/io/File;
    invoke-virtual {p0}, Lcom/openintents/notepad/activity/SaveFileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v12

    const-string v1, "title"

    aput-object v1, v2, v11

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 130
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    move v0, v11

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, "filename":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 143
    const-string v0, "\\"

    const-string v1, ""

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 144
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 145
    const-string v0, "?"

    const-string v1, ""

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 146
    const-string v0, "*"

    const-string v1, ""

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 147
    invoke-static {v9, v8}, Lcom/openintents/notepad/util/FileUriUtils;->getFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/openintents/notepad/util/FileUriUtils;->getUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .local v7, "fileUri":Landroid/net/Uri;
    move-object v0, v7

    .line 149
    .end local v7    # "fileUri":Landroid/net/Uri;
    .end local v8    # "filename":Ljava/lang/String;
    :goto_1
    return-object v0

    :cond_0
    move v0, v12

    .line 130
    goto :goto_0

    .line 133
    :cond_1
    const-string v0, "SaveFileActivity"

    const-string v1, "Unvalid note URI"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/openintents/notepad/activity/SaveFileActivity;->finish()V

    move-object v0, v3

    .line 135
    goto :goto_1
.end method

.method private getNote(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-string v12, "SaveFileActivity"

    .line 100
    const/4 v9, 0x0

    .line 102
    .local v9, "note":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/openintents/notepad/activity/SaveFileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "encrypted"

    aput-object v1, v2, v10

    const-string v1, "note"

    aput-object v1, v2, v11

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 104
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 106
    .local v7, "encrypted":J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_1

    .line 107
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 116
    .end local v7    # "encrypted":J
    :goto_0
    if-eqz v6, :cond_0

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_0
    return-object v9

    .line 110
    .restart local v7    # "encrypted":J
    :cond_1
    const-string v0, "SaveFileActivity"

    const-string v0, "Save encrypted file not possible."

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    .end local v7    # "encrypted":J
    :cond_2
    const-string v0, "SaveFileActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error saving file: Uri not valid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSdCardPath()Ljava/io/File;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 200
    return-object v0
.end method

.method public static writeToFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 206
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 207
    .local v1, "fstream":Ljava/io/FileWriter;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 208
    .local v2, "out":Ljava/io/BufferedWriter;
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 210
    const v3, 0x7f060055

    .line 211
    const/4 v4, 0x0

    .line 210
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v1    # "fstream":Ljava/io/FileWriter;
    .end local v2    # "out":Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 213
    .local v0, "e":Ljava/io/IOException;
    const v3, 0x7f060052

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 215
    const-string v3, "SaveFileActivity"

    const-string v4, "Error writing file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeToFileAndFinish()V
    .locals 4

    .prologue
    .line 189
    iget-object v2, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveFilename:Ljava/io/File;

    iget-object v3, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveContent:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/openintents/notepad/activity/SaveFileActivity;->writeToFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveFilename:Ljava/io/File;

    invoke-static {v2}, Lcom/openintents/notepad/util/FileUriUtils;->getUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 194
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 195
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/openintents/notepad/activity/SaveFileActivity;->setResult(ILandroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/openintents/notepad/activity/SaveFileActivity;->finish()V

    .line 197
    return-void
.end method


# virtual methods
.method getOverwriteWarningDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 237
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 239
    const v1, 0x7f060056

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 240
    const v1, 0x7f060057

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 241
    const v1, 0x104000a

    .line 242
    new-instance v2, Lcom/openintents/notepad/activity/SaveFileActivity$1;

    invoke-direct {v2, p0}, Lcom/openintents/notepad/activity/SaveFileActivity$1;-><init>(Lcom/openintents/notepad/activity/SaveFileActivity;)V

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 249
    const/high16 v1, 0x1040000

    .line 250
    new-instance v2, Lcom/openintents/notepad/activity/SaveFileActivity$2;

    invoke-direct {v2, p0}, Lcom/openintents/notepad/activity/SaveFileActivity$2;-><init>(Lcom/openintents/notepad/activity/SaveFileActivity;)V

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 237
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 163
    const-string v0, "SaveFileActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received requestCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    packed-switch p1, :pswitch_data_0

    .line 182
    invoke-virtual {p0}, Lcom/openintents/notepad/activity/SaveFileActivity;->finish()V

    .line 184
    :goto_0
    return-void

    .line 166
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 168
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/openintents/notepad/util/FileUriUtils;->getFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveFilename:Ljava/io/File;

    .line 170
    iget-object v0, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/openintents/notepad/activity/SaveFileActivity;->showDialog(I)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/openintents/notepad/activity/SaveFileActivity;->writeToFileAndFinish()V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/openintents/notepad/activity/SaveFileActivity;->finish()V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v6, "save_filename"

    const-string v5, "save_content"

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    if-eqz p1, :cond_2

    .line 49
    const-string v3, "save_filename"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    new-instance v3, Ljava/io/File;

    const-string v4, "save_filename"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveFilename:Ljava/io/File;

    .line 52
    :cond_0
    const-string v3, "save_content"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    const-string v3, "save_content"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveContent:Ljava/lang/String;

    .line 83
    :cond_1
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/openintents/notepad/activity/SaveFileActivity;->setResult(I)V

    .line 84
    return-void

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/openintents/notepad/activity/SaveFileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 59
    .local v2, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 60
    .local v0, "fileUri":Landroid/net/Uri;
    if-eqz v2, :cond_5

    .line 61
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    move-object v0, v2

    .line 64
    const-string v3, "com.openintents.extra.TEXT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveContent:Ljava/lang/String;

    .line 70
    :goto_1
    iget-object v3, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveContent:Ljava/lang/String;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 71
    invoke-direct {p0, v0}, Lcom/openintents/notepad/activity/SaveFileActivity;->askForFilename(Landroid/net/Uri;)V

    goto :goto_0

    .line 67
    :cond_3
    invoke-direct {p0, v2}, Lcom/openintents/notepad/activity/SaveFileActivity;->getFilenameFromNoteTitle(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 68
    invoke-direct {p0, v2}, Lcom/openintents/notepad/activity/SaveFileActivity;->getNote(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveContent:Ljava/lang/String;

    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/openintents/notepad/activity/SaveFileActivity;->finish()V

    goto :goto_0

    .line 77
    :cond_5
    const-string v3, "SaveFileActivity"

    const-string v4, "Invalid URI"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/openintents/notepad/activity/SaveFileActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 222
    packed-switch p1, :pswitch_data_0

    .line 226
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 224
    :pswitch_0
    invoke-virtual {p0}, Lcom/openintents/notepad/activity/SaveFileActivity;->getOverwriteWarningDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 232
    .line 234
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveFilename:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "save_filename"

    iget-object v1, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveContent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "save_content"

    iget-object v1, p0, Lcom/openintents/notepad/activity/SaveFileActivity;->mSaveContent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    return-void
.end method
