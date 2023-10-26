.class Lcom/openintents/notepad/crypto/EncryptActivity$1;
.super Ljava/lang/Object;
.source "EncryptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openintents/notepad/crypto/EncryptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openintents/notepad/crypto/EncryptActivity;


# direct methods
.method constructor <init>(Lcom/openintents/notepad/crypto/EncryptActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/openintents/notepad/crypto/EncryptActivity$1;->this$0:Lcom/openintents/notepad/crypto/EncryptActivity;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/openintents/notepad/crypto/EncryptActivity$1;->this$0:Lcom/openintents/notepad/crypto/EncryptActivity;

    invoke-virtual {v0}, Lcom/openintents/notepad/crypto/EncryptActivity;->finish()V

    .line 253
    return-void
.end method
