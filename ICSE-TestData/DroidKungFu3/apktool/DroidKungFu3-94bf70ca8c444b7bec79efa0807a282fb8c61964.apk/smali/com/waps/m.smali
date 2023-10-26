.class public Lcom/waps/m;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field b:I

.field c:Lcom/waps/l;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/waps/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/waps/l;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput p2, p0, Lcom/waps/m;->b:I

    iput-object p1, p0, Lcom/waps/m;->c:Lcom/waps/l;

    iput-object p3, p0, Lcom/waps/m;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/16 v3, 0x8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waps/m;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v0

    sget-object v1, Lcom/waps/m;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/waps/AppConnect;->package_receiver(Ljava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Lcom/waps/m;->c:Lcom/waps/l;

    iget v1, p0, Lcom/waps/m;->b:I

    iget-object v2, p0, Lcom/waps/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/waps/l;->a(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/waps/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/waps/AppConnect;->getInstanceNoConnect(Landroid/content/Context;)Lcom/waps/AppConnect;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/waps/AppConnect;->package_receiver(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
