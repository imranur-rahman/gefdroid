.class Lcom/casee/adsdk/CaseeAdView$7$1;
.super Ljava/lang/Object;
.source "CaseeAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/casee/adsdk/CaseeAdView$7;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/casee/adsdk/CaseeAdView$7;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/CaseeAdView$7;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView$7$1;->this$1:Lcom/casee/adsdk/CaseeAdView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 604
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$7$1;->this$1:Lcom/casee/adsdk/CaseeAdView$7;

    iget-object v0, v0, Lcom/casee/adsdk/CaseeAdView$7;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$7$1;->this$1:Lcom/casee/adsdk/CaseeAdView$7;

    iget-object v0, v0, Lcom/casee/adsdk/CaseeAdView$7;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$7$1;->this$1:Lcom/casee/adsdk/CaseeAdView$7;

    iget-object v0, v0, Lcom/casee/adsdk/CaseeAdView$7;->this$0:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$7$1;->this$1:Lcom/casee/adsdk/CaseeAdView$7;

    iget-object v1, v1, Lcom/casee/adsdk/CaseeAdView$7;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->removeView(Landroid/view/View;)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$7$1;->this$1:Lcom/casee/adsdk/CaseeAdView$7;

    iget-object v0, v0, Lcom/casee/adsdk/CaseeAdView$7;->this$0:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$7$1;->this$1:Lcom/casee/adsdk/CaseeAdView$7;

    iget-object v1, v1, Lcom/casee/adsdk/CaseeAdView$7;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView$7$1;->this$1:Lcom/casee/adsdk/CaseeAdView$7;

    iget-object v2, v2, Lcom/casee/adsdk/CaseeAdView$7;->val$avg:Lcom/casee/adsdk/AdViewGroup;

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView$7$1;->this$1:Lcom/casee/adsdk/CaseeAdView$7;

    iget v3, v3, Lcom/casee/adsdk/CaseeAdView$7;->val$i:I

    # invokes: Lcom/casee/adsdk/CaseeAdView;->fadeInScaleNewAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/casee/adsdk/CaseeAdView;->access$400(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;I)V

    .line 609
    return-void
.end method
