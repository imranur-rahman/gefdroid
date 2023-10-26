.class final Lcom/kosenkov/protector/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Lcom/kosenkov/protector/y;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/y;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/c;->b:Lcom/kosenkov/protector/y;

    iput-object p2, p0, Lcom/kosenkov/protector/c;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/kosenkov/protector/c;->b:Lcom/kosenkov/protector/y;

    iget-object v0, v0, Lcom/kosenkov/protector/y;->b:Lcom/kosenkov/protector/SettingsActivity;

    const-string v1, "Nothing selected"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    iget-object v3, p0, Lcom/kosenkov/protector/c;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/kosenkov/protector/c;->b:Lcom/kosenkov/protector/y;

    iget-object v0, v0, Lcom/kosenkov/protector/y;->b:Lcom/kosenkov/protector/SettingsActivity;

    iget-object v1, p0, Lcom/kosenkov/protector/c;->b:Lcom/kosenkov/protector/y;

    iget-object v1, v1, Lcom/kosenkov/protector/y;->a:Lcom/kosenkov/protector/r;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kosenkov/protector/SettingsActivity;->a(Lcom/kosenkov/protector/SettingsActivity;Lcom/kosenkov/protector/r;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/kosenkov/protector/c;->a:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/kosenkov/protector/c;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/kosenkov/protector/c;->b:Lcom/kosenkov/protector/y;

    iget-object v1, v1, Lcom/kosenkov/protector/y;->b:Lcom/kosenkov/protector/SettingsActivity;

    iget-object v2, p0, Lcom/kosenkov/protector/c;->b:Lcom/kosenkov/protector/y;

    iget-object v2, v2, Lcom/kosenkov/protector/y;->a:Lcom/kosenkov/protector/r;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/kosenkov/protector/SettingsActivity;->a(Lcom/kosenkov/protector/SettingsActivity;Lcom/kosenkov/protector/r;Ljava/lang/String;)V

    goto :goto_0
.end method
