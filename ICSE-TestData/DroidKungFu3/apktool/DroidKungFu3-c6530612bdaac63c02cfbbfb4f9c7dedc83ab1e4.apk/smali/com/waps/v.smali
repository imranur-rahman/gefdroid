.class Lcom/waps/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/waps/OffersWebView;


# direct methods
.method constructor <init>(Lcom/waps/OffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/v;->a:Lcom/waps/OffersWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/waps/v;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v0}, Lcom/waps/OffersWebView;->finish()V

    sput-boolean v2, Lcom/waps/p;->c:Z

    iget-object v0, p0, Lcom/waps/v;->a:Lcom/waps/OffersWebView;

    # setter for: Lcom/waps/OffersWebView;->P:Z
    invoke-static {v0, v2}, Lcom/waps/OffersWebView;->access$1202(Lcom/waps/OffersWebView;Z)Z

    sput-boolean v1, Lcom/waps/q;->c:Z

    sput-boolean v1, Lcom/waps/o;->g:Z

    iget-object v0, p0, Lcom/waps/v;->a:Lcom/waps/OffersWebView;

    # getter for: Lcom/waps/OffersWebView;->H:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/waps/OffersWebView;->access$1300(Lcom/waps/OffersWebView;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/waps/v;->a:Lcom/waps/OffersWebView;

    # getter for: Lcom/waps/OffersWebView;->H:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/waps/OffersWebView;->access$1300(Lcom/waps/OffersWebView;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/waps/v;->a:Lcom/waps/OffersWebView;

    # getter for: Lcom/waps/OffersWebView;->I:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/waps/OffersWebView;->access$1400(Lcom/waps/OffersWebView;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/waps/v;->a:Lcom/waps/OffersWebView;

    # getter for: Lcom/waps/OffersWebView;->I:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/waps/OffersWebView;->access$1400(Lcom/waps/OffersWebView;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/waps/v;->a:Lcom/waps/OffersWebView;

    # getter for: Lcom/waps/OffersWebView;->C:Lcom/waps/p;
    invoke-static {v0}, Lcom/waps/OffersWebView;->access$900(Lcom/waps/OffersWebView;)Lcom/waps/p;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/waps/p;->a(I)V

    iget-object v0, p0, Lcom/waps/v;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v0}, Lcom/waps/OffersWebView;->finish()V

    return-void
.end method
