.class public final Lcom/openintents/notepad/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openintents/notepad/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Notepad:[I

.field public static final Notepad_background:I = 0x0

.field public static final Notepad_backgroundPadding:I = 0x1

.field public static final Notepad_backgroundPaddingBottom:I = 0x5

.field public static final Notepad_backgroundPaddingLeft:I = 0x2

.field public static final Notepad_backgroundPaddingRight:I = 0x4

.field public static final Notepad_backgroundPaddingTop:I = 0x3

.field public static final Notepad_lineColor:I = 0x7

.field public static final Notepad_lineMode:I = 0x6

.field public static final Notepad_textColor:I = 0xe

.field public static final Notepad_textSizeLarge:I = 0xd

.field public static final Notepad_textSizeMedium:I = 0xc

.field public static final Notepad_textSizeSmall:I = 0xb

.field public static final Notepad_textSizeTiny:I = 0xa

.field public static final Notepad_textTypeface:I = 0x8

.field public static final Notepad_textUpperCaseFont:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1103
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/openintents/notepad/R$styleable;->Notepad:[I

    .line 1061
    return-void

    .line 1103
    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
