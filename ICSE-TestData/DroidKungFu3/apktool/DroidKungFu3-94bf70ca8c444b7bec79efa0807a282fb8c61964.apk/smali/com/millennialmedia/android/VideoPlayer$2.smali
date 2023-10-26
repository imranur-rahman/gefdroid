.class Lcom/millennialmedia/android/VideoPlayer$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer$2;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$2;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    # getter for: Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$1(Lcom/millennialmedia/android/VideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$2;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    # getter for: Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$1(Lcom/millennialmedia/android/VideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 155
    :cond_0
    return-void
.end method
