.class Lcom/energysource/szj/embeded/AdView$AdViewTime;
.super Ljava/lang/Object;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/energysource/szj/embeded/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdViewTime"
.end annotation


# instance fields
.field private orientation:I

.field final synthetic this$0:Lcom/energysource/szj/embeded/AdView;

.field private time_1:J

.field private time_2:J


# direct methods
.method constructor <init>(Lcom/energysource/szj/embeded/AdView;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/energysource/szj/embeded/AdView$AdViewTime;->this$0:Lcom/energysource/szj/embeded/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lcom/energysource/szj/embeded/AdView$AdViewTime;->orientation:I

    return v0
.end method

.method public getTime_1()J
    .locals 2

    .prologue
    .line 631
    iget-wide v0, p0, Lcom/energysource/szj/embeded/AdView$AdViewTime;->time_1:J

    return-wide v0
.end method

.method public getTime_2()J
    .locals 2

    .prologue
    .line 637
    iget-wide v0, p0, Lcom/energysource/szj/embeded/AdView$AdViewTime;->time_2:J

    return-wide v0
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 646
    iput p1, p0, Lcom/energysource/szj/embeded/AdView$AdViewTime;->orientation:I

    .line 647
    return-void
.end method

.method public setTime_1(J)V
    .locals 0
    .param p1, "time_1"    # J

    .prologue
    .line 634
    iput-wide p1, p0, Lcom/energysource/szj/embeded/AdView$AdViewTime;->time_1:J

    .line 635
    return-void
.end method

.method public setTime_2(J)V
    .locals 0
    .param p1, "time_2"    # J

    .prologue
    .line 640
    iput-wide p1, p0, Lcom/energysource/szj/embeded/AdView$AdViewTime;->time_2:J

    .line 641
    return-void
.end method
