.class Lcom/waps/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/waps/OffersWebView;


# direct methods
.method constructor <init>(Lcom/waps/OffersWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/q;->a:Lcom/waps/OffersWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/waps/q;->a:Lcom/waps/OffersWebView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d,\u8bf7\u7a0d\u5019..."

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/waps/q;->a:Lcom/waps/OffersWebView;

    new-instance v1, Lcom/waps/k;

    iget-object v2, p0, Lcom/waps/q;->a:Lcom/waps/OffersWebView;

    iget-object v3, p0, Lcom/waps/q;->a:Lcom/waps/OffersWebView;

    # getter for: Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;
    invoke-static {v3}, Lcom/waps/OffersWebView;->access$100(Lcom/waps/OffersWebView;)Landroid/webkit/WebView;

    move-result-object v3

    iget-object v4, p0, Lcom/waps/q;->a:Lcom/waps/OffersWebView;

    # getter for: Lcom/waps/OffersWebView;->l:Ljava/lang/String;
    invoke-static {v4}, Lcom/waps/OffersWebView;->access$200(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/waps/k;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/waps/OffersWebView;->b:Lcom/waps/k;

    iget-object v0, p0, Lcom/waps/q;->a:Lcom/waps/OffersWebView;

    iget-object v0, v0, Lcom/waps/OffersWebView;->b:Lcom/waps/k;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/waps/q;->a:Lcom/waps/OffersWebView;

    # getter for: Lcom/waps/OffersWebView;->l:Ljava/lang/String;
    invoke-static {v2}, Lcom/waps/OffersWebView;->access$200(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/waps/k;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/waps/q;->a:Lcom/waps/OffersWebView;

    # getter for: Lcom/waps/OffersWebView;->k:Ljava/lang/String;
    invoke-static {v0}, Lcom/waps/OffersWebView;->access$300(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    iget-object v1, p0, Lcom/waps/q;->a:Lcom/waps/OffersWebView;

    # getter for: Lcom/waps/OffersWebView;->k:Ljava/lang/String;
    invoke-static {v1}, Lcom/waps/OffersWebView;->access$300(Lcom/waps/OffersWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/q;->a:Lcom/waps/OffersWebView;

    invoke-virtual {v0}, Lcom/waps/OffersWebView;->finish()V

    :cond_0
    return-void
.end method
