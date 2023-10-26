.class public Lcn/domob/android/download/DownloadLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/download/DownloadLayout;->a:Z

    .line 17
    iput-object p1, p0, Lcn/domob/android/download/DownloadLayout;->f:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    const/high16 v4, -0x1000000

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 20
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/android/download/DownloadLayout;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/download/DownloadLayout;->b:Landroid/widget/LinearLayout;

    .line 21
    iget-object v0, p0, Lcn/domob/android/download/DownloadLayout;->b:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v0, p0, Lcn/domob/android/download/DownloadLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 24
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/android/download/DownloadLayout;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 28
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v2, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 32
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/domob/android/download/DownloadLayout;->f:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/domob/android/download/DownloadLayout;->c:Landroid/widget/TextView;

    .line 33
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->c:Landroid/widget/TextView;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 34
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->c:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 37
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->c:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 39
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/domob/android/download/DownloadLayout;->f:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/domob/android/download/DownloadLayout;->d:Landroid/widget/TextView;

    .line 40
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->d:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 41
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->d:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 44
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->d:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 45
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->d:Landroid/widget/TextView;

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d\u8bf7\u7a0d\u540e..."

    const-string v4, "italic"

    invoke-static {v4}, Landroid/widget/TextView$BufferType;->valueOf(Ljava/lang/String;)Landroid/widget/TextView$BufferType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 47
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcn/domob/android/download/DownloadLayout;->f:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/domob/android/download/DownloadLayout;->e:Landroid/widget/ProgressBar;

    .line 51
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->e:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v3, v7, v6}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v2, p0, Lcn/domob/android/download/DownloadLayout;->e:Landroid/widget/ProgressBar;

    const/16 v3, 0xf

    const/4 v4, 0x3

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    iget-object v1, p0, Lcn/domob/android/download/DownloadLayout;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    iget-object v1, p0, Lcn/domob/android/download/DownloadLayout;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    iput-boolean v8, p0, Lcn/domob/android/download/DownloadLayout;->a:Z

    .line 60
    return-void
.end method


# virtual methods
.method protected getDownloadDescription()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcn/domob/android/download/DownloadLayout;->a:Z

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcn/domob/android/download/DownloadLayout;->a()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcn/domob/android/download/DownloadLayout;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDownloadProgressBar(Landroid/content/Context;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcn/domob/android/download/DownloadLayout;->a:Z

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcn/domob/android/download/DownloadLayout;->a()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcn/domob/android/download/DownloadLayout;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected getDownloadTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcn/domob/android/download/DownloadLayout;->a:Z

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcn/domob/android/download/DownloadLayout;->a()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/domob/android/download/DownloadLayout;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getMainLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcn/domob/android/download/DownloadLayout;->a:Z

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcn/domob/android/download/DownloadLayout;->a()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcn/domob/android/download/DownloadLayout;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method
