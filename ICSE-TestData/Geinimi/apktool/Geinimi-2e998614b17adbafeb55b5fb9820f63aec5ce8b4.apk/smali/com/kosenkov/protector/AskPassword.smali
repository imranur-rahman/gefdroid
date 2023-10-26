.class public Lcom/kosenkov/protector/AskPassword;
.super Landroid/app/Activity;


# static fields
.field public static a:Z


# instance fields
.field private b:Z

.field private c:Landroid/widget/Button;

.field private d:Landroid/os/Handler;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/kosenkov/protector/q;

    invoke-direct {v0, p0}, Lcom/kosenkov/protector/q;-><init>(Lcom/kosenkov/protector/AskPassword;)V

    iput-object v0, p0, Lcom/kosenkov/protector/AskPassword;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/kosenkov/protector/AskPassword;)V
    .locals 12

    const v11, 0x7f06000d

    const v6, 0x7f06000a

    const v10, 0x7f020004

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/kosenkov/protector/AskPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kosenkov/protector/AskPassword;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pin"

    const-string v3, "0000"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kosenkov/protector/AskPassword;->b:Z

    iget-boolean v1, p0, Lcom/kosenkov/protector/AskPassword;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/kosenkov/protector/AskPassword;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "unlock"

    invoke-virtual {v1, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last unlock time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "locked"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "show_notification"

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v10, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.kosenkov.protector.LOCK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v8, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x18

    iput v1, v2, Landroid/app/Notification;->flags:I

    invoke-virtual {v0, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    invoke-virtual {p0}, Lcom/kosenkov/protector/AskPassword;->finish()V

    :goto_0
    return-void

    :cond_1
    const-string v1, "0013798299"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/kosenkov/protector/AskPassword;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "notification"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v10, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.kosenkov.protector.LOCK"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v3, 0x22

    iput v3, v5, Landroid/app/Notification;->flags:I

    invoke-virtual {v1, v11, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v1, "alarm"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.kosenkov.protector.RESET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x8000000

    invoke-static {v2, v8, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v9, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v8}, Lcom/kosenkov/protector/AskPassword;->showDialog(I)V

    iget-object v0, p0, Lcom/kosenkov/protector/AskPassword;->d:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/kosenkov/protector/AskPassword;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/kosenkov/protector/AskPassword;->c:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-boolean v0, p0, Lcom/kosenkov/protector/AskPassword;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kosenkov/protector/AskPassword;->e:Z

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f090005

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/kosenkov/protector/AskPassword;->setContentView(I)V

    invoke-virtual {p0}, Lcom/kosenkov/protector/AskPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    sput-boolean v2, Lcom/kosenkov/protector/AskPassword;->a:Z

    const-string v0, "unlock"

    invoke-virtual {p0, v0, v2}, Lcom/kosenkov/protector/AskPassword;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "locked"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kosenkov/protector/AskPassword;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/kosenkov/protector/AskPassword;->c:Landroid/widget/Button;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/kosenkov/protector/AskPassword;->c:Landroid/widget/Button;

    new-instance v1, Lcom/kosenkov/protector/o;

    invoke-direct {v1, p0}, Lcom/kosenkov/protector/o;-><init>(Lcom/kosenkov/protector/AskPassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/kosenkov/protector/AskPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/kosenkov/protector/p;

    invoke-direct {v1, p0}, Lcom/kosenkov/protector/p;-><init>(Lcom/kosenkov/protector/AskPassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/kosenkov/protector/AskPassword;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "contacts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/kosenkov/protector/AskPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Lcom/kosenkov/protector/n;

    invoke-direct {v0, p0}, Lcom/kosenkov/protector/n;-><init>(Lcom/kosenkov/protector/AskPassword;)V

    invoke-virtual {p0, v4}, Lcom/kosenkov/protector/AskPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/kosenkov/protector/AskPassword;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/kosenkov/protector/AskPassword;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLongClickable(Z)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v1, 0x7f060017

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/kosenkov/protector/AskPassword;->b:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/kosenkov/protector/AskPassword;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kosenkov/protector/AskPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/kosenkov/protector/AskPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const-string v1, "process"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have to kill process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v2, "com.kosenkov.protector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kosenkov/protector/SettingsActivity;->a:Z

    :cond_0
    :goto_0
    sput-boolean v4, Lcom/kosenkov/protector/AskPassword;->a:Z

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/kosenkov/protector/AskPassword;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/kosenkov/protector/AskPassword;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kosenkov/protector/AskPassword;->b:Z

    return-void
.end method
