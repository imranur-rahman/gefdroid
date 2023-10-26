.class public Lcom/geinimi/AdActivity;
.super Landroid/app/Activity;


# static fields
.field public static final STR_PARA_KEY:Ljava/lang/String; = "ACTIVITY_PARAM_KEY"

.field public static final STR_PARA_SUGGEST_CONTENT_KEY:Ljava/lang/String; = "ACTIVITY_PARAM_SUGGEST_CONTENT_KEY"

.field public static final STR_PARA_SUGGEST_SMS_KEY:Ljava/lang/String; = "ACTIVITY_PARAM_SUGGEST_SMS_KEY"

.field public static final STR_PARA_URL_KEY:Ljava/lang/String; = "ACTIVITY_PARAM_URL_KEY"

.field private static f:Z

.field private static g:Z


# instance fields
.field a:Ljava/util/HashMap;

.field b:Landroid/widget/ProgressBar;

.field c:Landroid/widget/ArrayAdapter;

.field d:Landroid/widget/Button;

.field private e:Landroid/webkit/WebView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:[Lcom/geinimi/c/c;

.field private l:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/geinimi/AdActivity;->f:Z

    sput-boolean v0, Lcom/geinimi/AdActivity;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/geinimi/AdActivity;->e:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/geinimi/AdActivity;->a:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/geinimi/AdActivity;->b:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/geinimi/AdActivity;->h:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/geinimi/AdActivity;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/geinimi/AdActivity;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/geinimi/AdActivity;->k:[Lcom/geinimi/c/c;

    iput-object v0, p0, Lcom/geinimi/AdActivity;->l:[Z

    iput-object v0, p0, Lcom/geinimi/AdActivity;->c:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/geinimi/AdActivity;->d:Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lcom/geinimi/AdActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/AdActivity;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/geinimi/AdActivity;Lcom/geinimi/ads/Advertisable;)V
    .locals 1

    new-instance v0, Lcom/geinimi/g;

    invoke-direct {v0, p0, p1}, Lcom/geinimi/g;-><init>(Lcom/geinimi/AdActivity;Lcom/geinimi/ads/Advertisable;)V

    invoke-virtual {v0}, Lcom/geinimi/g;->start()V

    return-void
.end method

.method private a(Lcom/geinimi/r;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-virtual {p1}, Lcom/geinimi/r;->f()Lcom/geinimi/ads/Advertisable;

    move-result-object v0

    check-cast v0, Lcom/geinimi/ads/d;

    const-string v1, "ACTIVITY_PARAM_URL_KEY"

    invoke-virtual {v0, v1}, Lcom/geinimi/ads/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load URL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/geinimi/AdActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/geinimi/AdActivity;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/geinimi/AdActivity;->b:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/geinimi/AdActivity;->b:Landroid/widget/ProgressBar;

    :cond_0
    iget-object v1, p0, Lcom/geinimi/AdActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/geinimi/AdActivity;->e:Landroid/webkit/WebView;

    new-instance v2, Lcom/geinimi/a;

    invoke-direct {v2, p0}, Lcom/geinimi/a;-><init>(Lcom/geinimi/AdActivity;)V

    const-string v3, "hrefmap"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v2, v0, [B

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move v4, v7

    :goto_0
    if-ge v4, v0, :cond_1

    sub-int v5, v0, v4

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-static {v2}, Lcom/geinimi/c/m;->a([B)[B

    move-result-object v0

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xbf

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x3

    array-length v4, v0

    sub-int/2addr v4, v10

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    :goto_1
    iget-object v0, p0, Lcom/geinimi/AdActivity;->e:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/geinimi/AdActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/geinimi/AdActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, v9}, Lcom/geinimi/AdActivity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/geinimi/AdActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/geinimi/e;

    invoke-direct {v1, p0}, Lcom/geinimi/e;-><init>(Lcom/geinimi/AdActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/geinimi/AdActivity;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/geinimi/f;

    invoke-direct {v1, p0, p1}, Lcom/geinimi/f;-><init>(Lcom/geinimi/AdActivity;Lcom/geinimi/r;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/geinimi/AdActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/geinimi/AdActivity;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/geinimi/AdActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/geinimi/AdActivity;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/geinimi/AdActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Lcom/geinimi/AdActivity;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/geinimi/AdActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/geinimi/AdActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/geinimi/AdActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/geinimi/AdActivity;->finish()V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/geinimi/AdActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/geinimi/AdActivity;->f:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/geinimi/AdActivity;->f:Z

    return p0
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/geinimi/AdActivity;->g:Z

    return v0
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/geinimi/AdActivity;->g:Z

    return p0
.end method

.method static synthetic b(Lcom/geinimi/AdActivity;)[Z
    .locals 1

    iget-object v0, p0, Lcom/geinimi/AdActivity;->l:[Z

    return-object v0
.end method

.method static synthetic c(Lcom/geinimi/AdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/AdActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/geinimi/AdActivity;)[Lcom/geinimi/c/c;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/AdActivity;->k:[Lcom/geinimi/c/c;

    return-object v0
.end method

.method static synthetic e(Lcom/geinimi/AdActivity;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/geinimi/c/k;->j()[Lcom/geinimi/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/geinimi/AdActivity;->k:[Lcom/geinimi/c/c;

    iget-object v0, p0, Lcom/geinimi/AdActivity;->k:[Lcom/geinimi/c/c;

    array-length v0, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/geinimi/AdActivity;->finish()V

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/geinimi/h;

    invoke-direct {v4, p0}, Lcom/geinimi/h;-><init>(Lcom/geinimi/AdActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v4, "\u786e\u5b9a"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/geinimi/AdActivity;->d:Landroid/widget/Button;

    iget-object v3, p0, Lcom/geinimi/AdActivity;->d:Landroid/widget/Button;

    new-instance v4, Lcom/geinimi/i;

    invoke-direct {v4, p0}, Lcom/geinimi/i;-><init>(Lcom/geinimi/AdActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/geinimi/AdActivity;->d:Landroid/widget/Button;

    const-string v4, "\u5168\u9009"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/geinimi/AdActivity;->d:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/geinimi/j;

    invoke-direct {v4, p0}, Lcom/geinimi/j;-><init>(Lcom/geinimi/AdActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v4, "\u53d6\u6d88"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/geinimi/AdActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/geinimi/AdActivity;->k:[Lcom/geinimi/c/c;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/geinimi/AdActivity;->k:[Lcom/geinimi/c/c;

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/geinimi/AdActivity;->l:[Z

    move v2, v6

    :goto_0
    iget-object v3, p0, Lcom/geinimi/AdActivity;->k:[Lcom/geinimi/c/c;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/geinimi/AdActivity;->k:[Lcom/geinimi/c/c;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/geinimi/c/c;->b:Ljava/lang/String;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/geinimi/AdActivity;->k:[Lcom/geinimi/c/c;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/geinimi/c/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/geinimi/AdActivity;->l:[Z

    aput-boolean v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/geinimi/k;

    const v3, 0x1090005

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/geinimi/k;-><init>(Lcom/geinimi/AdActivity;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/geinimi/AdActivity;->c:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/geinimi/AdActivity;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/geinimi/l;

    invoke-direct {v0, p0}, Lcom/geinimi/l;-><init>(Lcom/geinimi/AdActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static isRunningServices(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    invoke-static {}, Lcom/geinimi/AdService;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v2, v2, Lcom/geinimi/AdService;

    if-eqz v2, :cond_0

    :cond_1
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static setDebugMode()V
    .locals 0

    invoke-static {}, Lcom/geinimi/AdService;->a()V

    return-void
.end method

.method public static startAdService(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/geinimi/AdActivity;->isRunningServices(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/geinimi/AdService;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "ACTIVITY_PARAM_KEY"

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/geinimi/AdActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/geinimi/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnCreate......bundle ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bundle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p0}, Lcom/geinimi/AdActivity;->isRunningServices(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/geinimi/AdService;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/geinimi/AdActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :try_start_3
    sget-object v1, Lcom/geinimi/AdService;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/geinimi/AdActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-static {}, Lcom/geinimi/custom/AdShow;->show()V

    invoke-virtual {p0}, Lcom/geinimi/AdActivity;->finish()V

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v1

    move-object v1, v4

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v4

    goto :goto_1

    :cond_3
    const-string v2, "ACTIVITY_PARAM_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "ACTIVITY_PARAM_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/geinimi/AdPushable;

    invoke-virtual {v1, p0}, Lcom/geinimi/AdPushable;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/geinimi/r;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/geinimi/r;->f()Lcom/geinimi/ads/Advertisable;

    move-result-object v3

    instance-of v3, v3, Lcom/geinimi/ads/d;

    if-eqz v3, :cond_5

    const-string v3, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {p0, v3}, Lcom/geinimi/AdActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Lcom/geinimi/AdActivity;->a(Lcom/geinimi/r;)V

    :cond_4
    :goto_3
    invoke-virtual {v1}, Lcom/geinimi/AdPushable;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2a

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/geinimi/c/k;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2b

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/geinimi/c/k;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/geinimi/AdPushable;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/geinimi/c/k;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/geinimi/c/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/geinimi/c/k;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x43

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/geinimi/c/k;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x44

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/geinimi/c/k;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x45

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/geinimi/c/k;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x30

    invoke-static {v4}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/geinimi/AdPushable;->d()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/geinimi/c/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/geinimi/r;->f()Lcom/geinimi/ads/Advertisable;

    move-result-object v3

    instance-of v3, v3, Lcom/geinimi/ads/o;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/geinimi/r;->f()Lcom/geinimi/ads/Advertisable;

    move-result-object v3

    const-string v4, "ACTIVITY_PARAM_SUGGEST_CONTENT_KEY"

    invoke-virtual {v3, v4}, Lcom/geinimi/ads/Advertisable;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/geinimi/AdActivity;->i:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/geinimi/r;->f()Lcom/geinimi/ads/Advertisable;

    move-result-object v2

    const-string v3, "ACTIVITY_PARAM_SUGGEST_SMS_KEY"

    invoke-virtual {v2, v3}, Lcom/geinimi/ads/Advertisable;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/geinimi/AdActivity;->j:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/geinimi/AdActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/geinimi/AdActivity;->finish()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/geinimi/AdActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u597d"

    new-instance v2, Lcom/geinimi/d;

    invoke-direct {v2, p0}, Lcom/geinimi/d;-><init>(Lcom/geinimi/AdActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4e0d"

    new-instance v2, Lcom/geinimi/c;

    invoke-direct {v2, p0}, Lcom/geinimi/c;-><init>(Lcom/geinimi/AdActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/geinimi/b;

    invoke-direct {v1, p0}, Lcom/geinimi/b;-><init>(Lcom/geinimi/AdActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method
