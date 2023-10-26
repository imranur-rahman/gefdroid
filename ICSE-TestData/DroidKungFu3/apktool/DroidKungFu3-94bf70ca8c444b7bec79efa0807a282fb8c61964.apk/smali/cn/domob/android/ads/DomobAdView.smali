.class public Lcn/domob/android/ads/DomobAdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobAdView$a;,
        Lcn/domob/android/ads/DomobAdView$b;,
        Lcn/domob/android/ads/DomobAdView$c;,
        Lcn/domob/android/ads/DomobAdView$d;,
        Lcn/domob/android/ads/DomobAdView$e;
    }
.end annotation


# static fields
.field public static final ANIMATION_ALPHA:I = 0x3

.field public static final ANIMATION_FRAGMENT:I = 0x9

.field public static final ANIMATION_ROTATE:I = 0x1

.field public static final ANIMATION_SCALE_FROM_MIDDLE:I = 0x5

.field public static final ANIMATION_TRANSLATE:I = 0x7

.field static final a:Landroid/os/Handler;

.field private static b:Ljava/lang/Boolean;


# instance fields
.field private A:Lcn/domob/android/ads/f;

.field private B:Lcn/domob/android/ads/DomobAdView$c;

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private c:Lcn/domob/android/ads/DomobAdBuilder;

.field private d:Ljava/lang/String;

.field private e:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

.field private f:I

.field private g:I

.field private h:J

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Lcn/domob/android/ads/DomobAdListener;

.field private m:Lcn/domob/android/ads/e;

.field protected mNoAd:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:J

.field private s:J

.field private t:I

.field private u:Z

.field private v:Landroid/content/Context;

.field private w:Z

.field private x:Z

.field private y:Lcn/domob/android/ads/c;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/ads/DomobAdView;->b:Ljava/lang/Boolean;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcn/domob/android/ads/DomobAdView;->a:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;ZLcn/domob/android/ads/c;Lcn/domob/android/ads/f;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dataMode"    # Z
    .param p3, "adData"    # Lcn/domob/android/ads/c;
    .param p4, "dataSetting"    # Lcn/domob/android/ads/f;

    .prologue
    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    iput-boolean p2, p0, Lcn/domob/android/ads/DomobAdView;->z:Z

    .line 109
    iput-object p3, p0, Lcn/domob/android/ads/DomobAdView;->y:Lcn/domob/android/ads/c;

    .line 110
    iput-object p4, p0, Lcn/domob/android/ads/DomobAdView;->A:Lcn/domob/android/ads/f;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeset"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeset"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "DomobSDK"

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const-wide/32 v0, -0x1000000

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->i:J

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->j:J

    .line 51
    iput-boolean v4, p0, Lcn/domob/android/ads/DomobAdView;->mNoAd:Z

    .line 60
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->w:Z

    .line 61
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->x:Z

    .line 63
    new-instance v0, Lcn/domob/android/ads/c;

    invoke-direct {v0}, Lcn/domob/android/ads/c;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->y:Lcn/domob/android/ads/c;

    .line 65
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->z:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->C:Ljava/util/ArrayList;

    .line 328
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->D:Z

    .line 126
    const-string v0, "DomobSDK"

    const-string v0, "current version is 20110607"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "DomobSDK"

    const-string v0, "DomobAdView!"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->setDescendantFocusability(I)V

    .line 133
    invoke-virtual {p0, v4}, Lcn/domob/android/ads/DomobAdView;->setClickable(Z)V

    .line 134
    invoke-virtual {p0, v3}, Lcn/domob/android/ads/DomobAdView;->setLongClickable(Z)V

    .line 135
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->setGravity(I)V

    .line 137
    const/16 v0, 0x4e20

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->f:I

    .line 142
    if-eqz p2, :cond_3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v1, "backgroundColor"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 147
    if-eq v1, v2, :cond_1

    .line 148
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DomobAdView;->setBackgroundColor(I)V

    .line 150
    :cond_1
    const-string v1, "primaryTextColor"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 151
    if-eq v1, v2, :cond_2

    .line 152
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DomobAdView;->setPrimaryTextColor(I)V

    .line 154
    :cond_2
    const-string v1, "keywords"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/DomobAdView;->d:Ljava/lang/String;

    .line 155
    const-string v1, "spots"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/DomobAdView;->k:Ljava/lang/String;

    .line 157
    const-string v1, "refreshInterval"

    const/16 v2, 0x14

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 158
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->setDefaultInterval(I)V

    .line 168
    :cond_3
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    .line 172
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 173
    invoke-static {p1}, Lcn/domob/android/ads/DomobAdView;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/DomobAdView;->b:Ljava/lang/Boolean;

    .line 176
    :cond_4
    invoke-virtual {p0, p1}, Lcn/domob/android/ads/DomobAdView;->initByConf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 177
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    .line 178
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->r:J

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->s:J

    .line 180
    invoke-virtual {p0, v4}, Lcn/domob/android/ads/DomobAdView;->setRequestInterval(I)V

    .line 183
    :cond_5
    iput-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->n:Z

    .line 184
    iput-boolean v4, p0, Lcn/domob/android/ads/DomobAdView;->p:Z

    .line 185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->h:J

    .line 186
    iput-boolean v4, p0, Lcn/domob/android/ads/DomobAdView;->u:Z

    .line 187
    iput v3, p0, Lcn/domob/android/ads/DomobAdView;->t:I

    .line 189
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    if-eqz v0, :cond_8

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 192
    const-string v2, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 193
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mDisabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | mDisabledTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcn/domob/android/ads/DomobAdView;->r:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | mDisabledTimestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcn/domob/android/ads/DomobAdView;->s:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "curr timestamp = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_6
    iget-wide v2, p0, Lcn/domob/android/ads/DomobAdView;->s:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcn/domob/android/ads/DomobAdView;->r:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    .line 198
    const-string v0, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 199
    const-string v0, "DomobSDK"

    const-string v0, "send detector because ad is disabled."

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_7
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->sendDetector()V

    .line 204
    :cond_8
    return-void
.end method

.method private static a(I)I
    .locals 2

    .prologue
    const/16 v1, 0x258

    const/16 v0, 0x14

    .line 459
    if-ge p0, v0, :cond_0

    .line 464
    :goto_0
    return v0

    .line 461
    :cond_0
    if-le p0, v1, :cond_1

    move v0, v1

    .line 462
    goto :goto_0

    :cond_1
    move v0, p0

    .line 464
    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const-string v2, "DomobSDK"

    .line 371
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->isTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->isTestAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    :cond_0
    const-string v0, "DomobSDK"

    const-string v0, "AD has been disabled on web server, ignore doRefresh()"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->mNoAd:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    const-string v0, "DomobSDK"

    const-string v0, "Cannot doRefresh() when the DomobAdView is not visible. Call DomobAdView.setVisibility(View.VISIBLE) first."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :cond_2
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->n:Z

    if-eqz v0, :cond_3

    .line 387
    const-string v0, "DomobSDK"

    const-string v0, "Ignoring doRefresh() because we are requesting an ad right now already."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->n:Z

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->h:J

    .line 393
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->p:Z

    if-eqz v0, :cond_5

    .line 394
    const-string v0, "DomobSDK"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 395
    const-string v0, "DomobSDK"

    const-string v0, "send detector!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_4
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->sendDetector()V

    goto :goto_0

    .line 399
    :cond_5
    const-string v0, "DomobSDK"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 400
    const-string v0, "DomobSDK"

    const-string v0, "doRefresh now!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_6
    new-instance v0, Lcn/domob/android/ads/h;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/h;-><init>(Lcn/domob/android/ads/DomobAdView;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->start()V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const-string v0, "DomobSDK"

    .line 469
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->z:Z

    if-eqz v0, :cond_0

    .line 472
    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    .line 473
    :try_start_0
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "schedule for a fresh ad?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check WindowsVisibility:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/domob/android/ads/DomobAdView;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check WindowsFocus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/domob/android/ads/DomobAdView;->u:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getVisibility:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mInterval:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_1
    const/4 v0, 0x0

    .line 482
    iget v1, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    if-gtz v1, :cond_2

    iget v1, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->mNoAd:Z

    if-eqz v1, :cond_3

    .line 483
    :cond_2
    const/4 v0, 0x1

    .line 486
    :cond_3
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 487
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 488
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->t:I

    if-nez v0, :cond_6

    .line 489
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->u:Z

    if-eqz v0, :cond_6

    .line 490
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->b()V

    .line 492
    new-instance v0, Lcn/domob/android/ads/DomobAdView$c;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/DomobAdView$c;-><init>(Lcn/domob/android/ads/DomobAdView;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->B:Lcn/domob/android/ads/DomobAdView$c;

    .line 493
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    if-nez v0, :cond_5

    .line 494
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->B:Lcn/domob/android/ads/DomobAdView$c;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 498
    :goto_1
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 499
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad refresh scheduled for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from now."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_4
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 496
    :cond_5
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->B:Lcn/domob/android/ads/DomobAdView$c;

    iget v2, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 502
    :cond_6
    if-eqz p1, :cond_7

    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    if-nez v0, :cond_4

    .line 503
    :cond_7
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 504
    const-string v0, "DomobSDK"

    const-string v1, "just cancel the previous request!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_8
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 800
    :try_start_0
    const-string v0, "org.json.JSONException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 805
    :goto_0
    return v0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 805
    :cond_0
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobAdView;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    return v0
.end method

.method static synthetic b(Lcn/domob/android/ads/DomobAdView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 513
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->B:Lcn/domob/android/ads/DomobAdView$c;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->B:Lcn/domob/android/ads/DomobAdView$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/domob/android/ads/DomobAdView$c;->a:Z

    .line 516
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->B:Lcn/domob/android/ads/DomobAdView$c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->B:Lcn/domob/android/ads/DomobAdView$c;

    .line 519
    :cond_0
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    const-string v0, "DomobSDK"

    const-string v0, "Cancelled an ad refresh scheduled."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_1
    return-void
.end method

.method static synthetic c(Lcn/domob/android/ads/DomobAdView;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->t:I

    return v0
.end method

.method static synthetic d(Lcn/domob/android/ads/DomobAdView;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->u:Z

    return v0
.end method

.method static synthetic e(Lcn/domob/android/ads/DomobAdView;)Lcn/domob/android/ads/DomobAdBuilder;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    return-object v0
.end method

.method protected static failedToReceive(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 873
    if-nez p0, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->l:Lcn/domob/android/ads/DomobAdListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/domob/android/ads/DomobAdView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 878
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->a:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/ads/DomobAdView$b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/DomobAdView$b;-><init>(Lcn/domob/android/ads/DomobAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected static failedToReceiveAdData(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/c;)V
    .locals 1
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 1154
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->m:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->m:Lcn/domob/android/ads/e;

    .line 1157
    :cond_0
    return-void
.end method

.method protected static getBuilder(Lcn/domob/android/ads/DomobAdView;)Lcn/domob/android/ads/DomobAdBuilder;
    .locals 1
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 817
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    return-object v0
.end method

.method protected static getKeywords(Lcn/domob/android/ads/DomobAdView;)Ljava/lang/String;
    .locals 2
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 825
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 826
    const-string v0, "DomobSDK"

    const-string v1, "The length of keywords cannot exceed 200!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v0, 0x0

    .line 829
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static getListener(Lcn/domob/android/ads/DomobAdView;)Lcn/domob/android/ads/DomobAdListener;
    .locals 1
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 821
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->l:Lcn/domob/android/ads/DomobAdListener;

    return-object v0
.end method

.method protected static getReceiver(Lcn/domob/android/ads/DomobAdView;)Lcn/domob/android/ads/DomobAdEngine$RecvHandler;
    .locals 1
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 861
    if-nez p0, :cond_0

    .line 862
    const/4 v0, 0x0

    .line 869
    :goto_0
    return-object v0

    .line 865
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    if-nez v0, :cond_1

    .line 866
    new-instance v0, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;-><init>(Lcn/domob/android/ads/DomobAdView;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    .line 869
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Lcn/domob/android/ads/DomobAdEngine$RecvHandler;

    goto :goto_0
.end method

.method protected static getRequestInterval(Lcn/domob/android/ads/DomobAdView;)I
    .locals 1
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 813
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    return v0
.end method

.method protected static getRequestTimestamp(Lcn/domob/android/ads/DomobAdView;)J
    .locals 2
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 853
    if-eqz p0, :cond_0

    .line 854
    iget-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->h:J

    .line 856
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected static getSpots(Lcn/domob/android/ads/DomobAdView;)Ljava/lang/String;
    .locals 2
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 833
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 834
    const-string v0, "DomobSDK"

    const-string v1, "The length of spots cannot exceed 200!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v0, 0x0

    .line 837
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static receiveAd(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdEngine;)V
    .locals 3
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 903
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->l:Lcn/domob/android/ads/DomobAdListener;

    if-eqz v0, :cond_0

    .line 905
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->l:Lcn/domob/android/ads/DomobAdListener;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/DomobAdListener;->onReceivedFreshAd(Lcn/domob/android/ads/DomobAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 908
    const-string v1, "DomobSDK"

    const-string v2, "Unhandled exception raised in onReceivedFreshAd."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static receiveAdData(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/c;)V
    .locals 1
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 1160
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->m:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->m:Lcn/domob/android/ads/e;

    .line 1162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->mNoAd:Z

    .line 1164
    :cond_0
    return-void
.end method

.method protected static requestFreshAd(Lcn/domob/android/ads/DomobAdView;)V
    .locals 1
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 357
    if-eqz p0, :cond_0

    .line 359
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->D:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->p:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->mNoAd:Z

    if-nez v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->a()V

    goto :goto_0
.end method

.method protected static setBuilder(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;)Lcn/domob/android/ads/DomobAdBuilder;
    .locals 0
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;
    .param p1, "builder"    # Lcn/domob/android/ads/DomobAdBuilder;

    .prologue
    .line 809
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    return-object p1
.end method

.method protected static setNeedDetect(Lcn/domob/android/ads/DomobAdView;Z)V
    .locals 0
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;
    .param p1, "flag"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcn/domob/android/ads/DomobAdView;->p:Z

    .line 320
    return-void
.end method

.method protected static setRequesting(Lcn/domob/android/ads/DomobAdView;Z)V
    .locals 0
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;
    .param p1, "flag"    # Z

    .prologue
    .line 841
    if-eqz p0, :cond_0

    .line 842
    iput-boolean p1, p0, Lcn/domob/android/ads/DomobAdView;->n:Z

    .line 844
    :cond_0
    return-void
.end method

.method protected static setSchedule(Lcn/domob/android/ads/DomobAdView;Z)V
    .locals 0
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;
    .param p1, "flag"    # Z

    .prologue
    .line 847
    if-eqz p0, :cond_0

    .line 848
    invoke-direct {p0, p1}, Lcn/domob/android/ads/DomobAdView;->a(Z)V

    .line 850
    :cond_0
    return-void
.end method

.method protected static startAlphaAnimation(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;)V
    .locals 3
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;
    .param p1, "builder"    # Lcn/domob/android/ads/DomobAdBuilder;

    .prologue
    const-string v1, "DomobSDK"

    .line 1030
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    const-string v0, "DomobSDK"

    const-string v0, "startAlphaAnimation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    .line 1035
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 1036
    invoke-static {p0, p1}, Lcn/domob/android/ads/DomobAdView;->setBuilder(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;)Lcn/domob/android/ads/DomobAdBuilder;

    .line 1038
    if-eqz v0, :cond_1

    .line 1039
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->removeView(Landroid/view/View;)V

    .line 1040
    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->c()V

    .line 1043
    :cond_1
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Z

    if-eqz v0, :cond_2

    .line 1044
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1045
    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1046
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    .line 1047
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1048
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1049
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1053
    :cond_2
    return-void
.end method

.method protected static startAnimation(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;I)V
    .locals 2
    .param p0, "adview"    # Lcn/domob/android/ads/DomobAdView;
    .param p1, "builder"    # Lcn/domob/android/ads/DomobAdBuilder;
    .param p2, "beginType"    # I

    .prologue
    const-string v1, "DomobSDK"

    .line 1057
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    const-string v0, "DomobSDK"

    const-string v0, "start ad switch Animation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 1062
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 1063
    new-instance v0, Lcn/domob/android/ads/m;

    invoke-direct {v0}, Lcn/domob/android/ads/m;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0, p0, p1, v1}, Lcn/domob/android/ads/m;->a(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;Lcn/domob/android/ads/DomobAdBuilder;)V

    .line 1064
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 1080
    :goto_0
    return-void

    .line 1068
    :cond_1
    invoke-static {p2, p0}, Lcn/domob/android/ads/p;->a(ILcn/domob/android/ads/DomobAdView;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1069
    new-instance v1, Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0, p0, p1, p2}, Lcn/domob/android/ads/DomobAdView$a;-><init>(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1071
    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    .line 1072
    const/4 v1, 0x7

    if-ne p2, v1, :cond_3

    .line 1073
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 1074
    invoke-virtual {p1, v0}, Lcn/domob/android/ads/DomobAdBuilder;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1079
    :cond_3
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public SetAnimList([I)V
    .locals 3
    .param p1, "animArray"    # [I

    .prologue
    .line 1180
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 1183
    return-void

    .line 1181
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->C:Ljava/util/ArrayList;

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public cleanup()V
    .locals 2

    .prologue
    const-string v1, "DomobSDK"

    .line 789
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_1

    .line 790
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    const-string v0, "DomobSDK"

    const-string v0, "clear the ad."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->c()V

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    .line 796
    :cond_1
    return-void
.end method

.method protected final constructView(Lcn/domob/android/ads/DomobAdEngine;Lcn/domob/android/ads/DomobAdBuilder;)V
    .locals 5
    .param p1, "engine"    # Lcn/domob/android/ads/DomobAdEngine;
    .param p2, "builder"    # Lcn/domob/android/ads/DomobAdBuilder;

    .prologue
    const/4 v3, 0x3

    const-string v4, "DomobSDK"

    .line 916
    const-string v0, "DomobSDK"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    const-string v0, "DomobSDK"

    const-string v0, "construct ad view"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 921
    :cond_1
    const-string v0, "DomobSDK"

    const-string v0, "failed to construct view!"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :goto_0
    return-void

    .line 925
    :cond_2
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->mNoAd:Z

    .line 926
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->mNoAd:Z

    .line 927
    invoke-virtual {p2, p1}, Lcn/domob/android/ads/DomobAdBuilder;->a(Lcn/domob/android/ads/DomobAdEngine;)V

    .line 929
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getVisibility()I

    move-result v1

    .line 930
    const-string v2, "DomobSDK"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 931
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this.getVisibility():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_3
    invoke-virtual {p2, v1}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 935
    const/16 v2, 0x11

    invoke-virtual {p2, v2}, Lcn/domob/android/ads/DomobAdBuilder;->setGravity(I)V

    .line 936
    invoke-virtual {p1, p2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lcn/domob/android/ads/DomobAdBuilder;)V

    .line 937
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdEngine;->b()I

    move-result v3

    invoke-virtual {p1, v3}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v3

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdEngine;->c()I

    move-result v4

    invoke-virtual {p1, v4}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 938
    invoke-virtual {p2, v2}, Lcn/domob/android/ads/DomobAdBuilder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    sget-object v2, Lcn/domob/android/ads/DomobAdView;->a:Landroid/os/Handler;

    new-instance v3, Lcn/domob/android/ads/DomobAdView$d;

    invoke-direct {v3, p0, p2, v1, v0}, Lcn/domob/android/ads/DomobAdView$d;-><init>(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected getAdData()Lcn/domob/android/ads/c;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->y:Lcn/domob/android/ads/c;

    return-object v0
.end method

.method public getAdListener()Lcn/domob/android/ads/DomobAdListener;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->l:Lcn/domob/android/ads/DomobAdListener;

    return-object v0
.end method

.method protected getAnimList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1186
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->C:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getBackColorSetByClient()Z
    .locals 1

    .prologue
    .line 1132
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->w:Z

    return v0
.end method

.method protected getBackgroundColor()J
    .locals 2

    .prologue
    .line 630
    iget-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->i:J

    return-wide v0
.end method

.method protected getDataAdListener()Lcn/domob/android/ads/e;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->m:Lcn/domob/android/ads/e;

    return-object v0
.end method

.method protected getDataSetting()Lcn/domob/android/ads/f;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->A:Lcn/domob/android/ads/f;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected getPrimTxtColorSetByClient()Z
    .locals 1

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->x:Z

    return v0
.end method

.method protected getPrimaryTextColor()J
    .locals 2

    .prologue
    .line 610
    iget-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->j:J

    return-wide v0
.end method

.method public getRequestInterval()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    div-int/lit16 v0, v0, 0x3e8

    .line 414
    return v0
.end method

.method public getSpots()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->k:Ljava/lang/String;

    return-object v0
.end method

.method public hasAd()Z
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->b()Lcn/domob/android/ads/DomobAdEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected ifRequestFreshAd()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "DomobSDK"

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/domob/android/ads/DomobAdView;->h:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 345
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring requestFreshAd.  Called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds since last refresh.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Refreshes must be at least "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " apart."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 353
    :goto_0
    return v0

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->n:Z

    if-eqz v0, :cond_1

    .line 348
    const-string v0, "DomobSDK"

    const-string v0, "Ignoring doRefresh() because we are requesting an ad right now already."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 349
    goto :goto_0

    .line 352
    :cond_1
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->a()V

    .line 353
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected initByConf(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "DomobSDK"

    .line 207
    .line 208
    const/4 v0, 0x0

    .line 210
    :try_start_0
    invoke-static {p1}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Lcn/domob/android/ads/DBHelper;->b()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 214
    :cond_0
    const-string v2, "DomobSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    const-string v2, "DomobSDK"

    const-string v3, "no data in conf db, initialize now."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_1
    invoke-virtual {v1}, Lcn/domob/android/ads/DBHelper;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v4

    .line 239
    :goto_0
    if-eqz v0, :cond_2

    .line 240
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_2
    return v1

    .line 220
    :cond_3
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 221
    const-string v1, "_dis_flag"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_4

    .line 222
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    .line 227
    :goto_1
    const-string v1, "_dis_time"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/domob/android/ads/DomobAdView;->r:J

    .line 228
    const-string v1, "_dis_timestamp"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcn/domob/android/ads/DomobAdView;->s:J

    .line 230
    const-string v1, "_interval"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 231
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DomobAdView;->setRequestInterval(I)V

    move v1, v3

    .line 233
    goto :goto_0

    .line 224
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->q:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 235
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 236
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    move v1, v4

    goto :goto_0

    .line 235
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method protected isDataMode()Z
    .locals 1

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->z:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const-string v2, "DomobSDK"

    .line 572
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    const-string v0, "DomobSDK"

    const-string v0, "onAttachedToWindow"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->o:Z

    .line 578
    invoke-direct {p0, v1}, Lcn/domob/android/ads/DomobAdView;->a(Z)V

    .line 579
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 580
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, "DomobSDK"

    .line 584
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const-string v0, "DomobSDK"

    const-string v0, "onDetachedFromWindow"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->o:Z

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->mNoAd:Z

    .line 592
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->saveAvg2DB()V

    .line 593
    invoke-direct {p0, v1}, Lcn/domob/android/ads/DomobAdView;->a(Z)V

    .line 595
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->c()V

    .line 599
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/j;->b()V

    .line 601
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 602
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    const/4 v7, 0x3

    const-string v6, "DomobSDK"

    .line 264
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 265
    const-string v0, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "DomobSDK"

    const-string v0, "DomobAdView onMeasure"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 270
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 271
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 272
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 274
    const/4 v4, 0x0

    .line 278
    if-eq v1, v8, :cond_1

    if-ne v1, v9, :cond_8

    .line 283
    :cond_1
    :goto_0
    const-string v1, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "DomobAdView width is :"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_2
    if-ne v3, v9, :cond_9

    .line 288
    const-string v1, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    const-string v1, "DomobSDK"

    const-string v1, "heightMeasureSpec is android.view.View.MeasureSpec.EXACTLY!"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v2

    .line 303
    :cond_4
    :goto_1
    const-string v2, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 304
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DomobAdView height is :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/DomobAdView;->setMeasuredDimension(II)V

    .line 309
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->mNoAd:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcn/domob/android/ads/DomobAdView;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 310
    const-string v0, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 311
    const-string v0, "DomobSDK"

    const-string v0, "request the first ad!"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_6
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->ifRequestFreshAd()Z

    .line 316
    :cond_7
    return-void

    .line 281
    :cond_8
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->getScreenCurrentHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 294
    :cond_9
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->c:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdBuilder;->b()Lcn/domob/android/ads/DomobAdEngine;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 295
    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdEngine;->c()I

    move-result v5

    invoke-virtual {v1, v5}, Lcn/domob/android/ads/DomobAdEngine;->a(I)I

    move-result v1

    .line 296
    if-ne v3, v8, :cond_4

    if-ge v2, v1, :cond_4

    .line 297
    const-string v3, "DomobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot display ad because its container is too small.  The ad is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pixels tall but is only given "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at most to draw into.  Please make your view containing DomobAdView taller."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto/16 :goto_1

    :cond_a
    move v1, v4

    goto/16 :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const-string v2, "DomobSDK"

    .line 548
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowFocusChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    iput-boolean p1, p0, Lcn/domob/android/ads/DomobAdView;->u:Z

    .line 553
    invoke-direct {p0, p1}, Lcn/domob/android/ads/DomobAdView;->a(Z)V

    .line 555
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 556
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    const-string v2, "DomobSDK"

    .line 560
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWindowVisibilityChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    iput p1, p0, Lcn/domob/android/ads/DomobAdView;->t:I

    .line 565
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcn/domob/android/ads/DomobAdView;->a(Z)V

    .line 567
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 568
    return-void

    .line 565
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestFreshAd()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->D:Z

    .line 338
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->ifRequestFreshAd()Z

    .line 339
    return-void
.end method

.method protected saveAvg2DB()V
    .locals 5

    .prologue
    const-string v4, "DomobSDK"

    .line 247
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 248
    invoke-static {}, Lcn/domob/android/ads/j;->c()J

    move-result-wide v0

    .line 249
    const-string v2, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The avg req time is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 254
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView;->v:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v2

    .line 255
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 256
    const-string v4, "_avg_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 257
    invoke-virtual {v2, v3}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/ContentValues;)I

    .line 260
    :cond_1
    return-void
.end method

.method protected sendDetector()V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcn/domob/android/ads/i;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/i;-><init>(Lcn/domob/android/ads/DomobAdView;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/i;->start()V

    .line 368
    return-void
.end method

.method public setAdListener(Lcn/domob/android/ads/DomobAdListener;)V
    .locals 1
    .param p1, "adlistener"    # Lcn/domob/android/ads/DomobAdListener;

    .prologue
    .line 740
    monitor-enter p0

    .line 741
    :try_start_0
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->l:Lcn/domob/android/ads/DomobAdListener;

    .line 740
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 639
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->i:J

    .line 640
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->invalidate()V

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->w:Z

    .line 643
    return-void
.end method

.method protected setDataAdListener(Lcn/domob/android/ads/e;)V
    .locals 1
    .param p1, "adlistener"    # Lcn/domob/android/ads/e;

    .prologue
    .line 760
    monitor-enter p0

    .line 761
    :try_start_0
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->m:Lcn/domob/android/ads/e;

    .line 760
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setDataSetting(Lcn/domob/android/ads/f;)V
    .locals 0
    .param p1, "dataSetting"    # Lcn/domob/android/ads/f;

    .prologue
    .line 1171
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->A:Lcn/domob/android/ads/f;

    .line 1172
    return-void
.end method

.method protected setDefaultInterval(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    const-string v2, "DomobSDK"

    .line 452
    invoke-static {p1}, Lcn/domob/android/ads/DomobAdView;->a(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->f:I

    .line 453
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDefaultInterval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/domob/android/ads/DomobAdView;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    return-void
.end method

.method protected setDisabled(ZJJ)V
    .locals 3
    .param p1, "flag"    # Z
    .param p2, "time"    # J
    .param p4, "timestamp"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 715
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    if-ne v0, p1, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    iput-boolean p1, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    .line 720
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->q:Z

    if-eqz v0, :cond_2

    .line 721
    const-string v0, "DomobSDK"

    const-string v1, "AD is disabled on web server."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iput-wide p2, p0, Lcn/domob/android/ads/DomobAdView;->r:J

    .line 723
    iput-wide p4, p0, Lcn/domob/android/ads/DomobAdView;->s:J

    .line 729
    :goto_1
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 730
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->a:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/ads/DomobAdView$e;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/DomobAdView$e;-><init>(Lcn/domob/android/ads/DomobAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 725
    :cond_2
    iput-wide v1, p0, Lcn/domob/android/ads/DomobAdView;->r:J

    .line 726
    iput-wide v1, p0, Lcn/domob/android/ads/DomobAdView;->s:J

    goto :goto_1
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 660
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 661
    const-string v0, "DomobSDK"

    const-string v1, "The length of keywords cannot exceed 200!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :goto_0
    return-void

    .line 664
    :cond_0
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPrimaryTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 619
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/domob/android/ads/DomobAdView;->j:J

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->x:Z

    .line 622
    return-void
.end method

.method public setRequestInterval(I)V
    .locals 3
    .param p1, "requestInterval"    # I

    .prologue
    const/4 v1, 0x3

    const-string v2, "DomobSDK"

    .line 432
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 433
    const-string v0, "DomobSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "DomobSDK"

    const-string v0, "use the default interval(from xml)."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->f:I

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    .line 445
    :goto_0
    const-string v0, "DomobSDK"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRequestInterval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_1
    return-void

    .line 437
    :cond_2
    if-nez p1, :cond_3

    .line 438
    const-string v0, "DomobSDK"

    const-string v0, "refreshInterval is 0, AD will not be refreshed any more."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    .line 441
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->b()V

    goto :goto_0

    .line 443
    :cond_3
    invoke-static {p1}, Lcn/domob/android/ads/DomobAdView;->a(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->g:I

    goto :goto_0
.end method

.method public setSpots(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 682
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 683
    const-string v0, "DomobSDK"

    const-string v1, "The length of spots cannot exceed 200!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_0
    return-void

    .line 686
    :cond_0
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 5
    .param p1, "v"    # I

    .prologue
    const/4 v3, 0x0

    const-string v4, "DomobSDK"

    .line 694
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 695
    monitor-enter p0

    .line 696
    :try_start_0
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getChildCount()I

    move-result v0

    move v1, v3

    .line 697
    :goto_0
    if-lt v1, v0, :cond_2

    .line 702
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 703
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->invalidate()V

    .line 695
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    :cond_0
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVisibility:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_1
    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcn/domob/android/ads/DomobAdView;->a(Z)V

    .line 712
    return-void

    .line 698
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DomobAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 699
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v3

    .line 711
    goto :goto_1
.end method
