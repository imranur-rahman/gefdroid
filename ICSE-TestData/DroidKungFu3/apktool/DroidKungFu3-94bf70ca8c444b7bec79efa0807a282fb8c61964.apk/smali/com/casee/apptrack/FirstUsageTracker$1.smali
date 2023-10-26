.class Lcom/casee/apptrack/FirstUsageTracker$1;
.super Ljava/lang/Thread;
.source "FirstUsageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/casee/apptrack/FirstUsageTracker;->doTrackASync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/casee/apptrack/FirstUsageTracker;


# direct methods
.method constructor <init>(Lcom/casee/apptrack/FirstUsageTracker;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/casee/apptrack/FirstUsageTracker$1;->this$0:Lcom/casee/apptrack/FirstUsageTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/casee/apptrack/FirstUsageTracker$1;->this$0:Lcom/casee/apptrack/FirstUsageTracker;

    iget-object v1, p0, Lcom/casee/apptrack/FirstUsageTracker$1;->this$0:Lcom/casee/apptrack/FirstUsageTracker;

    # getter for: Lcom/casee/apptrack/FirstUsageTracker;->listener:Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;
    invoke-static {v1}, Lcom/casee/apptrack/FirstUsageTracker;->access$000(Lcom/casee/apptrack/FirstUsageTracker;)Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/casee/apptrack/FirstUsageTracker;->doTrack(Lcom/casee/apptrack/FirstUsageTracker$TrackerListener;)V

    .line 57
    return-void
.end method
