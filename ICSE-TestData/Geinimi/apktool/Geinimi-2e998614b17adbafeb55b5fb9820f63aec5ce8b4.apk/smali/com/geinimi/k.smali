.class final Lcom/geinimi/k;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private synthetic a:Lcom/geinimi/AdActivity;


# direct methods
.method constructor <init>(Lcom/geinimi/AdActivity;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/geinimi/k;->a:Lcom/geinimi/AdActivity;

    const v0, 0x1090005

    invoke-direct {p0, p2, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/geinimi/k;->a:Lcom/geinimi/AdActivity;

    invoke-static {v1}, Lcom/geinimi/AdActivity;->a(Lcom/geinimi/AdActivity;)[Z

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/widget/CheckedTextView;

    move-object v1, v0

    iget-object v3, p0, Lcom/geinimi/k;->a:Lcom/geinimi/AdActivity;

    invoke-static {v3}, Lcom/geinimi/AdActivity;->a(Lcom/geinimi/AdActivity;)[Z

    move-result-object v3

    aget-boolean v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_0
    return-object v2
.end method
