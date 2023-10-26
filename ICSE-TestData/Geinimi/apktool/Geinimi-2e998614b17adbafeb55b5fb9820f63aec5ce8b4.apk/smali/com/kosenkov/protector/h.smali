.class final Lcom/kosenkov/protector/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kosenkov/protector/aa;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/h;->a:Lcom/kosenkov/protector/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/kosenkov/protector/h;->a:Lcom/kosenkov/protector/aa;

    iget-object v0, v0, Lcom/kosenkov/protector/aa;->a:Lcom/kosenkov/protector/SettingsActivity;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Lcom/kosenkov/protector/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kosenkov/protector/h;->a:Lcom/kosenkov/protector/aa;

    iget-object v0, v0, Lcom/kosenkov/protector/aa;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-static {v0}, Lcom/kosenkov/protector/SettingsActivity;->c(Lcom/kosenkov/protector/SettingsActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kosenkov/protector/h;->a:Lcom/kosenkov/protector/aa;

    iget-object v0, v0, Lcom/kosenkov/protector/aa;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-static {v0}, Lcom/kosenkov/protector/SettingsActivity;->d(Lcom/kosenkov/protector/SettingsActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    return-void
.end method
