.class Lcom/vpon/adon/android/WebInApp$1;
.super Ljava/lang/Object;
.source "WebInApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/adon/android/WebInApp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vpon/adon/android/WebInApp;


# direct methods
.method constructor <init>(Lcom/vpon/adon/android/WebInApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vpon/adon/android/WebInApp$1;->this$0:Lcom/vpon/adon/android/WebInApp;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vpon/adon/android/WebInApp$1;->this$0:Lcom/vpon/adon/android/WebInApp;

    # getter for: Lcom/vpon/adon/android/WebInApp;->adOnWebChromeClient:Lcom/vpon/adon/android/WebInAppWebChromeClient;
    invoke-static {v0}, Lcom/vpon/adon/android/WebInApp;->access$0(Lcom/vpon/adon/android/WebInApp;)Lcom/vpon/adon/android/WebInAppWebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/vpon/adon/android/WebInApp$1;->this$0:Lcom/vpon/adon/android/WebInApp;

    # getter for: Lcom/vpon/adon/android/WebInApp;->adOnWebChromeClient:Lcom/vpon/adon/android/WebInAppWebChromeClient;
    invoke-static {v0}, Lcom/vpon/adon/android/WebInApp;->access$0(Lcom/vpon/adon/android/WebInApp;)Lcom/vpon/adon/android/WebInAppWebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vpon/adon/android/WebInAppWebChromeClient;->onCustomViewHidden()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/vpon/adon/android/WebInApp$1;->this$0:Lcom/vpon/adon/android/WebInApp;

    invoke-virtual {v0}, Lcom/vpon/adon/android/WebInApp;->finish()V

    .line 90
    return-void
.end method
