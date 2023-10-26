.class Lcom/feasy/jewels/Gel/Bomb$Point;
.super Ljava/lang/Object;
.source "Bomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feasy/jewels/Gel/Bomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Point"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feasy/jewels/Gel/Bomb;

.field translating:I

.field type:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(Lcom/feasy/jewels/Gel/Bomb;III)V
    .locals 0
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "type"    # I

    .prologue
    .line 62
    iput-object p1, p0, Lcom/feasy/jewels/Gel/Bomb$Point;->this$0:Lcom/feasy/jewels/Gel/Bomb;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p2, p0, Lcom/feasy/jewels/Gel/Bomb$Point;->x:I

    .line 60
    iput p3, p0, Lcom/feasy/jewels/Gel/Bomb$Point;->y:I

    .line 61
    iput p4, p0, Lcom/feasy/jewels/Gel/Bomb$Point;->type:I

    return-void
.end method
