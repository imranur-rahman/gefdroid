.class public final enum Lcom/gp/tiltmazes/Direction;
.super Ljava/lang/Enum;
.source "Direction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gp/tiltmazes/Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWN:Lcom/gp/tiltmazes/Direction;

.field private static final synthetic ENUM$VALUES:[Lcom/gp/tiltmazes/Direction;

.field public static final enum LEFT:Lcom/gp/tiltmazes/Direction;

.field public static final enum NONE:Lcom/gp/tiltmazes/Direction;

.field public static final enum RIGHT:Lcom/gp/tiltmazes/Direction;

.field public static final enum UP:Lcom/gp/tiltmazes/Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/gp/tiltmazes/Direction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/gp/tiltmazes/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gp/tiltmazes/Direction;->NONE:Lcom/gp/tiltmazes/Direction;

    .line 36
    new-instance v0, Lcom/gp/tiltmazes/Direction;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/gp/tiltmazes/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gp/tiltmazes/Direction;->LEFT:Lcom/gp/tiltmazes/Direction;

    .line 37
    new-instance v0, Lcom/gp/tiltmazes/Direction;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/gp/tiltmazes/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gp/tiltmazes/Direction;->RIGHT:Lcom/gp/tiltmazes/Direction;

    .line 38
    new-instance v0, Lcom/gp/tiltmazes/Direction;

    const-string v1, "UP"

    invoke-direct {v0, v1, v5}, Lcom/gp/tiltmazes/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gp/tiltmazes/Direction;->UP:Lcom/gp/tiltmazes/Direction;

    .line 39
    new-instance v0, Lcom/gp/tiltmazes/Direction;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v6}, Lcom/gp/tiltmazes/Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gp/tiltmazes/Direction;->DOWN:Lcom/gp/tiltmazes/Direction;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/gp/tiltmazes/Direction;

    sget-object v1, Lcom/gp/tiltmazes/Direction;->NONE:Lcom/gp/tiltmazes/Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gp/tiltmazes/Direction;->LEFT:Lcom/gp/tiltmazes/Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gp/tiltmazes/Direction;->RIGHT:Lcom/gp/tiltmazes/Direction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gp/tiltmazes/Direction;->UP:Lcom/gp/tiltmazes/Direction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gp/tiltmazes/Direction;->DOWN:Lcom/gp/tiltmazes/Direction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/gp/tiltmazes/Direction;->ENUM$VALUES:[Lcom/gp/tiltmazes/Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gp/tiltmazes/Direction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gp/tiltmazes/Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gp/tiltmazes/Direction;

    return-object p0
.end method

.method public static values()[Lcom/gp/tiltmazes/Direction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gp/tiltmazes/Direction;->ENUM$VALUES:[Lcom/gp/tiltmazes/Direction;

    array-length v1, v0

    new-array v2, v1, [Lcom/gp/tiltmazes/Direction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
