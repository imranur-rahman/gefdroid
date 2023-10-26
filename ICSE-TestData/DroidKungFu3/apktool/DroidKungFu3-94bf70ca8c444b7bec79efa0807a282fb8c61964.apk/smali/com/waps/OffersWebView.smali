.class public Lcom/waps/OffersWebView;
.super Landroid/app/Activity;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/waps/k;

.field private c:Landroid/webkit/WebView;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/app/Dialog;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/waps/OffersWebView;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/waps/OffersWebView;->f:Landroid/app/Dialog;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->j:Ljava/lang/String;

    const-string v0, "false"

    iput-object v0, p0, Lcom/waps/OffersWebView;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/OffersWebView;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waps/OffersWebView;->m:Z

    return-void
.end method

.method static synthetic access$100(Lcom/waps/OffersWebView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/waps/OffersWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/waps/OffersWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/waps/OffersWebView;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/waps/OffersWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/waps/OffersWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/waps/OffersWebView;->m:Z

    return p1
.end method

.method static synthetic access$500(Lcom/waps/OffersWebView;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private initMetaData(Landroid/os/Bundle;)V
    .locals 3

    const-string v2, "URL"

    const-string v1, "Offers_URL"

    if-eqz p1, :cond_2

    const-string v0, "Offers_URL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Offers_URL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    :cond_0
    const-string v0, "URL"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "URL"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    :cond_1
    const-string v0, "URL_PARAMS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->i:Ljava/lang/String;

    const-string v0, "CLIENT_PACKAGE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->g:Ljava/lang/String;

    const-string v0, "USER_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->j:Ljava/lang/String;

    const-string v0, "isFinshClose"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/OffersWebView;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&publisher_user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->i:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, -0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const-string v10, ""

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/OffersWebView;->initMetaData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->d:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/waps/OffersWebView;->d:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->d:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v9}, Lcom/waps/OffersWebView;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/waps/OffersWebView;->e:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/waps/OffersWebView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    iget-object v5, p0, Lcom/waps/OffersWebView;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v5, p0, Lcom/waps/OffersWebView;->e:Landroid/widget/ProgressBar;

    div-int/lit8 v0, v0, 0x2

    const/16 v6, 0x14

    sub-int/2addr v0, v6

    div-int/lit8 v1, v1, 0x2

    const/16 v6, 0x1e

    sub-int/2addr v1, v6

    invoke-virtual {v5, v0, v1, v8, v8}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    invoke-virtual {v4, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->e:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/waps/OffersWebView;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/waps/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/waps/r;-><init>(Lcom/waps/OffersWebView;Lcom/waps/q;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    const-string v1, "10.0.0.172"

    const-string v2, ""

    const-string v2, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v10, v10, v10}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "true"

    iget-object v1, p0, Lcom/waps/OffersWebView;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u52a0\u8f7d\u4e2d,\u8bf7\u7a0d\u5019..."

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/waps/OffersWebView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/waps/q;

    invoke-direct {v1, p0}, Lcom/waps/q;-><init>(Lcom/waps/OffersWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/OffersWebView;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?a=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/OffersWebView;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/OffersWebView;->d:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/waps/OffersWebView;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/waps/OffersWebView;->finish()V

    iput-boolean v1, p0, Lcom/waps/OffersWebView;->m:Z

    :cond_0
    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    iget-object v0, p0, Lcom/waps/OffersWebView;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waps/OffersWebView;->c:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/waps/OffersWebView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
