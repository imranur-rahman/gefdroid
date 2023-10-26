.class final Lcom/kosenkov/protector/p;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/kosenkov/protector/AskPassword;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/AskPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/p;->a:Lcom/kosenkov/protector/AskPassword;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const-string v3, "\n"

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/kosenkov/protector/p;->a:Lcom/kosenkov/protector/AskPassword;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/kosenkov/protector/p;->a:Lcom/kosenkov/protector/AskPassword;

    invoke-static {v0}, Lcom/kosenkov/protector/AskPassword;->b(Lcom/kosenkov/protector/AskPassword;)Landroid/widget/Button;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/kosenkov/protector/x;

    invoke-direct {v1, p0}, Lcom/kosenkov/protector/x;-><init>(Lcom/kosenkov/protector/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    const-string v2, "0"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/kosenkov/protector/w;

    invoke-direct {v1, p0}, Lcom/kosenkov/protector/w;-><init>(Lcom/kosenkov/protector/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
