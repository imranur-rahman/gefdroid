.class final Lcom/adwo/adsdk/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/j;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/adwo/adsdk/s;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/adwo/adsdk/s;->b:Ljava/lang/String;

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 987
    iget-object v0, p0, Lcom/adwo/adsdk/s;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adwo/adsdk/s;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u81f3\u76ee\u5f55"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/adwo/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 988
    return-void
.end method
