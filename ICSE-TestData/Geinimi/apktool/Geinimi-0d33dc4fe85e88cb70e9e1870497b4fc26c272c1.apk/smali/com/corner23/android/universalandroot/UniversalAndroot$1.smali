.class Lcom/corner23/android/universalandroot/UniversalAndroot$1;
.super Ljava/lang/Object;
.source "UniversalAndroot.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corner23/android/universalandroot/UniversalAndroot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;


# direct methods
.method constructor <init>(Lcom/corner23/android/universalandroot/UniversalAndroot;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$1;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/corner23/android/universalandroot/UniversalAndroot$1;->this$0:Lcom/corner23/android/universalandroot/UniversalAndroot;

    # invokes: Lcom/corner23/android/universalandroot/UniversalAndroot;->go4root()V
    invoke-static {v0}, Lcom/corner23/android/universalandroot/UniversalAndroot;->access$0(Lcom/corner23/android/universalandroot/UniversalAndroot;)V

    .line 221
    return-void
.end method
