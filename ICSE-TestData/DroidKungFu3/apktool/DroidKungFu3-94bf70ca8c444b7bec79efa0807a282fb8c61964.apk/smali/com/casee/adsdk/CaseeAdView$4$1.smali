.class Lcom/casee/adsdk/CaseeAdView$4$1;
.super Ljava/lang/Object;
.source "CaseeAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/casee/adsdk/CaseeAdView$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/casee/adsdk/CaseeAdView$4;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/CaseeAdView$4;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView$4$1;->this$1:Lcom/casee/adsdk/CaseeAdView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$4$1;->this$1:Lcom/casee/adsdk/CaseeAdView$4;

    iget-object v0, v0, Lcom/casee/adsdk/CaseeAdView$4;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$4$1;->this$1:Lcom/casee/adsdk/CaseeAdView$4;

    iget-object v0, v0, Lcom/casee/adsdk/CaseeAdView$4;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$4$1;->this$1:Lcom/casee/adsdk/CaseeAdView$4;

    iget-object v0, v0, Lcom/casee/adsdk/CaseeAdView$4;->this$0:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$4$1;->this$1:Lcom/casee/adsdk/CaseeAdView$4;

    iget-object v1, v1, Lcom/casee/adsdk/CaseeAdView$4;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    invoke-virtual {v0, v1}, Lcom/casee/adsdk/CaseeAdView;->removeView(Landroid/view/View;)V

    .line 518
    :cond_0
    return-void
.end method
