.class Lcom/millennialmedia/android/MMAdView$MMJSInterface$1;
.super Ljava/lang/Object;
.source "MMAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdView$MMJSInterface;->shouldOpen(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MMAdView$MMJSInterface;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView$MMJSInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface$1;->this$1:Lcom/millennialmedia/android/MMAdView$MMJSInterface;

    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface$1;->val$url:Ljava/lang/String;

    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface$1;->this$1:Lcom/millennialmedia/android/MMAdView$MMJSInterface;

    # getter for: Lcom/millennialmedia/android/MMAdView$MMJSInterface;->this$0:Lcom/millennialmedia/android/MMAdView;
    invoke-static {v0}, Lcom/millennialmedia/android/MMAdView$MMJSInterface;->access$0(Lcom/millennialmedia/android/MMAdView$MMJSInterface;)Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$MMJSInterface$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->touchUpInside(Ljava/lang/String;)V

    .line 1179
    return-void
.end method
