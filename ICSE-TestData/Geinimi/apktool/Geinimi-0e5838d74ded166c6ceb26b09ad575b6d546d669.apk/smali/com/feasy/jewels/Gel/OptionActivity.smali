.class public Lcom/feasy/jewels/Gel/OptionActivity;
.super Landroid/app/Activity;
.source "OptionActivity.java"


# instance fields
.field private cbMusic:Landroid/widget/CheckBox;

.field private cbSound:Landroid/widget/CheckBox;

.field private cbVibrate:Landroid/widget/CheckBox;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/feasy/jewels/Gel/OptionActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/feasy/jewels/Gel/OptionActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1(Lcom/feasy/jewels/Gel/OptionActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/feasy/jewels/Gel/OptionActivity;->cbMusic:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2(Lcom/feasy/jewels/Gel/OptionActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/feasy/jewels/Gel/OptionActivity;->cbSound:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3(Lcom/feasy/jewels/Gel/OptionActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/feasy/jewels/Gel/OptionActivity;->cbVibrate:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v6, 0x7f030004

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/OptionActivity;->setContentView(I)V

    .line 28
    const-string v6, "Game Option"

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/OptionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/OptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/feasy/jewels/Gel/OptionActivity;->mIntent:Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Lcom/feasy/jewels/Gel/OptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "isMusic"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 35
    .local v3, "isMusic":Z
    const-string v6, "isSound"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 36
    .local v4, "isSound":Z
    const-string v6, "isVibrate"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 39
    .local v5, "isVibrate":Z
    const v6, 0x7f06000e

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/feasy/jewels/Gel/OptionActivity;->cbMusic:Landroid/widget/CheckBox;

    .line 40
    iget-object v6, p0, Lcom/feasy/jewels/Gel/OptionActivity;->cbMusic:Landroid/widget/CheckBox;

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 42
    const v6, 0x7f06000f

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/feasy/jewels/Gel/OptionActivity;->cbSound:Landroid/widget/CheckBox;

    .line 43
    iget-object v6, p0, Lcom/feasy/jewels/Gel/OptionActivity;->cbSound:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 45
    const v6, 0x7f060010

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/feasy/jewels/Gel/OptionActivity;->cbVibrate:Landroid/widget/CheckBox;

    .line 46
    iget-object v6, p0, Lcom/feasy/jewels/Gel/OptionActivity;->cbVibrate:Landroid/widget/CheckBox;

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 49
    const v6, 0x7f060012

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 50
    .local v2, "btnSave":Landroid/widget/Button;
    new-instance v6, Lcom/feasy/jewels/Gel/OptionActivity$1;

    invoke-direct {v6, p0}, Lcom/feasy/jewels/Gel/OptionActivity$1;-><init>(Lcom/feasy/jewels/Gel/OptionActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v6, 0x7f060011

    invoke-virtual {p0, v6}, Lcom/feasy/jewels/Gel/OptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 65
    .local v1, "btnCancel":Landroid/widget/Button;
    new-instance v6, Lcom/feasy/jewels/Gel/OptionActivity$2;

    invoke-direct {v6, p0}, Lcom/feasy/jewels/Gel/OptionActivity$2;-><init>(Lcom/feasy/jewels/Gel/OptionActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method
