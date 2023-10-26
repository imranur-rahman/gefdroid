.class final Lcom/geinimi/e;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private synthetic a:Lcom/geinimi/AdActivity;


# direct methods
.method constructor <init>(Lcom/geinimi/AdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/geinimi/e;->a:Lcom/geinimi/AdActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object v0, p0, Lcom/geinimi/e;->a:Lcom/geinimi/AdActivity;

    iget-object v0, v0, Lcom/geinimi/AdActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/geinimi/e;->a:Lcom/geinimi/AdActivity;

    invoke-virtual {v0, p2}, Lcom/geinimi/AdActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
