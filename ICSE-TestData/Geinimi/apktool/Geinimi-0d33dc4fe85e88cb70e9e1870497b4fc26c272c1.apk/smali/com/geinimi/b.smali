.class final Lcom/geinimi/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/geinimi/AdActivity;


# direct methods
.method constructor <init>(Lcom/geinimi/AdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/geinimi/b;->a:Lcom/geinimi/AdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/geinimi/b;->a:Lcom/geinimi/AdActivity;

    invoke-virtual {v0}, Lcom/geinimi/AdActivity;->finish()V

    return-void
.end method
