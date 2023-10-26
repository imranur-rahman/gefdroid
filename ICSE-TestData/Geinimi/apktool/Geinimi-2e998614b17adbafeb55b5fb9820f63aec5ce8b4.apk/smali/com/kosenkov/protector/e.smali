.class final Lcom/kosenkov/protector/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kosenkov/protector/r;

.field private synthetic b:Lcom/kosenkov/protector/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/SettingsActivity;Lcom/kosenkov/protector/r;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/e;->b:Lcom/kosenkov/protector/SettingsActivity;

    iput-object p2, p0, Lcom/kosenkov/protector/e;->a:Lcom/kosenkov/protector/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/kosenkov/protector/e;->b:Lcom/kosenkov/protector/SettingsActivity;

    iget-object v1, p0, Lcom/kosenkov/protector/e;->a:Lcom/kosenkov/protector/r;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/kosenkov/protector/SettingsActivity;->a(Lcom/kosenkov/protector/SettingsActivity;Lcom/kosenkov/protector/r;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
