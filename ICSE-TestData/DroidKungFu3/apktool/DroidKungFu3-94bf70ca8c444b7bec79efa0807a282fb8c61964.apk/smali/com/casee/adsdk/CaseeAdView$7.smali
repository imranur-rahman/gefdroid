.class Lcom/casee/adsdk/CaseeAdView$7;
.super Ljava/lang/Object;
.source "CaseeAdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/casee/adsdk/CaseeAdView;->fadeOutScaleOldAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/casee/adsdk/CaseeAdView;

.field final synthetic val$avg:Lcom/casee/adsdk/AdViewGroup;

.field final synthetic val$i:I

.field final synthetic val$oldAvg:Lcom/casee/adsdk/AdViewGroup;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;I)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView$7;->this$0:Lcom/casee/adsdk/CaseeAdView;

    iput-object p2, p0, Lcom/casee/adsdk/CaseeAdView$7;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    iput-object p3, p0, Lcom/casee/adsdk/CaseeAdView$7;->val$avg:Lcom/casee/adsdk/AdViewGroup;

    iput p4, p0, Lcom/casee/adsdk/CaseeAdView$7;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 602
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$7;->this$0:Lcom/casee/adsdk/CaseeAdView;

    new-instance v1, Lcom/casee/adsdk/CaseeAdView$7$1;

    invoke-direct {v1, p0}, Lcom/casee/adsdk/CaseeAdView$7$1;-><init>(Lcom/casee/adsdk/CaseeAdView$7;)V

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->post(Ljava/lang/Runnable;)Z

    .line 611
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 612
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 600
    return-void
.end method
