.class Lcom/waps/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/waps/AppConnect;


# direct methods
.method constructor <init>(Lcom/waps/AppConnect;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/e;->a:Lcom/waps/AppConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    # setter for: Lcom/waps/AppConnect;->ai:Z
    invoke-static {v0}, Lcom/waps/AppConnect;->access$502(Z)Z

    return-void
.end method
