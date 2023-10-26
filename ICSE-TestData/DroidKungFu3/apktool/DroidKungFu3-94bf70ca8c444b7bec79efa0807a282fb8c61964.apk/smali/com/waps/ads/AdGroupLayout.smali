.class public Lcom/waps/ads/AdGroupLayout;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field private static r:Landroid/app/Activity;

.field private static s:I


# instance fields
.field public a:Ljava/lang/ref/WeakReference;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public d:Lcom/waps/ads/b/b;

.field public e:Lcom/waps/ads/b/a;

.field public f:Ljava/lang/ref/WeakReference;

.field public g:Lcom/waps/ads/b/c;

.field public h:Lcom/waps/ads/b/c;

.field public i:Lcom/waps/ads/a;

.field public j:Lcom/waps/ads/AdGroupManager;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Ljava/lang/String;

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v1, ""

    const-string v0, ""

    sput-object v1, Lcom/waps/ads/AdGroupLayout;->k:Ljava/lang/String;

    const-string v0, ""

    sput-object v1, Lcom/waps/ads/AdGroupLayout;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/waps/ads/AdGroupLayout;->getAdGroupKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/waps/ads/AdGroupLayout;->init(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object p1, Lcom/waps/ads/AdGroupLayout;->r:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/waps/ads/AdGroupLayout;->init(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/waps/ads/AdGroupLayout;->getAdGroupKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/waps/ads/AdGroupLayout;->init(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object p1, Lcom/waps/ads/AdGroupLayout;->r:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v0, ""

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/waps/ads/AdGroupLayout;->getAdGroupKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1, v0}, Lcom/waps/ads/AdGroupLayout;->init(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/waps/ads/AdGroupLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/waps/ads/AdGroupLayout;->n:Z

    return v0
.end method

.method static synthetic access$102(Lcom/waps/ads/AdGroupLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/waps/ads/AdGroupLayout;->o:Z

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/waps/ads/AdGroupLayout;->s:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0

    sput p0, Lcom/waps/ads/AdGroupLayout;->s:I

    return p0
.end method

.method static synthetic access$300(Lcom/waps/ads/AdGroupLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/waps/ads/AdGroupLayout;->rotateAd()V

    return-void
.end method

.method static synthetic access$400(Lcom/waps/ads/AdGroupLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/waps/ads/AdGroupLayout;->handleAd()V

    return-void
.end method

.method static synthetic access$500()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/waps/ads/AdGroupLayout;->r:Landroid/app/Activity;

    return-object v0
.end method

.method private countClick()V
    .locals 6

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->g:Lcom/waps/ads/b/c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/ads/AdGroupLayout;->g:Lcom/waps/ads/b/c;

    iget-object v1, v1, Lcom/waps/ads/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/waps/AppConnect;

    invoke-direct {v2}, Lcom/waps/AppConnect;-><init>()V

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/waps/AppConnect;->getParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&ad_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/ads/AdGroupLayout;->g:Lcom/waps/ads/b/c;

    iget v2, v2, Lcom/waps/ads/b/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/waps/ads/AdGroupLayout;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://ads.waps.cn/action/adgroup/ad_click?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/ads/AdGroupLayout;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/waps/ads/d;

    invoke-direct {v2, v0}, Lcom/waps/ads/d;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const-string v1, "AdGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private countImpression()V
    .locals 5

    const-string v3, "AdGroup"

    const-string v0, "AdGroup"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activeRation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/ads/AdGroupLayout;->g:Lcom/waps/ads/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->g:Lcom/waps/ads/b/c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/ads/AdGroupLayout;->g:Lcom/waps/ads/b/c;

    iget-object v1, v1, Lcom/waps/ads/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/waps/AppConnect;

    invoke-direct {v2}, Lcom/waps/AppConnect;-><init>()V

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/waps/AppConnect;->getParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&ad_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/ads/AdGroupLayout;->g:Lcom/waps/ads/b/c;

    iget v2, v2, Lcom/waps/ads/b/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/waps/ads/AdGroupLayout;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://ads.waps.cn/action/adgroup/ad_impression?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/ads/AdGroupLayout;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countImpression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/waps/ads/AdGroupLayout;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/waps/ads/d;

    invoke-direct {v2, v0}, Lcom/waps/ads/d;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private handleAd()V
    .locals 5

    const-string v4, "AdGroup_SDK"

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->h:Lcom/waps/ads/b/c;

    if-nez v0, :cond_0

    const-string v0, "AdGroup_SDK"

    const-string v0, "nextRation is null!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedDelayed()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Showing ad:\n\tnid: %s\n\tname: %s\n\ttype: %d\n\tkey: %s\n\tkey2: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/waps/ads/AdGroupLayout;->h:Lcom/waps/ads/b/c;

    iget-object v3, v3, Lcom/waps/ads/b/c;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/waps/ads/AdGroupLayout;->h:Lcom/waps/ads/b/c;

    iget-object v3, v3, Lcom/waps/ads/b/c;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/waps/ads/AdGroupLayout;->h:Lcom/waps/ads/b/c;

    iget v3, v3, Lcom/waps/ads/b/c;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/waps/ads/AdGroupLayout;->h:Lcom/waps/ads/b/c;

    iget-object v3, v3, Lcom/waps/ads/b/c;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/waps/ads/AdGroupLayout;->h:Lcom/waps/ads/b/c;

    iget-object v3, v3, Lcom/waps/ads/b/c;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdGroup_SDK"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->h:Lcom/waps/ads/b/c;

    invoke-static {p0, v0}, Lcom/waps/ads/a/a;->handle(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdGroup_SDK"

    const-string v1, "Caught an exception in adapter:"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->rollover()V

    goto :goto_0
.end method

.method private rotateAd()V
    .locals 2

    iget-boolean v0, p0, Lcom/waps/ads/AdGroupLayout;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waps/ads/AdGroupLayout;->o:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "AdGroup_SDK"

    const-string v1, "Rotating Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupManager;->getRation()Lcom/waps/ads/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->h:Lcom/waps/ads/b/c;

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    new-instance v1, Lcom/waps/ads/b;

    invoke-direct {v1, p0}, Lcom/waps/ads/b;-><init>(Lcom/waps/ads/AdGroupLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getAdGroupKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "WAPS_ID"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x80

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v0, "WAPS_ID"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    :try_start_1
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "WAPS_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v0, v4

    goto :goto_0
.end method

.method protected init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->f:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/waps/ads/AdGroupLayout;->m:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/waps/ads/AdGroupLayout;->n:Z

    iput-boolean v1, p0, Lcom/waps/ads/AdGroupLayout;->o:Z

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/waps/ads/c;

    invoke-direct {v1, p0, p2}, Lcom/waps/ads/c;-><init>(Lcom/waps/ads/AdGroupLayout;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {p0, v5}, Lcom/waps/ads/AdGroupLayout;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/waps/ads/AdGroupLayout;->setVerticalScrollBarEnabled(Z)V

    iput v5, p0, Lcom/waps/ads/AdGroupLayout;->p:I

    iput v5, p0, Lcom/waps/ads/AdGroupLayout;->t:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x0

    const-string v4, "AdGroup_SDK"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v3

    :goto_1
    return v0

    :pswitch_0
    const-string v0, "AdGroup_SDK"

    const-string v0, "Intercepted ACTION_DOWN event"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->g:Lcom/waps/ads/b/c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/waps/ads/AdGroupLayout;->countClick()V

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->g:Lcom/waps/ads/b/c;

    iget v0, v0, Lcom/waps/ads/b/c;->b:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->e:Lcom/waps/ads/b/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->e:Lcom/waps/ads/b/a;

    iget-object v0, v0, Lcom/waps/ads/b/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/waps/ads/AdGroupLayout;->e:Lcom/waps/ads/b/a;

    iget-object v2, v2, Lcom/waps/ads/b/a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdGroup_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not handle click to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/ads/AdGroupLayout;->e:Lcom/waps/ads/b/a;

    iget-object v2, v2, Lcom/waps/ads/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const-string v0, "AdGroup_SDK"

    const-string v0, "In onInterceptTouchEvent(), but custom or custom.link is null"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, -0x80000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/waps/ads/AdGroupLayout;->p:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/waps/ads/AdGroupLayout;->p:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/waps/ads/AdGroupLayout;->p:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/waps/ads/AdGroupLayout;->t:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/waps/ads/AdGroupLayout;->t:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/waps/ads/AdGroupLayout;->t:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_1
    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void

    :cond_0
    move v1, p2

    goto :goto_1

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5

    const/4 v1, 0x1

    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcom/waps/ads/AdGroupLayout;->n:Z

    iget-boolean v0, p0, Lcom/waps/ads/AdGroupLayout;->o:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/waps/ads/AdGroupLayout;->o:Z

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->rotateThreadedNow()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/waps/ads/c;

    iget-object v2, p0, Lcom/waps/ads/AdGroupLayout;->m:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/waps/ads/c;-><init>(Lcom/waps/ads/AdGroupLayout;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waps/ads/AdGroupLayout;->n:Z

    goto :goto_0
.end method

.method public pushSubView(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "AdGroup_SDK"

    const-string v1, "Added subview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->h:Lcom/waps/ads/b/c;

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->g:Lcom/waps/ads/b/c;

    invoke-direct {p0}, Lcom/waps/ads/AdGroupLayout;->countImpression()V

    goto :goto_0
.end method

.method public rollover()V
    .locals 2

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->j:Lcom/waps/ads/AdGroupManager;

    invoke-virtual {v0}, Lcom/waps/ads/AdGroupManager;->getRollover()Lcom/waps/ads/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->h:Lcom/waps/ads/b/c;

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->b:Landroid/os/Handler;

    new-instance v1, Lcom/waps/ads/b;

    invoke-direct {v1, p0}, Lcom/waps/ads/b;-><init>(Lcom/waps/ads/AdGroupLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public rotateThreadedDelayed()V
    .locals 5

    const-string v0, "AdGroup_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Will call rotateAd() in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v2, v2, Lcom/waps/ads/b/b;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/waps/ads/e;

    invoke-direct {v1, p0}, Lcom/waps/ads/e;-><init>(Lcom/waps/ads/AdGroupLayout;)V

    iget-object v2, p0, Lcom/waps/ads/AdGroupLayout;->d:Lcom/waps/ads/b/b;

    iget v2, v2, Lcom/waps/ads/b/b;->i:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public rotateThreadedNow()V
    .locals 5

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/waps/ads/e;

    invoke-direct {v1, p0}, Lcom/waps/ads/e;-><init>(Lcom/waps/ads/AdGroupLayout;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public setAdGroupInterface(Lcom/waps/ads/a;)V
    .locals 0

    iput-object p1, p0, Lcom/waps/ads/AdGroupLayout;->i:Lcom/waps/ads/a;

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Lcom/waps/ads/AdGroupLayout;->t:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/waps/ads/AdGroupLayout;->p:I

    return-void
.end method

.method public updateResultsInUi(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v2, v2

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-double v4, v1

    div-double v1, v2, v4

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/waps/ads/AdGroupLayout;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v4, :cond_1

    if-le v3, v4, :cond_1

    move v3, v4

    :cond_1
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-double v5, v3

    div-double v1, v5, v1

    double-to-int v1, v1

    invoke-direct {v4, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, p1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "AdGroup_SDK"

    const-string v1, "update image view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/waps/ads/AdGroupLayout;->h:Lcom/waps/ads/b/c;

    iput-object v0, p0, Lcom/waps/ads/AdGroupLayout;->g:Lcom/waps/ads/b/c;

    invoke-direct {p0}, Lcom/waps/ads/AdGroupLayout;->countImpression()V

    goto :goto_0
.end method
