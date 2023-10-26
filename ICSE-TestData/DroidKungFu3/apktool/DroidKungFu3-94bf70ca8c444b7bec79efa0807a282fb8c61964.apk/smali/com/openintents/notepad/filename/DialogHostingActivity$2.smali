.class Lcom/openintents/notepad/filename/DialogHostingActivity$2;
.super Ljava/lang/Object;
.source "DialogHostingActivity.java"

# interfaces
.implements Lcom/openintents/notepad/filename/FilenameDialog$OnFilenamePickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openintents/notepad/filename/DialogHostingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openintents/notepad/filename/DialogHostingActivity;


# direct methods
.method constructor <init>(Lcom/openintents/notepad/filename/DialogHostingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openintents/notepad/filename/DialogHostingActivity$2;->this$0:Lcom/openintents/notepad/filename/DialogHostingActivity;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilenamePicked(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v2, p0, Lcom/openintents/notepad/filename/DialogHostingActivity$2;->this$0:Lcom/openintents/notepad/filename/DialogHostingActivity;

    invoke-virtual {v2}, Lcom/openintents/notepad/filename/DialogHostingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/openintents/notepad/util/FileUriUtils;->getUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 183
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    iget-object v2, p0, Lcom/openintents/notepad/filename/DialogHostingActivity$2;->this$0:Lcom/openintents/notepad/filename/DialogHostingActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/openintents/notepad/filename/DialogHostingActivity;->setResult(ILandroid/content/Intent;)V

    .line 186
    return-void
.end method
