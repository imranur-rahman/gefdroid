.class final Lcom/kosenkov/protector/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kosenkov/protector/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/kosenkov/protector/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kosenkov/protector/z;->a:Lcom/kosenkov/protector/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/kosenkov/protector/z;->a:Lcom/kosenkov/protector/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kosenkov/protector/z;->a:Lcom/kosenkov/protector/SettingsActivity;

    const-class v3, Lcom/kosenkov/protector/Copyright;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/kosenkov/protector/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
