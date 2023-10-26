.class Lcom/waps/ads/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/waps/ads/a/b;


# direct methods
.method public constructor <init>(Lcom/waps/ads/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/waps/ads/a/c;->a:Lcom/waps/ads/a/b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/waps/ads/a/c;->a:Lcom/waps/ads/a/b;

    invoke-virtual {v0}, Lcom/waps/ads/a/b;->a()V

    return-void
.end method
