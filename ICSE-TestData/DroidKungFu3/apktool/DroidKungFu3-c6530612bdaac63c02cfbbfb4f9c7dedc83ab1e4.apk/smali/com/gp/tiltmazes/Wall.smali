.class public final Lcom/gp/tiltmazes/Wall;
.super Ljava/lang/Object;
.source "Wall.java"


# static fields
.field public static final BOTTOM:I = 0x4

.field public static final LEFT:I = 0x8

.field public static final RIGHT:I = 0x2

.field public static final TOP:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
