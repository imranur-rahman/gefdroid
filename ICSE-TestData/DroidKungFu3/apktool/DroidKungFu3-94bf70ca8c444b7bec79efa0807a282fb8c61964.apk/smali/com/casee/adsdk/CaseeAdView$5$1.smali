.class Lcom/casee/adsdk/CaseeAdView$5$1;
.super Ljava/lang/Object;
.source "CaseeAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/casee/adsdk/CaseeAdView$5;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/casee/adsdk/CaseeAdView$5;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/CaseeAdView$5;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView$5$1;->this$1:Lcom/casee/adsdk/CaseeAdView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$5$1;->this$1:Lcom/casee/adsdk/CaseeAdView$5;

    iget-object v0, v0, Lcom/casee/adsdk/CaseeAdView$5;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$5$1;->this$1:Lcom/casee/adsdk/CaseeAdView$5;

    iget-object v0, v0, Lcom/casee/adsdk/CaseeAdView$5;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$5$1;->this$1:Lcom/casee/adsdk/CaseeAdView$5;

    iget-object v0, v0, Lcom/casee/adsdk/CaseeAdView$5;->this$0:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$5$1;->this$1:Lcom/casee/adsdk/CaseeAdView$5;

    iget-object v1, v1, Lcom/casee/adsdk/CaseeAdView$5;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->removeView(Landroid/view/View;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$5$1;->this$1:Lcom/casee/adsdk/CaseeAdView$5;

    iget-object v0, v0, Lcom/casee/adsdk/CaseeAdView$5;->this$0:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$5$1;->this$1:Lcom/casee/adsdk/CaseeAdView$5;

    iget-object v1, v1, Lcom/casee/adsdk/CaseeAdView$5;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView$5$1;->this$1:Lcom/casee/adsdk/CaseeAdView$5;

    iget-object v2, v2, Lcom/casee/adsdk/CaseeAdView$5;->val$avg:Lcom/casee/adsdk/AdViewGroup;

    # invokes: Lcom/casee/adsdk/CaseeAdView;->fadeIn3DFlipNewAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V
    invoke-static {v0, v1, v2}, Lcom/casee/adsdk/CaseeAdView;->access$300(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V

    .line 559
    return-void
.end method
