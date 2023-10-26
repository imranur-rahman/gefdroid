.class Lcom/casee/adsdk/CaseeAdView$1;
.super Ljava/util/TimerTask;
.source "CaseeAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/casee/adsdk/CaseeAdView;->startShowAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/casee/adsdk/CaseeAdView;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/CaseeAdView;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/casee/adsdk/CaseeAdView$1;->this$0:Lcom/casee/adsdk/CaseeAdView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/casee/adsdk/CaseeAdView$1;->this$0:Lcom/casee/adsdk/CaseeAdView;

    # invokes: Lcom/casee/adsdk/CaseeAdView;->showAd()V
    invoke-static {v0}, Lcom/casee/adsdk/CaseeAdView;->access$000(Lcom/casee/adsdk/CaseeAdView;)V

    .line 239
    return-void
.end method
