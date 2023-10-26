.class public final Lcom/waps/AppConnect;
.super Ljava/lang/Object;


# static fields
.field public static final LIBRARY_VERSION_NUMBER:Ljava/lang/String; = "1.4.2"

.field private static S:Z

.field private static T:Z

.field private static U:Ljava/lang/String;

.field private static V:Lcom/waps/UpdatePointsNotifier;

.field private static aa:Ljava/lang/String;

.field private static ab:Ljava/lang/String;

.field private static ac:Ljava/lang/String;

.field private static u:Lcom/waps/AppConnect;

.field private static v:Lcom/waps/n;

.field private static w:Lcom/waps/DisplayAd;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:I

.field private Q:I

.field private R:Ljava/lang/String;

.field private W:Lcom/waps/f;

.field private X:Lcom/waps/i;

.field private Y:Lcom/waps/g;

.field private Z:Lcom/waps/h;

.field final a:Ljava/lang/String;

.field private ad:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/String;

.field final j:Ljava/lang/String;

.field final k:Ljava/lang/String;

.field final l:Ljava/lang/String;

.field final m:Ljava/lang/String;

.field final n:Ljava/lang/String;

.field final o:Ljava/lang/String;

.field final p:Ljava/lang/String;

.field final q:Ljava/lang/String;

.field final r:Ljava/lang/String;

.field private s:Lcom/waps/j;

.field private t:Landroid/content/Context;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    sput-object v1, Lcom/waps/AppConnect;->v:Lcom/waps/n;

    sput-object v1, Lcom/waps/AppConnect;->w:Lcom/waps/DisplayAd;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/waps/AppConnect;->S:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/waps/AppConnect;->T:Z

    sput-object v1, Lcom/waps/AppConnect;->U:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    const-string v0, "receiver/install?"

    sput-object v0, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    const-string v0, "install"

    sput-object v0, Lcom/waps/AppConnect;->ac:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/waps/AppConnect;->s:Lcom/waps/j;

    iput-object v2, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->D:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->E:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->F:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->G:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->H:Ljava/lang/String;

    const-string v0, "http://app.waps.cn/action/account/offerlist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->I:Ljava/lang/String;

    const-string v0, "http://app.waps.cn/action/account/ownslist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->J:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->K:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->M:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->N:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->O:Ljava/lang/String;

    iput v3, p0, Lcom/waps/AppConnect;->P:I

    iput v3, p0, Lcom/waps/AppConnect;->Q:I

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    const-string v0, "udid"

    iput-object v0, p0, Lcom/waps/AppConnect;->a:Ljava/lang/String;

    const-string v0, "device_name"

    iput-object v0, p0, Lcom/waps/AppConnect;->b:Ljava/lang/String;

    const-string v0, "device_type"

    iput-object v0, p0, Lcom/waps/AppConnect;->c:Ljava/lang/String;

    const-string v0, "os_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->d:Ljava/lang/String;

    const-string v0, "country_code"

    iput-object v0, p0, Lcom/waps/AppConnect;->e:Ljava/lang/String;

    const-string v0, "language"

    iput-object v0, p0, Lcom/waps/AppConnect;->f:Ljava/lang/String;

    const-string v0, "app_id"

    iput-object v0, p0, Lcom/waps/AppConnect;->g:Ljava/lang/String;

    const-string v0, "app_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->h:Ljava/lang/String;

    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->i:Ljava/lang/String;

    const-string v0, "act"

    iput-object v0, p0, Lcom/waps/AppConnect;->j:Ljava/lang/String;

    const-string v0, "userid"

    iput-object v0, p0, Lcom/waps/AppConnect;->k:Ljava/lang/String;

    const-string v0, "channel"

    iput-object v0, p0, Lcom/waps/AppConnect;->l:Ljava/lang/String;

    const-string v0, "points"

    iput-object v0, p0, Lcom/waps/AppConnect;->m:Ljava/lang/String;

    const-string v0, "install"

    iput-object v0, p0, Lcom/waps/AppConnect;->n:Ljava/lang/String;

    const-string v0, "uninstall"

    iput-object v0, p0, Lcom/waps/AppConnect;->o:Ljava/lang/String;

    const-string v0, "load"

    iput-object v0, p0, Lcom/waps/AppConnect;->p:Ljava/lang/String;

    const-string v0, "device_width"

    iput-object v0, p0, Lcom/waps/AppConnect;->q:Ljava/lang/String;

    const-string v0, "device_height"

    iput-object v0, p0, Lcom/waps/AppConnect;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/waps/AppConnect;->W:Lcom/waps/f;

    iput-object v2, p0, Lcom/waps/AppConnect;->X:Lcom/waps/i;

    iput-object v2, p0, Lcom/waps/AppConnect;->Y:Lcom/waps/g;

    iput-object v2, p0, Lcom/waps/AppConnect;->Z:Lcom/waps/h;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/waps/AppConnect;->s:Lcom/waps/j;

    iput-object v2, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->D:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->E:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->F:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->G:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->H:Ljava/lang/String;

    const-string v0, "http://app.waps.cn/action/account/offerlist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->I:Ljava/lang/String;

    const-string v0, "http://app.waps.cn/action/account/ownslist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->J:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->K:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->M:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->N:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->O:Ljava/lang/String;

    iput v3, p0, Lcom/waps/AppConnect;->P:I

    iput v3, p0, Lcom/waps/AppConnect;->Q:I

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    const-string v0, "udid"

    iput-object v0, p0, Lcom/waps/AppConnect;->a:Ljava/lang/String;

    const-string v0, "device_name"

    iput-object v0, p0, Lcom/waps/AppConnect;->b:Ljava/lang/String;

    const-string v0, "device_type"

    iput-object v0, p0, Lcom/waps/AppConnect;->c:Ljava/lang/String;

    const-string v0, "os_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->d:Ljava/lang/String;

    const-string v0, "country_code"

    iput-object v0, p0, Lcom/waps/AppConnect;->e:Ljava/lang/String;

    const-string v0, "language"

    iput-object v0, p0, Lcom/waps/AppConnect;->f:Ljava/lang/String;

    const-string v0, "app_id"

    iput-object v0, p0, Lcom/waps/AppConnect;->g:Ljava/lang/String;

    const-string v0, "app_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->h:Ljava/lang/String;

    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->i:Ljava/lang/String;

    const-string v0, "act"

    iput-object v0, p0, Lcom/waps/AppConnect;->j:Ljava/lang/String;

    const-string v0, "userid"

    iput-object v0, p0, Lcom/waps/AppConnect;->k:Ljava/lang/String;

    const-string v0, "channel"

    iput-object v0, p0, Lcom/waps/AppConnect;->l:Ljava/lang/String;

    const-string v0, "points"

    iput-object v0, p0, Lcom/waps/AppConnect;->m:Ljava/lang/String;

    const-string v0, "install"

    iput-object v0, p0, Lcom/waps/AppConnect;->n:Ljava/lang/String;

    const-string v0, "uninstall"

    iput-object v0, p0, Lcom/waps/AppConnect;->o:Ljava/lang/String;

    const-string v0, "load"

    iput-object v0, p0, Lcom/waps/AppConnect;->p:Ljava/lang/String;

    const-string v0, "device_width"

    iput-object v0, p0, Lcom/waps/AppConnect;->q:Ljava/lang/String;

    const-string v0, "device_height"

    iput-object v0, p0, Lcom/waps/AppConnect;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/waps/AppConnect;->W:Lcom/waps/f;

    iput-object v2, p0, Lcom/waps/AppConnect;->X:Lcom/waps/i;

    iput-object v2, p0, Lcom/waps/AppConnect;->Y:Lcom/waps/g;

    iput-object v2, p0, Lcom/waps/AppConnect;->Z:Lcom/waps/h;

    invoke-virtual {p0, p1}, Lcom/waps/AppConnect;->getParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    new-instance v0, Lcom/waps/j;

    invoke-direct {v0, p0, v2}, Lcom/waps/j;-><init>(Lcom/waps/AppConnect;Lcom/waps/d;)V

    iput-object v0, p0, Lcom/waps/AppConnect;->s:Lcom/waps/j;

    iget-object v0, p0, Lcom/waps/AppConnect;->s:Lcom/waps/j;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/waps/AppConnect;->s:Lcom/waps/j;

    iput-object v2, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->D:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->E:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->F:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->G:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->H:Ljava/lang/String;

    const-string v0, "http://app.waps.cn/action/account/offerlist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->I:Ljava/lang/String;

    const-string v0, "http://app.waps.cn/action/account/ownslist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->J:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->K:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->M:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->N:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->O:Ljava/lang/String;

    iput v3, p0, Lcom/waps/AppConnect;->P:I

    iput v3, p0, Lcom/waps/AppConnect;->Q:I

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    const-string v0, "udid"

    iput-object v0, p0, Lcom/waps/AppConnect;->a:Ljava/lang/String;

    const-string v0, "device_name"

    iput-object v0, p0, Lcom/waps/AppConnect;->b:Ljava/lang/String;

    const-string v0, "device_type"

    iput-object v0, p0, Lcom/waps/AppConnect;->c:Ljava/lang/String;

    const-string v0, "os_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->d:Ljava/lang/String;

    const-string v0, "country_code"

    iput-object v0, p0, Lcom/waps/AppConnect;->e:Ljava/lang/String;

    const-string v0, "language"

    iput-object v0, p0, Lcom/waps/AppConnect;->f:Ljava/lang/String;

    const-string v0, "app_id"

    iput-object v0, p0, Lcom/waps/AppConnect;->g:Ljava/lang/String;

    const-string v0, "app_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->h:Ljava/lang/String;

    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->i:Ljava/lang/String;

    const-string v0, "act"

    iput-object v0, p0, Lcom/waps/AppConnect;->j:Ljava/lang/String;

    const-string v0, "userid"

    iput-object v0, p0, Lcom/waps/AppConnect;->k:Ljava/lang/String;

    const-string v0, "channel"

    iput-object v0, p0, Lcom/waps/AppConnect;->l:Ljava/lang/String;

    const-string v0, "points"

    iput-object v0, p0, Lcom/waps/AppConnect;->m:Ljava/lang/String;

    const-string v0, "install"

    iput-object v0, p0, Lcom/waps/AppConnect;->n:Ljava/lang/String;

    const-string v0, "uninstall"

    iput-object v0, p0, Lcom/waps/AppConnect;->o:Ljava/lang/String;

    const-string v0, "load"

    iput-object v0, p0, Lcom/waps/AppConnect;->p:Ljava/lang/String;

    const-string v0, "device_width"

    iput-object v0, p0, Lcom/waps/AppConnect;->q:Ljava/lang/String;

    const-string v0, "device_height"

    iput-object v0, p0, Lcom/waps/AppConnect;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/waps/AppConnect;->W:Lcom/waps/f;

    iput-object v2, p0, Lcom/waps/AppConnect;->X:Lcom/waps/i;

    iput-object v2, p0, Lcom/waps/AppConnect;->Y:Lcom/waps/g;

    iput-object v2, p0, Lcom/waps/AppConnect;->Z:Lcom/waps/h;

    invoke-virtual {p0, p1}, Lcom/waps/AppConnect;->getParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/waps/AppConnect;->s:Lcom/waps/j;

    iput-object v2, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->D:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->E:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->F:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->G:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->H:Ljava/lang/String;

    const-string v0, "http://app.waps.cn/action/account/offerlist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->I:Ljava/lang/String;

    const-string v0, "http://app.waps.cn/action/account/ownslist?"

    iput-object v0, p0, Lcom/waps/AppConnect;->J:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->K:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->M:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->N:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->O:Ljava/lang/String;

    iput v3, p0, Lcom/waps/AppConnect;->P:I

    iput v3, p0, Lcom/waps/AppConnect;->Q:I

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    const-string v0, "udid"

    iput-object v0, p0, Lcom/waps/AppConnect;->a:Ljava/lang/String;

    const-string v0, "device_name"

    iput-object v0, p0, Lcom/waps/AppConnect;->b:Ljava/lang/String;

    const-string v0, "device_type"

    iput-object v0, p0, Lcom/waps/AppConnect;->c:Ljava/lang/String;

    const-string v0, "os_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->d:Ljava/lang/String;

    const-string v0, "country_code"

    iput-object v0, p0, Lcom/waps/AppConnect;->e:Ljava/lang/String;

    const-string v0, "language"

    iput-object v0, p0, Lcom/waps/AppConnect;->f:Ljava/lang/String;

    const-string v0, "app_id"

    iput-object v0, p0, Lcom/waps/AppConnect;->g:Ljava/lang/String;

    const-string v0, "app_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->h:Ljava/lang/String;

    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/waps/AppConnect;->i:Ljava/lang/String;

    const-string v0, "act"

    iput-object v0, p0, Lcom/waps/AppConnect;->j:Ljava/lang/String;

    const-string v0, "userid"

    iput-object v0, p0, Lcom/waps/AppConnect;->k:Ljava/lang/String;

    const-string v0, "channel"

    iput-object v0, p0, Lcom/waps/AppConnect;->l:Ljava/lang/String;

    const-string v0, "points"

    iput-object v0, p0, Lcom/waps/AppConnect;->m:Ljava/lang/String;

    const-string v0, "install"

    iput-object v0, p0, Lcom/waps/AppConnect;->n:Ljava/lang/String;

    const-string v0, "uninstall"

    iput-object v0, p0, Lcom/waps/AppConnect;->o:Ljava/lang/String;

    const-string v0, "load"

    iput-object v0, p0, Lcom/waps/AppConnect;->p:Ljava/lang/String;

    const-string v0, "device_width"

    iput-object v0, p0, Lcom/waps/AppConnect;->q:Ljava/lang/String;

    const-string v0, "device_height"

    iput-object v0, p0, Lcom/waps/AppConnect;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/waps/AppConnect;->W:Lcom/waps/f;

    iput-object v2, p0, Lcom/waps/AppConnect;->X:Lcom/waps/i;

    iput-object v2, p0, Lcom/waps/AppConnect;->Y:Lcom/waps/g;

    iput-object v2, p0, Lcom/waps/AppConnect;->Z:Lcom/waps/h;

    iput-object p1, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/waps/AppConnect;->getParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    new-instance v0, Lcom/waps/j;

    invoke-direct {v0, p0, v2}, Lcom/waps/j;-><init>(Lcom/waps/AppConnect;Lcom/waps/d;)V

    iput-object v0, p0, Lcom/waps/AppConnect;->s:Lcom/waps/j;

    iget-object v0, p0, Lcom/waps/AppConnect;->s:Lcom/waps/j;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private UpdateDialog(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u65b0\u7248\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6709\u65b0\u7248\u672c("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "),\u662f\u5426\u4e0b\u8f7d?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u4e0b\u8f7d"

    new-instance v2, Lcom/waps/d;

    invoke-direct {v2, p0, p1}, Lcom/waps/d;-><init>(Lcom/waps/AppConnect;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u4e0b\u6b21\u518d\u8bf4"

    new-instance v2, Lcom/waps/e;

    invoke-direct {v2, p0}, Lcom/waps/e;-><init>(Lcom/waps/AppConnect;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/waps/AppConnect;)V
    .locals 0

    invoke-direct {p0}, Lcom/waps/AppConnect;->loadApps()V

    return-void
.end method

.method static synthetic access$1200(Lcom/waps/AppConnect;)Lcom/waps/h;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->Z:Lcom/waps/h;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/waps/AppConnect;Lcom/waps/h;)Lcom/waps/h;
    .locals 0

    iput-object p1, p0, Lcom/waps/AppConnect;->Z:Lcom/waps/h;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/waps/AppConnect;->ac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->N:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/waps/AppConnect;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->handleGetPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900()Lcom/waps/UpdatePointsNotifier;
    .locals 1

    sget-object v0, Lcom/waps/AppConnect;->V:Lcom/waps/UpdatePointsNotifier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/waps/AppConnect;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->handleSpendPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/waps/AppConnect;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/waps/n;
    .locals 1

    sget-object v0, Lcom/waps/AppConnect;->v:Lcom/waps/n;

    return-object v0
.end method

.method static synthetic access$400(Lcom/waps/AppConnect;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->handleConnectResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/waps/AppConnect;->S:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/waps/AppConnect;->S:Z

    return p0
.end method

.method static synthetic access$600(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/waps/AppConnect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/waps/AppConnect;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->UpdateDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/waps/AppConnect;->T:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/waps/AppConnect;->T:Z

    return p0
.end method

.method private buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getArea()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/waps/AppConnect;->U:Ljava/lang/String;

    if-nez v1, :cond_0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/waps/AppConnect;->U:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/waps/AppConnect;
    .locals 2

    sget-object v0, Lcom/waps/AppConnect;->v:Lcom/waps/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/waps/n;

    invoke-direct {v0}, Lcom/waps/n;-><init>()V

    sput-object v0, Lcom/waps/AppConnect;->v:Lcom/waps/n;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waps/AppConnect;->v:Lcom/waps/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waps/n;->a(Z)V

    :cond_0
    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    if-nez v0, :cond_1

    new-instance v0, Lcom/waps/AppConnect;

    invoke-direct {v0, p0}, Lcom/waps/AppConnect;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    :cond_1
    sget-object v0, Lcom/waps/AppConnect;->w:Lcom/waps/DisplayAd;

    if-nez v0, :cond_2

    new-instance v0, Lcom/waps/DisplayAd;

    invoke-direct {v0, p0}, Lcom/waps/DisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waps/AppConnect;->w:Lcom/waps/DisplayAd;

    :cond_2
    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/waps/AppConnect;
    .locals 2

    sget-object v0, Lcom/waps/AppConnect;->v:Lcom/waps/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/waps/n;

    invoke-direct {v0}, Lcom/waps/n;-><init>()V

    sput-object v0, Lcom/waps/AppConnect;->v:Lcom/waps/n;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waps/AppConnect;->v:Lcom/waps/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waps/n;->a(Z)V

    :cond_0
    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    if-nez v0, :cond_1

    new-instance v0, Lcom/waps/AppConnect;

    invoke-direct {v0, p0, p1}, Lcom/waps/AppConnect;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    :cond_1
    sget-object v0, Lcom/waps/AppConnect;->w:Lcom/waps/DisplayAd;

    if-nez v0, :cond_2

    new-instance v0, Lcom/waps/DisplayAd;

    invoke-direct {v0, p0}, Lcom/waps/DisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waps/AppConnect;->w:Lcom/waps/DisplayAd;

    :cond_2
    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/waps/AppConnect;
    .locals 2

    sget-object v0, Lcom/waps/AppConnect;->v:Lcom/waps/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/waps/n;

    invoke-direct {v0}, Lcom/waps/n;-><init>()V

    sput-object v0, Lcom/waps/AppConnect;->v:Lcom/waps/n;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waps/AppConnect;->v:Lcom/waps/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waps/n;->a(Z)V

    :cond_0
    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    if-nez v0, :cond_1

    new-instance v0, Lcom/waps/AppConnect;

    invoke-direct {v0, p0, p1}, Lcom/waps/AppConnect;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    :cond_1
    sget-object v0, Lcom/waps/AppConnect;->w:Lcom/waps/DisplayAd;

    if-nez v0, :cond_2

    new-instance v0, Lcom/waps/DisplayAd;

    invoke-direct {v0, p0}, Lcom/waps/DisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waps/AppConnect;->w:Lcom/waps/DisplayAd;

    :cond_2
    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    return-object v0
.end method

.method public static getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;
    .locals 2

    sget-object v0, Lcom/waps/AppConnect;->v:Lcom/waps/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/waps/n;

    invoke-direct {v0}, Lcom/waps/n;-><init>()V

    sput-object v0, Lcom/waps/AppConnect;->v:Lcom/waps/n;

    :cond_0
    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    if-nez v0, :cond_1

    new-instance v0, Lcom/waps/AppConnect;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/waps/AppConnect;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    :cond_1
    sget-object v0, Lcom/waps/AppConnect;->w:Lcom/waps/DisplayAd;

    if-nez v0, :cond_2

    new-instance v0, Lcom/waps/DisplayAd;

    invoke-direct {v0, p0}, Lcom/waps/DisplayAd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waps/AppConnect;->w:Lcom/waps/DisplayAd;

    :cond_2
    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    return-object v0
.end method

.method private getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v7, ""

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    move-object v3, v7

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method

.method private getPointsHelper()V
    .locals 2

    new-instance v0, Lcom/waps/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/waps/f;-><init>(Lcom/waps/AppConnect;Lcom/waps/d;)V

    iput-object v0, p0, Lcom/waps/AppConnect;->W:Lcom/waps/f;

    iget-object v0, p0, Lcom/waps/AppConnect;->W:Lcom/waps/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleConnectResponse(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const-string v0, "Version"

    const-string v0, ""

    :try_start_0
    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "Version"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "Success"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Version"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Clear"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Area"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_3

    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v2, p0, Lcom/waps/AppConnect;->R:Ljava/lang/String;

    :cond_0
    if-eqz v3, :cond_1

    const-string v1, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/waps/AppConnect;->T:Z

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/waps/AppConnect;->setArea(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v5

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleGetPointsResponse(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    const-string v4, "Points"

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Success"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    const-string v2, "Points"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    const-string v1, "Points"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CurrencyName"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/waps/AppConnect;->V:Lcom/waps/UpdatePointsNotifier;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/waps/UpdatePointsNotifier;->getUpdatePoints(Ljava/lang/String;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method private handleSpendPointsResponse(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, ""

    invoke-direct {p0, p1}, Lcom/waps/AppConnect;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Success"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Points"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CurrencyName"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/waps/AppConnect;->V:Lcom/waps/UpdatePointsNotifier;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/waps/UpdatePointsNotifier;->getUpdatePoints(Ljava/lang/String;I)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Message"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/AppConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/waps/AppConnect;->V:Lcom/waps/UpdatePointsNotifier;

    invoke-interface {v1, v0}, Lcom/waps/UpdatePointsNotifier;->getUpdatePointsFailed(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadApps()V
    .locals 12

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string v4, ""

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ""

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/Package.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, ""

    if-eqz v2, :cond_6

    move-object v3, v4

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v11, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v11

    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    move v5, v6

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    iget-object v7, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v8, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    and-int/lit8 v7, v7, 0x1

    if-gtz v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v8, "com."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/waps/AppConnect;->aa:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v3, :cond_5

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v0, v4

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v10

    move-object v2, v10

    move-object v3, v10

    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v10

    move-object v2, v10

    move-object v3, v10

    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_7
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v2, v10

    move-object v3, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v10

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v10

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v1

    move-object v2, v10

    move-object v3, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_5

    :catch_5
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v10

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v3, v2

    move-object v2, v10

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v3, v2

    move-object v2, v4

    goto :goto_5

    :cond_5
    move-object v0, v10

    goto :goto_3

    :cond_6
    move-object v3, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v4

    goto/16 :goto_1

    :cond_7
    move-object v0, v4

    move-object v1, v10

    move-object v2, v10

    move-object v3, v10

    goto/16 :goto_1
.end method

.method private packageReceiverHelper()V
    .locals 2

    new-instance v0, Lcom/waps/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/waps/g;-><init>(Lcom/waps/AppConnect;Lcom/waps/d;)V

    iput-object v0, p0, Lcom/waps/AppConnect;->Y:Lcom/waps/g;

    iget-object v0, p0, Lcom/waps/AppConnect;->Y:Lcom/waps/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static setArea(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/waps/AppConnect;->U:Ljava/lang/String;

    return-void
.end method

.method private spendPointsHelper()V
    .locals 2

    new-instance v0, Lcom/waps/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/waps/i;-><init>(Lcom/waps/AppConnect;Lcom/waps/d;)V

    iput-object v0, p0, Lcom/waps/AppConnect;->X:Lcom/waps/i;

    iget-object v0, p0, Lcom/waps/AppConnect;->X:Lcom/waps/i;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    return-void
.end method

.method public getDisplayAd(Lcom/waps/DisplayAdNotifier;)V
    .locals 3

    iget-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    sget-object v1, Lcom/waps/AppConnect;->w:Lcom/waps/DisplayAd;

    const-string v2, "http://ads.waps.cn/action/"

    invoke-virtual {v1, v2, v0, p1}, Lcom/waps/DisplayAd;->getDisplayAdDataFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/waps/DisplayAdNotifier;)V

    return-void
.end method

.method public getParams(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v2, "&"

    iput-object p1, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/waps/AppConnect;->initMetaData()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "udid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sdk_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "os_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "country_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/AppConnect;->G:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/waps/AppConnect;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/waps/AppConnect;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/waps/AppConnect;->P:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/waps/AppConnect;->Q:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device_width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/waps/AppConnect;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "device_height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/waps/AppConnect;->Q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPoints(Lcom/waps/UpdatePointsNotifier;)V
    .locals 1

    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    if-eqz v0, :cond_0

    sput-object p1, Lcom/waps/AppConnect;->V:Lcom/waps/UpdatePointsNotifier;

    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    invoke-direct {v0}, Lcom/waps/AppConnect;->getPointsHelper()V

    :cond_0
    return-void
.end method

.method public initMetaData()V
    .locals 8

    const/4 v4, 0x0

    const-string v0, "emulatorDeviceId"

    const-string v0, ""

    iget-object v0, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_5

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "WAPS_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "APP_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_5

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waps/AppConnect;->D:Ljava/lang/String;

    iget-object v2, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waps/AppConnect;->K:Ljava/lang/String;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "CLIENT_PACKAGE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object v2, p0, Lcom/waps/AppConnect;->K:Ljava/lang/String;

    :cond_2
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "WAPS_PID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iput-object v2, p0, Lcom/waps/AppConnect;->G:Ljava/lang/String;

    :cond_3
    iget-object v2, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/waps/AppConnect;->E:Ljava/lang/String;

    const-string v0, "android"

    iput-object v0, p0, Lcom/waps/AppConnect;->z:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/waps/AppConnect;->y:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/waps/AppConnect;->A:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->B:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->C:Ljava/lang/String;

    const-string v0, "1.4.2"

    iput-object v0, p0, Lcom/waps/AppConnect;->F:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    const-string v2, "appPrefrences"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "DEVICE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iput-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_0
    :try_start_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/waps/AppConnect;->P:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/waps/AppConnect;->Q:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v0, "PrimaryColor"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/waps/AppConnect;->ad:I

    const-string v0, "InstallReferral"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iput-object v0, p0, Lcom/waps/AppConnect;->M:Ljava/lang/String;

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v0, p0, Lcom/waps/AppConnect;->t:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "0"

    iput-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "EMULATOR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "emulatorDeviceId"

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iput-object v1, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_9
    const-string v1, "1234567890abcdefghijklmnopqrstuvw"

    move v3, v4

    :goto_3
    const/16 v4, 0x20

    if-ge v3, v4, :cond_a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    rem-int/lit8 v4, v4, 0x1e

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "emulatorDeviceId"

    iget-object v3, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_b
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method public package_receiver(Ljava/lang/String;I)V
    .locals 4

    const-string v3, "receiver/install?"

    const-string v2, "load"

    const-string v1, "install"

    packed-switch p2, :pswitch_data_0

    const-string v0, "receiver/install?"

    sput-object v3, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    const-string v0, "install"

    sput-object v1, Lcom/waps/AppConnect;->ac:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/waps/AppConnect;->N:Ljava/lang/String;

    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    invoke-direct {v0}, Lcom/waps/AppConnect;->packageReceiverHelper()V

    :cond_0
    return-void

    :pswitch_0
    const-string v0, "receiver/install?"

    sput-object v3, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    const-string v0, "install"

    sput-object v1, Lcom/waps/AppConnect;->ac:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "receiver/load_offer?"

    sput-object v0, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    const-string v0, "load"

    sput-object v2, Lcom/waps/AppConnect;->ac:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v0, "receiver/load_ad?"

    sput-object v0, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    const-string v0, "load"

    sput-object v2, Lcom/waps/AppConnect;->ac:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string v0, "receiver/uninstall?"

    sput-object v0, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    const-string v0, "uninstall"

    sput-object v0, Lcom/waps/AppConnect;->ab:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showMore(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/waps/AppConnect;->showMore(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showMore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waps/OffersWebView;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Offers_URL"

    iget-object v2, p0, Lcom/waps/AppConnect;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "URL_PARAMS"

    iget-object v2, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CLIENT_PACKAGE"

    iget-object v2, p0, Lcom/waps/AppConnect;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showMore_forTab(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/waps/AppConnect;->showMore_forTab(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public showMore_forTab(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waps/OffersWebView;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Offers_URL"

    iget-object v2, p0, Lcom/waps/AppConnect;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "URL_PARAMS"

    iget-object v2, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CLIENT_PACKAGE"

    iget-object v2, p0, Lcom/waps/AppConnect;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public showOffers(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/waps/AppConnect;->showOffers(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showOffers(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waps/OffersWebView;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Offers_URL"

    iget-object v2, p0, Lcom/waps/AppConnect;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "URL_PARAMS"

    iget-object v2, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CLIENT_PACKAGE"

    iget-object v2, p0, Lcom/waps/AppConnect;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showOffers_forTab(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/waps/AppConnect;->x:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/waps/AppConnect;->showOffers_forTab(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public showOffers_forTab(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waps/OffersWebView;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Offers_URL"

    iget-object v2, p0, Lcom/waps/AppConnect;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "URL_PARAMS"

    iget-object v2, p0, Lcom/waps/AppConnect;->L:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CLIENT_PACKAGE"

    iget-object v2, p0, Lcom/waps/AppConnect;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public spendPoints(ILcom/waps/UpdatePointsNotifier;)V
    .locals 2

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/AppConnect;->H:Ljava/lang/String;

    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    if-eqz v0, :cond_0

    sput-object p2, Lcom/waps/AppConnect;->V:Lcom/waps/UpdatePointsNotifier;

    sget-object v0, Lcom/waps/AppConnect;->u:Lcom/waps/AppConnect;

    invoke-direct {v0}, Lcom/waps/AppConnect;->spendPointsHelper()V

    goto :goto_0
.end method
