.class public Lcom/openintents/distribution/DistributionLibrary;
.super Ljava/lang/Object;
.source "DistributionLibrary.java"


# static fields
.field public static final DIALOG_COUNT:I = 0x2

.field public static final MENU_COUNT:I = 0x2

.field public static final OFFSET_ABOUT:I = 0x0

.field public static final OFFSET_UPDATE:I = 0x1


# instance fields
.field mActivity:Landroid/app/Activity;

.field mFirstDialogId:I

.field mFirstMenuId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "firstMenuId"    # I
    .param p3, "firstDialogId"    # I

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    .line 22
    iput v0, p0, Lcom/openintents/distribution/DistributionLibrary;->mFirstDialogId:I

    .line 25
    iput-object p1, p0, Lcom/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    .line 26
    iput p2, p0, Lcom/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    .line 27
    iput p3, p0, Lcom/openintents/distribution/DistributionLibrary;->mFirstDialogId:I

    .line 28
    return-void
.end method


# virtual methods
.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 70
    iget v0, p0, Lcom/openintents/distribution/DistributionLibrary;->mFirstDialogId:I

    sub-int v0, p1, v0

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 59
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 63
    .local v0, "id":I
    iget v1, p0, Lcom/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    sub-int v1, v0, v1

    .line 66
    const/4 v1, 0x0

    return v1
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 77
    iget v0, p0, Lcom/openintents/distribution/DistributionLibrary;->mFirstDialogId:I

    sub-int v0, p1, v0

    .line 80
    return-void
.end method

.method public setFirst(II)V
    .locals 0
    .param p1, "firstMenuId"    # I
    .param p2, "firstDialogId"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/openintents/distribution/DistributionLibrary;->mFirstMenuId:I

    .line 32
    iput p2, p0, Lcom/openintents/distribution/DistributionLibrary;->mFirstDialogId:I

    .line 33
    return-void
.end method

.method public showEulaOrNewVersion()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/openintents/distribution/EulaOrNewVersion;->showEula(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/openintents/distribution/DistributionLibrary;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/openintents/distribution/EulaOrNewVersion;->showNewVersion(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 53
    goto :goto_0
.end method
