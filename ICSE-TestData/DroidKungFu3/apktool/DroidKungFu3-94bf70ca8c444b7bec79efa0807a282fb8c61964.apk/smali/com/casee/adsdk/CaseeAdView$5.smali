.class Lcom/casee/adsdk/CaseeAdView$5;
.super Ljava/lang/Object;
.source "CaseeAdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/casee/adsdk/CaseeAdView;->fadeOut3DFlipOldAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/casee/adsdk/CaseeAdView;

.field final synthetic val$avg:Lcom/casee/adsdk/AdViewGroup;

.field final synthetic val$oldAvg:Lcom/casee/adsdk/AdViewGroup;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView$5;->this$0:Lcom/casee/adsdk/CaseeAdView;

    iput-object p2, p0, Lcom/casee/adsdk/CaseeAdView$5;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    iput-object p3, p0, Lcom/casee/adsdk/CaseeAdView$5;->val$avg:Lcom/casee/adsdk/AdViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$5;->this$0:Lcom/casee/adsdk/CaseeAdView;

    new-instance v1, Lcom/casee/adsdk/CaseeAdView$5$1;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/CaseeAdView$5$1;-><init>(Lcom/casee/adsdk/CaseeAdView$5;)V

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->post(Ljava/lang/Runnable;)Z

    .line 561
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 563
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 550
    return-void
.end method
