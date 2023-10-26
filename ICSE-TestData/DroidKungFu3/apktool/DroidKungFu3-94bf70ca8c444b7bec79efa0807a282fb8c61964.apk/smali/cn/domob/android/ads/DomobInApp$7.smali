.class final Lcn/domob/android/ads/DomobInApp$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobInApp;->a()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/DomobInApp;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobInApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/ads/DomobInApp$7;->a:Lcn/domob/android/ads/DomobInApp;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 662
    iget-object v0, p0, Lcn/domob/android/ads/DomobInApp$7;->a:Lcn/domob/android/ads/DomobInApp;

    invoke-static {v0}, Lcn/domob/android/ads/DomobInApp;->h(Lcn/domob/android/ads/DomobInApp;)V

    .line 663
    new-instance v0, Lcn/domob/android/ads/DomobInApp$a;

    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp$7;->a:Lcn/domob/android/ads/DomobInApp;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/DomobInApp$a;-><init>(Lcn/domob/android/ads/DomobInApp;)V

    .line 664
    iget-object v1, p0, Lcn/domob/android/ads/DomobInApp$7;->a:Lcn/domob/android/ads/DomobInApp;

    invoke-static {v1}, Lcn/domob/android/ads/DomobInApp;->i(Lcn/domob/android/ads/DomobInApp;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 665
    return-void
.end method
