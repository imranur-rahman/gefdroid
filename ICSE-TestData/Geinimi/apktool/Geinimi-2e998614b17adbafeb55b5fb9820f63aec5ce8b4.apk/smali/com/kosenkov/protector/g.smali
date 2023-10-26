.class final Lcom/kosenkov/protector/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/kosenkov/protector/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/g;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosenkov/protector/r;

    iget-object v1, p0, Lcom/kosenkov/protector/g;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-static {v1, v0}, Lcom/kosenkov/protector/SettingsActivity;->a(Lcom/kosenkov/protector/SettingsActivity;Lcom/kosenkov/protector/r;)V

    return-void
.end method
