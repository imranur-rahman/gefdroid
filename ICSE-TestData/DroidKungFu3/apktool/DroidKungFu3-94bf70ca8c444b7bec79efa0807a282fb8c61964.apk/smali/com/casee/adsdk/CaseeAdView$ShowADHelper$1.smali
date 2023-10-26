.class Lcom/casee/adsdk/CaseeAdView$ShowADHelper$1;
.super Ljava/lang/Object;
.source "CaseeAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/casee/adsdk/CaseeAdView$ShowADHelper;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/CaseeAdView$ShowADHelper;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper$1;->this$1:Lcom/casee/adsdk/CaseeAdView$ShowADHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 674
    new-instance v0, Lcom/casee/adsdk/AdViewGroup;

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper$1;->this$1:Lcom/casee/adsdk/CaseeAdView$ShowADHelper;

    iget-object v3, v3, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    invoke-virtual {v3}, Lcom/casee/adsdk/CaseeAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper$1;->this$1:Lcom/casee/adsdk/CaseeAdView$ShowADHelper;

    iget-object v4, v4, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->ad:Lcom/casee/adsdk/Ad;
    invoke-static {v4}, Lcom/casee/adsdk/CaseeAdView;->access$500(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/Ad;

    move-result-object v4

    iget-object v5, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper$1;->this$1:Lcom/casee/adsdk/CaseeAdView$ShowADHelper;

    iget-object v5, v5, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    invoke-direct {v0, v3, v4, v5}, Lcom/casee/adsdk/AdViewGroup;-><init>(Landroid/content/Context;Lcom/casee/adsdk/Ad;Lcom/casee/adsdk/CaseeAdView;)V

    .line 675
    .local v0, "avg":Lcom/casee/adsdk/AdViewGroup;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/casee/adsdk/AdViewGroup;->setVisibility(I)V

    .line 676
    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper$1;->this$1:Lcom/casee/adsdk/CaseeAdView$ShowADHelper;

    iget-object v3, v3, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->avg:Lcom/casee/adsdk/AdViewGroup;
    invoke-static {v3}, Lcom/casee/adsdk/CaseeAdView;->access$900(Lcom/casee/adsdk/CaseeAdView;)Lcom/casee/adsdk/AdViewGroup;

    move-result-object v1

    .line 677
    .local v1, "oldAvg":Lcom/casee/adsdk/AdViewGroup;
    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper$1;->this$1:Lcom/casee/adsdk/CaseeAdView$ShowADHelper;

    iget-object v3, v3, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # setter for: Lcom/casee/adsdk/CaseeAdView;->avg:Lcom/casee/adsdk/AdViewGroup;
    invoke-static {v3, v0}, Lcom/casee/adsdk/CaseeAdView;->access$902(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;)Lcom/casee/adsdk/AdViewGroup;

    .line 678
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper$1;->this$1:Lcom/casee/adsdk/CaseeAdView$ShowADHelper;

    iget-object v3, v3, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->adViewWidth:I
    invoke-static {v3}, Lcom/casee/adsdk/CaseeAdView;->access$1000(Lcom/casee/adsdk/CaseeAdView;)I

    move-result v3

    iget-object v4, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper$1;->this$1:Lcom/casee/adsdk/CaseeAdView$ShowADHelper;

    iget-object v4, v4, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # getter for: Lcom/casee/adsdk/CaseeAdView;->adViewHeight:I
    invoke-static {v4}, Lcom/casee/adsdk/CaseeAdView;->access$1100(Lcom/casee/adsdk/CaseeAdView;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 679
    .local v2, "p":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 680
    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper$1;->this$1:Lcom/casee/adsdk/CaseeAdView$ShowADHelper;

    iget-object v3, v3, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    invoke-virtual {v3, v0, v2}, Lcom/casee/adsdk/CaseeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    iget-object v3, p0, Lcom/casee/adsdk/CaseeAdView$ShowADHelper$1;->this$1:Lcom/casee/adsdk/CaseeAdView$ShowADHelper;

    iget-object v3, v3, Lcom/casee/adsdk/CaseeAdView$ShowADHelper;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # invokes: Lcom/casee/adsdk/CaseeAdView;->swapAd(Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V
    invoke-static {v3, v1, v0}, Lcom/casee/adsdk/CaseeAdView;->access$1200(Lcom/casee/adsdk/CaseeAdView;Lcom/casee/adsdk/AdViewGroup;Lcom/casee/adsdk/AdViewGroup;)V

    .line 682
    return-void
.end method
