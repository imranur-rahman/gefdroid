.class Lcom/adview/AdViewLayout$HandleAdRunnable;
.super Ljava/lang/Object;
.source "AdViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adview/AdViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleAdRunnable"
.end annotation


# instance fields
.field private adViewLayoutReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adview/AdViewLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;)V
    .locals 1
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adview/AdViewLayout$HandleAdRunnable;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    .line 283
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lcom/adview/AdViewLayout$HandleAdRunnable;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adview/AdViewLayout;

    .line 286
    .local v0, "adViewLayout":Lcom/adview/AdViewLayout;
    if-eqz v0, :cond_0

    .line 287
    # invokes: Lcom/adview/AdViewLayout;->handleAd()V
    invoke-static {v0}, Lcom/adview/AdViewLayout;->access$3(Lcom/adview/AdViewLayout;)V

    .line 289
    :cond_0
    return-void
.end method
