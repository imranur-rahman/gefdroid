.class Lnet/youmi/android/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/ae;

.field private final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lnet/youmi/android/ae;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bg;->a:Lnet/youmi/android/ae;

    iput-object p2, p0, Lnet/youmi/android/bg;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bg;->a:Lnet/youmi/android/ae;

    invoke-static {v0}, Lnet/youmi/android/ae;->a(Lnet/youmi/android/ae;)Lnet/youmi/android/y;

    move-result-object v0

    iget-object v0, v0, Lnet/youmi/android/y;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/youmi/android/bg;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
