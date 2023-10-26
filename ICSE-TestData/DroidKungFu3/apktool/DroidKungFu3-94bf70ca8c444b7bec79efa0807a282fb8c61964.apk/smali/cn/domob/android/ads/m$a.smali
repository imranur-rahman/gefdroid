.class final Lcn/domob/android/ads/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/m;


# direct methods
.method synthetic constructor <init>(Lcn/domob/android/ads/m;)V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/m$a;-><init>(Lcn/domob/android/ads/m;B)V

    return-void
.end method

.method private constructor <init>(Lcn/domob/android/ads/m;B)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcn/domob/android/ads/m$a;->a:Lcn/domob/android/ads/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    move v0, v4

    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/m$a;->a:Lcn/domob/android/ads/m;

    invoke-static {v0}, Lcn/domob/android/ads/m;->c(Lcn/domob/android/ads/m;)Lcn/domob/android/ads/DomobAdBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcn/domob/android/ads/m$a;->a:Lcn/domob/android/ads/m;

    invoke-static {v0}, Lcn/domob/android/ads/m;->a(Lcn/domob/android/ads/m;)Lcn/domob/android/ads/DomobAdView;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/m$a;->a:Lcn/domob/android/ads/m;

    invoke-static {v1}, Lcn/domob/android/ads/m;->c(Lcn/domob/android/ads/m;)Lcn/domob/android/ads/DomobAdBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/ads/DomobAdView;->setBuilder(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;)Lcn/domob/android/ads/DomobAdBuilder;

    .line 131
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 132
    const-wide/16 v1, 0x640

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 134
    iget-object v1, p0, Lcn/domob/android/ads/m$a;->a:Lcn/domob/android/ads/m;

    invoke-static {v1}, Lcn/domob/android/ads/m;->c(Lcn/domob/android/ads/m;)Lcn/domob/android/ads/DomobAdBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/DomobAdBuilder;->startAnimation(Landroid/view/animation/Animation;)V

    .line 135
    iget-object v0, p0, Lcn/domob/android/ads/m$a;->a:Lcn/domob/android/ads/m;

    invoke-static {v0}, Lcn/domob/android/ads/m;->a(Lcn/domob/android/ads/m;)Lcn/domob/android/ads/DomobAdView;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/m$a;->a:Lcn/domob/android/ads/m;

    invoke-static {v1}, Lcn/domob/android/ads/m;->d(Lcn/domob/android/ads/m;)Lcn/domob/android/ads/DomobAdBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdView;->removeView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcn/domob/android/ads/m$a;->a:Lcn/domob/android/ads/m;

    invoke-static {v0}, Lcn/domob/android/ads/m;->d(Lcn/domob/android/ads/m;)Lcn/domob/android/ads/DomobAdBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->c()V

    .line 140
    :goto_1
    return-void

    :cond_0
    move v1, v4

    .line 123
    :goto_2
    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v2, p0, Lcn/domob/android/ads/m$a;->a:Lcn/domob/android/ads/m;

    invoke-static {v2}, Lcn/domob/android/ads/m;->a(Lcn/domob/android/ads/m;)Lcn/domob/android/ads/DomobAdView;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/m$a;->a:Lcn/domob/android/ads/m;

    invoke-static {v3}, Lcn/domob/android/ads/m;->b(Lcn/domob/android/ads/m;)[[Landroid/widget/ImageView;

    move-result-object v3

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/DomobAdView;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v1, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReplaceBuilderThread error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
