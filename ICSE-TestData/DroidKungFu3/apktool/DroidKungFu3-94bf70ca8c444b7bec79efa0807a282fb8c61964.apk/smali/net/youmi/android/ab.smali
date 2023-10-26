.class Lnet/youmi/android/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/bf;


# direct methods
.method constructor <init>(Lnet/youmi/android/bf;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ab;->a:Lnet/youmi/android/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ab;->a:Lnet/youmi/android/bf;

    invoke-static {v0}, Lnet/youmi/android/bf;->a(Lnet/youmi/android/bf;)Lnet/youmi/android/ct;

    move-result-object v0

    iget-object v1, p0, Lnet/youmi/android/ab;->a:Lnet/youmi/android/bf;

    invoke-static {v1}, Lnet/youmi/android/bf;->a(Lnet/youmi/android/bf;)Lnet/youmi/android/ct;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/ct;->b(Lnet/youmi/android/ct;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/youmi/android/ct;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
