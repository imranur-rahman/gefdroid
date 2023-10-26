.class Lcom/casee/adsdk/CaseeAdView$2$1;
.super Ljava/lang/Object;
.source "CaseeAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/casee/adsdk/CaseeAdView$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/casee/adsdk/CaseeAdView$2;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/CaseeAdView$2;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView$2$1;->this$1:Lcom/casee/adsdk/CaseeAdView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$2$1;->this$1:Lcom/casee/adsdk/CaseeAdView$2;

    iget-object v0, v0, Lcom/casee/adsdk/CaseeAdView$2;->this$0:Lcom/casee/adsdk/CaseeAdView;

    iget-object v1, p0, Lcom/casee/adsdk/CaseeAdView$2$1;->this$1:Lcom/casee/adsdk/CaseeAdView$2;

    iget-object v1, v1, Lcom/casee/adsdk/CaseeAdView$2;->val$oldAvg:Lcom/casee/adsdk/AdViewGroup;

    iget-object v2, p0, Lcom/casee/adsdk/CaseeAdView$2$1;->this$1:Lcom/casee/adsdk/CaseeAdView$2;

    iget-object v2, v2, Lcom/casee/adsdk/CaseeAdView$2;->val$avg:Lcom/casee/adsdk/AdViewGroup;

    # invokes: Lcom/casee/adsdk/CaseeAdView;->fadeInNewAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V
    invoke-static {v0, v1, v2}, Lcom/casee/adsdk/CaseeAdView;->access$100(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V

    .line 451
    return-void
.end method
