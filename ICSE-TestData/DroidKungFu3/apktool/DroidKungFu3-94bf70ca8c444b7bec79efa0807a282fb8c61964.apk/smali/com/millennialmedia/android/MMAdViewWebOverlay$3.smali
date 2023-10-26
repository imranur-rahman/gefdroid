.class Lcom/millennialmedia/android/MMAdViewWebOverlay$3;
.super Ljava/lang/Object;
.source "MMAdViewWebOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewWebOverlay;-><init>(Landroid/app/Activity;IJLjava/lang/String;ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewWebOverlay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$3;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 202
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Close button"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewWebOverlay$3;->this$0:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    const/4 v1, 0x1

    # invokes: Lcom/millennialmedia/android/MMAdViewWebOverlay;->dismiss(Z)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->access$0(Lcom/millennialmedia/android/MMAdViewWebOverlay;Z)V

    .line 204
    return-void
.end method
