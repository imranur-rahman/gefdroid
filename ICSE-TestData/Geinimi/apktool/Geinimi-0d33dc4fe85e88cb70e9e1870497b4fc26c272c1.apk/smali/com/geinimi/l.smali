.class final Lcom/geinimi/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/geinimi/AdActivity;


# direct methods
.method constructor <init>(Lcom/geinimi/AdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/geinimi/l;->a:Lcom/geinimi/AdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/geinimi/l;->a:Lcom/geinimi/AdActivity;

    invoke-static {v0}, Lcom/geinimi/AdActivity;->b(Lcom/geinimi/AdActivity;)[Z

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geinimi/l;->a:Lcom/geinimi/AdActivity;

    iget-object v0, v0, Lcom/geinimi/AdActivity;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/geinimi/l;->a:Lcom/geinimi/AdActivity;

    invoke-static {v0}, Lcom/geinimi/AdActivity;->b(Lcom/geinimi/AdActivity;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/geinimi/l;->a:Lcom/geinimi/AdActivity;

    invoke-static {v1}, Lcom/geinimi/AdActivity;->b(Lcom/geinimi/AdActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, p3

    if-nez v1, :cond_1

    move v1, v3

    :goto_0
    aput-boolean v1, v0, p3

    iget-object v0, p0, Lcom/geinimi/l;->a:Lcom/geinimi/AdActivity;

    iget-object v0, v0, Lcom/geinimi/AdActivity;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/geinimi/l;->a:Lcom/geinimi/AdActivity;

    invoke-static {v1}, Lcom/geinimi/AdActivity;->b(Lcom/geinimi/AdActivity;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/geinimi/l;->a:Lcom/geinimi/AdActivity;

    invoke-static {v1}, Lcom/geinimi/AdActivity;->b(Lcom/geinimi/AdActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2

    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/geinimi/l;->a:Lcom/geinimi/AdActivity;

    iget-object v0, v0, Lcom/geinimi/AdActivity;->d:Landroid/widget/Button;

    const-string v1, "\u5168\u4e0d\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/geinimi/l;->a:Lcom/geinimi/AdActivity;

    iget-object v0, v0, Lcom/geinimi/AdActivity;->d:Landroid/widget/Button;

    const-string v1, "\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_2
.end method
