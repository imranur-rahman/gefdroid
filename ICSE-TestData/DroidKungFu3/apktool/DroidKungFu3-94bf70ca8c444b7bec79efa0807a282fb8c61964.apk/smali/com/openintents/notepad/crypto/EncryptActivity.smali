.class public Lcom/openintents/notepad/crypto/EncryptActivity;
.super Landroid/app/Activity;
.source "EncryptActivity.java"


# static fields
.field public static final DIALOG_ID_GET_FROM_MARKET:I = 0x1

.field private static final REQUEST_CODE_ENCRYPT_OR_UNENCRYPT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EncryptActivity"

.field private static final debug:Z

.field private static sCancelEncrypt:Z

.field private static sPendingEncryptActivities:I


# instance fields
.field mDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    sput v0, Lcom/openintents/notepad/crypto/EncryptActivity;->sPendingEncryptActivities:I

    .line 51
    sput-boolean v0, Lcom/openintents/notepad/crypto/EncryptActivity;->sCancelEncrypt:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 249
    new-instance v0, Lcom/openintents/notepad/crypto/EncryptActivity$1;

    invoke-direct {v0, p0}, Lcom/openintents/notepad/crypto/EncryptActivity$1;-><init>(Lcom/openintents/notepad/crypto/EncryptActivity;)V

    iput-object v0, p0, Lcom/openintents/notepad/crypto/EncryptActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 30
    return-void
.end method

.method public static cancelEncrypt()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/openintents/notepad/crypto/EncryptActivity;->sCancelEncrypt:Z

    .line 66
    return-void
.end method

.method public static confirmEncryptActivityCalled()V
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/openintents/notepad/crypto/EncryptActivity;->sPendingEncryptActivities:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/openintents/notepad/crypto/EncryptActivity;->sPendingEncryptActivities:I

    .line 56
    return-void
.end method

.method public static getCryptoStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "tags"    # Ljava/lang/String;

    .prologue
    .line 150
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    return-object v0
.end method

.method public static getPendingEncryptActivities()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/openintents/notepad/crypto/EncryptActivity;->sPendingEncryptActivities:I

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 157
    :pswitch_0
    const/4 v8, -0x1

    if-ne p2, v8, :cond_6

    if-eqz p3, :cond_6

    .line 160
    const-string v8, "com.openintents.extra.TEXT_ARRAY"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "textArray":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v2, v3, v8

    .line 162
    .local v2, "text":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v4, v3, v8

    .line 163
    .local v4, "title":Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v1, v3, v8

    .line 164
    .local v1, "tags":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "action":Ljava/lang/String;
    const-string v8, "com.openintents.notepad.extra.uri"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "uristring":Ljava/lang/String;
    const/4 v5, 0x0

    .line 168
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_3

    .line 169
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 181
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    if-eqz v4, :cond_0

    .line 185
    const-string v8, "title"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    if-eqz v2, :cond_1

    .line 188
    const-string v8, "note"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_1
    if-eqz v1, :cond_2

    .line 191
    const-string v8, "tags"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_2
    const-string v8, "com.openintents.action.ENCRYPT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 194
    const-string v8, "encrypted"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    :goto_1
    invoke-virtual {p0}, Lcom/openintents/notepad/crypto/EncryptActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v5, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/openintents/notepad/crypto/EncryptActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 208
    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Lcom/openintents/notepad/crypto/EncryptActivity;->setResult(I)V

    .line 211
    invoke-virtual {p0}, Lcom/openintents/notepad/crypto/EncryptActivity;->finish()V

    goto :goto_0

    .line 171
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_3
    const-string v8, "EncryptActivity"

    const-string v9, "Wrong extra uri"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v8, "Encrypted information incomplete"

    .line 174
    const/4 v9, 0x0

    .line 172
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 174
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 195
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_4
    const-string v8, "com.openintents.action.DECRYPT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 196
    const-string v8, "encrypted"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 198
    :cond_5
    const-string v8, "EncryptActivity"

    const-string v9, "Wrong action"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v8, "Encrypted information incomplete"

    .line 201
    const/4 v9, 0x0

    .line 199
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 201
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 215
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "tags":Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "textArray":[Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "uristring":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_6
    const v8, 0x7f060048

    .line 216
    const/4 v9, 0x0

    .line 214
    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    .line 216
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 217
    const-string v8, "EncryptActivity"

    const-string v9, "failed to invoke encrypt"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lcom/openintents/notepad/crypto/EncryptActivity;->finish()V

    goto/16 :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "EncryptActivity"

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget v4, Lcom/openintents/notepad/crypto/EncryptActivity;->sPendingEncryptActivities:I

    if-lez v4, :cond_0

    .line 76
    sget v4, Lcom/openintents/notepad/crypto/EncryptActivity;->sPendingEncryptActivities:I

    sub-int/2addr v4, v6

    sput v4, Lcom/openintents/notepad/crypto/EncryptActivity;->sPendingEncryptActivities:I

    .line 80
    :cond_0
    sget-boolean v4, Lcom/openintents/notepad/crypto/EncryptActivity;->sCancelEncrypt:Z

    if-eqz v4, :cond_1

    .line 82
    sput-boolean v5, Lcom/openintents/notepad/crypto/EncryptActivity;->sCancelEncrypt:Z

    .line 83
    invoke-virtual {p0, v5}, Lcom/openintents/notepad/crypto/EncryptActivity;->setResult(I)V

    .line 84
    invoke-virtual {p0}, Lcom/openintents/notepad/crypto/EncryptActivity;->finish()V

    .line 139
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-static {}, Lcom/openintents/notepad/NoteEditor;->deleteStaticDecryptedText()V

    .line 92
    invoke-virtual {p0}, Lcom/openintents/notepad/crypto/EncryptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 94
    .local v3, "i":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 95
    const-string v4, "com.openintents.notepad.extra.action"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/openintents/notepad/crypto/EncryptActivity;->setResult(I)V

    .line 100
    const-string v4, "com.openintents.notepad.extra.content_unchanged"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 101
    .local v1, "contentUnchanged":Z
    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/openintents/notepad/crypto/EncryptActivity;->finish()V

    goto :goto_0

    .line 108
    :cond_2
    const-string v4, "com.openintents.action.ENCRYPT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 109
    const-string v4, "com.openintents.action.DECRYPT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 112
    const-string v4, "EncryptActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown action supplied: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/openintents/notepad/crypto/EncryptActivity;->finish()V

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-static {p0, v3}, Lcom/openintents/util/IntentUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 124
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/openintents/notepad/crypto/EncryptActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const v4, 0x7f060048

    .line 126
    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 128
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 129
    const-string v4, "EncryptActivity"

    const-string v4, "failed to invoke encrypt"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_4
    invoke-virtual {p0, v6}, Lcom/openintents/notepad/crypto/EncryptActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 228
    packed-switch p1, :pswitch_data_0

    .line 233
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 230
    :pswitch_0
    new-instance v0, Lcom/openintents/distribution/DownloadOIAppDialog;

    .line 231
    const/4 v1, 0x2

    .line 230
    invoke-direct {v0, p0, v1}, Lcom/openintents/distribution/DownloadOIAppDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/openintents/notepad/crypto/EncryptActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 242
    packed-switch p1, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 244
    :pswitch_0
    invoke-static {p0, p2}, Lcom/openintents/distribution/DownloadOIAppDialog;->onPrepareDialog(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
