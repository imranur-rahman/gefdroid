.class Lcom/gp/tiltmazes/TiltMazesActivity$1;
.super Ljava/lang/Object;
.source "TiltMazesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gp/tiltmazes/TiltMazesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gp/tiltmazes/TiltMazesActivity;


# direct methods
.method constructor <init>(Lcom/gp/tiltmazes/TiltMazesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gp/tiltmazes/TiltMazesActivity$1;->this$0:Lcom/gp/tiltmazes/TiltMazesActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/gp/tiltmazes/TiltMazesActivity$1;->this$0:Lcom/gp/tiltmazes/TiltMazesActivity;

    # getter for: Lcom/gp/tiltmazes/TiltMazesActivity;->mAboutDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/gp/tiltmazes/TiltMazesActivity;->access$0(Lcom/gp/tiltmazes/TiltMazesActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 104
    return-void
.end method
