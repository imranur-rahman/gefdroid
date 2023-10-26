.class final Lcom/kosenkov/protector/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private synthetic a:Lcom/kosenkov/protector/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/k;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosenkov/protector/r;

    iget-object v1, p0, Lcom/kosenkov/protector/k;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-static {v1, v0, p3}, Lcom/kosenkov/protector/SettingsActivity;->a(Lcom/kosenkov/protector/SettingsActivity;Lcom/kosenkov/protector/r;I)V

    iget-object v0, p0, Lcom/kosenkov/protector/k;->a:Lcom/kosenkov/protector/SettingsActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/kosenkov/protector/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    const-wide/16 v0, 0x14

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    const/4 v0, 0x1

    return v0
.end method
