.class final Lcom/kosenkov/protector/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kosenkov/protector/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/b;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/kosenkov/protector/b;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-virtual {v0}, Lcom/kosenkov/protector/SettingsActivity;->finish()V

    return-void
.end method
