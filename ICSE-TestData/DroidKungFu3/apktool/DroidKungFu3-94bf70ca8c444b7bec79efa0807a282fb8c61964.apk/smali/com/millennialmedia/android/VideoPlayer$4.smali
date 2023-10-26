.class Lcom/millennialmedia/android/VideoPlayer$4;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer$4;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$4;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    # invokes: Lcom/millennialmedia/android/VideoPlayer;->playVideo()V
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$0(Lcom/millennialmedia/android/VideoPlayer;)V

    .line 170
    return-void
.end method
