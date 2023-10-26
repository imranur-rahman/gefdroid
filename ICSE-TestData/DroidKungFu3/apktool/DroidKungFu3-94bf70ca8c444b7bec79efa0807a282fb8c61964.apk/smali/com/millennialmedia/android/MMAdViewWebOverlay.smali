.class public Lcom/millennialmedia/android/MMAdViewWebOverlay;
.super Landroid/widget/FrameLayout;
.source "MMAdViewWebOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MillennialMediaSDK"

.field private static final kPadding:I = 0x0

.field private static final kTitleMarginX:I = 0x8

.field private static final kTitleMarginY:I = 0x9

.field private static final kTransitionDuration:I = 0xc8


# instance fields
.field private backButton:Landroid/widget/Button;

.field private cm:Landroid/net/ConnectivityManager;

.field private content:Landroid/widget/RelativeLayout;

.field private forwardButton:Landroid/widget/Button;

.field hClose:Landroid/os/Handler;

.field public overlayActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private overlayUrl:Ljava/lang/String;

.field private title:Landroid/widget/TextView;

.field protected webView:Landroid/webkit/WebView;

.field private webViewLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IJLjava/lang/String;ZLjava/lang/String;Z)V
    .locals 27
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "padding"    # I
    .param p3, "time"    # J
    .param p5, "transition"    # Ljava/lang/String;
    .param p6, "titlebar"    # Z
    .param p7, "titleText"    # Ljava/lang/String;
    .param p8, "navbar"    # Z

    .prologue
    .line 72
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 465
    new-instance v22, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$1;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->hClose:Landroid/os/Handler;

    .line 73
    new-instance v22, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 75
    const/16 v22, 0x3ad6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setId(I)V

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayActivityWeakReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 77
    .local v5, "activity":Landroid/app/Activity;
    if-nez v5, :cond_1

    .line 296
    .end local p1    # "context":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local p1    # "context":Landroid/app/Activity;
    :cond_1
    const v22, 0x1030010

    move-object v0, v5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 83
    const-string v22, "connectivity"

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "context":Landroid/app/Activity;
    check-cast p1, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->cm:Landroid/net/ConnectivityManager;

    .line 86
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setWillNotDraw(Z)V

    .line 89
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    .line 90
    .local v18, "scale":F
    const/high16 v22, 0x3d800000    # 0.0625f

    mul-float v22, v22, v18

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 91
    .local v19, "scaledPadding":Ljava/lang/Integer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->setPadding(IIII)V

    .line 95
    new-instance v22, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v24, -0x1

    const/16 v25, -0x1

    invoke-direct/range {v23 .. v25}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    if-eqz p6, :cond_2

    .line 106
    new-instance v20, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 107
    .local v20, "titleBar":Landroid/widget/RelativeLayout;
    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    const/high16 v22, -0x1000000

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 110
    new-instance v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/high16 v23, -0x1000000

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    const/16 v24, 0x9

    const/16 v25, 0x8

    const/16 v26, 0x9

    invoke-virtual/range {v22 .. v26}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    invoke-direct/range {v23 .. v25}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 126
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 127
    .local v8, "closeButton":Landroid/widget/Button;
    const/high16 v22, -0x1000000

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 128
    const-string v22, "Close"

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const/16 v22, -0x1

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 130
    new-instance v22, Lcom/millennialmedia/android/MMAdViewWebOverlay$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$2;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object v0, v13

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    .local v13, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0xb

    move-object v0, v13

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    move-object/from16 v0, v20

    move-object v1, v8

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 158
    .end local v8    # "closeButton":Landroid/widget/Button;
    .end local v13    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v20    # "titleBar":Landroid/widget/RelativeLayout;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayActivityWeakReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "activity":Landroid/app/Activity;
    check-cast v5, Landroid/app/Activity;

    .line 159
    .restart local v5    # "activity":Landroid/app/Activity;
    if-eqz v5, :cond_0

    .line 164
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webViewLayout:Landroid/widget/LinearLayout;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    invoke-direct/range {v23 .. v25}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v22, Landroid/webkit/WebView;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v22, v0

    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v24, -0x2

    const/16 v25, -0x2

    invoke-direct/range {v23 .. v25}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v22 .. v23}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v22, v0

    new-instance v23, Lcom/millennialmedia/android/OverlayWebViewClient;

    invoke-direct/range {v23 .. v23}, Lcom/millennialmedia/android/OverlayWebViewClient;-><init>()V

    invoke-virtual/range {v22 .. v23}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v22, v0

    new-instance v23, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$OverlayJSInterface;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    const-string v24, "interface"

    invoke-virtual/range {v22 .. v24}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v21

    .line 174
    .local v21, "webSettings":Landroid/webkit/WebSettings;
    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 175
    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 183
    if-eqz p8, :cond_3

    .line 185
    new-instance v14, Landroid/widget/RelativeLayout;

    invoke-direct {v14, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 187
    .local v14, "navBar":Landroid/widget/RelativeLayout;
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, 0x32

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 188
    .local v16, "navLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0xc

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    const v22, -0x333334

    move-object v0, v14

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 194
    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 195
    .local v15, "navCloseButton":Landroid/widget/Button;
    const/high16 v22, -0x1000000

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 196
    const v22, 0x1080038

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 200
    new-instance v22, Lcom/millennialmedia/android/MMAdViewWebOverlay$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$3;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object v0, v13

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    .restart local v13    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0xb

    move-object v0, v13

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 209
    const/16 v22, 0xf

    move-object v0, v13

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 210
    invoke-virtual {v14, v15, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    .line 216
    invoke-virtual {v5}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 219
    .local v6, "am":Landroid/content/res/AssetManager;
    :try_start_0
    const-string v22, "right_arrow.png"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 220
    .local v11, "is":Ljava/io/InputStream;
    const-string v22, "right_arrow.png"

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 221
    .local v17, "rightArrow":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v17    # "rightArrow":Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    new-instance v23, Lcom/millennialmedia/android/MMAdViewWebOverlay$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$4;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    new-instance v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    .line 241
    :try_start_1
    const-string v22, "left_arrow.png"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 242
    .restart local v11    # "is":Ljava/io/InputStream;
    const-string v22, "left_arrow.png"

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 243
    .local v12, "leftArrow":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "leftArrow":Landroid/graphics/drawable/Drawable;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    new-instance v23, Lcom/millennialmedia/android/MMAdViewWebOverlay$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay$5;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x961

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setId(I)V

    .line 277
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object v0, v7

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 279
    .local v7, "backLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0xf

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object v0, v14

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object v0, v10

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 284
    .local v10, "forwardLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Button;->getId()I

    move-result v23

    move-object v0, v10

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 285
    const/16 v22, 0xf

    move-object v0, v10

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object v0, v14

    move-object/from16 v1, v22

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .end local v6    # "am":Landroid/content/res/AssetManager;
    .end local v7    # "backLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v10    # "forwardLp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "navBar":Landroid/widget/RelativeLayout;
    .end local v15    # "navCloseButton":Landroid/widget/Button;
    .end local v16    # "navLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->addView(Landroid/view/View;)V

    .line 295
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-wide/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->animateView(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 223
    .restart local v6    # "am":Landroid/content/res/AssetManager;
    .restart local v13    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v14    # "navBar":Landroid/widget/RelativeLayout;
    .restart local v15    # "navCloseButton":Landroid/widget/Button;
    .restart local v16    # "navLp":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v22

    move-object/from16 v9, v22

    .line 224
    .local v9, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const v23, -0x333334

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const-string v23, ">>"

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->forwardButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/high16 v23, -0x1000000

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setTextColor(I)V

    .line 227
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 245
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v22

    move-object/from16 v9, v22

    .line 246
    .restart local v9    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const v23, -0x333334

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const-string v23, "<<"

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->backButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/high16 v23, -0x1000000

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setTextColor(I)V

    .line 249
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/millennialmedia/android/MMAdViewWebOverlay;Z)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->dismiss(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/millennialmedia/android/MMAdViewWebOverlay;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method private animateView(Ljava/lang/String;J)V
    .locals 11
    .param p1, "animation"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 335
    const-string v3, "toptobottom"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 338
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 339
    const/4 v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 337
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 342
    .local v0, "translateDown":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 343
    new-instance v3, Lcom/millennialmedia/android/MMAdViewWebOverlay$6;

    invoke-direct {v3, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$6;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 354
    const-string v3, "MillennialMediaSDK"

    const-string v4, "translate down"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    .line 402
    .end local v0    # "translateDown":Landroid/view/animation/TranslateAnimation;
    :goto_0
    return-void

    .line 357
    :cond_0
    const-string v3, "explode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .line 361
    const v2, 0x3f8ccccd    # 1.1f

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3f666666    # 0.9f

    .line 362
    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    .line 363
    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    .line 360
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 365
    .local v1, "scale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v1, p2, p3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 366
    new-instance v3, Lcom/millennialmedia/android/MMAdViewWebOverlay$7;

    invoke-direct {v3, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$7;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 376
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 383
    .end local v1    # "scale":Landroid/view/animation/ScaleAnimation;
    :cond_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 384
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 385
    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 383
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 388
    .local v2, "translateUp":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 389
    new-instance v3, Lcom/millennialmedia/android/MMAdViewWebOverlay$8;

    invoke-direct {v3, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$8;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 399
    const-string v3, "MillennialMediaSDK"

    const-string v4, "translate up"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private dismiss(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    .line 441
    const-string v2, "MillennialMediaSDK"

    const-string v3, "Ad overlay closed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 443
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 449
    :cond_0
    if-eqz p1, :cond_1

    .line 451
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 452
    .local v1, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 453
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 454
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 458
    .end local v1    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 326
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 327
    .local v0, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 329
    return-void
.end method


# virtual methods
.method public getOverlayActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/millennialmedia/android/MMAdViewWebOverlay;
    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public injectJS(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsString"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public loadWebContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->overlayUrl:Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Lcom/millennialmedia/android/MMAdViewWebOverlay$9;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$9;-><init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V

    .line 421
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdViewWebOverlay$9;->start()V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    const-string v0, "MillennialMediaSDK"

    const-string v1, "No network available, can\'t load overlay."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 310
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 312
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 314
    .local v0, "canvasClipBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 316
    .local v1, "grayRect":Landroid/graphics/Rect;
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 317
    invoke-direct {p0, p1, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 318
    return-void
.end method
