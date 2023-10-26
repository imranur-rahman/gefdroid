.class public Lcom/openintents/util/UpperCaseTransformationMethod;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "UpperCaseTransformationMethod.java"


# static fields
.field private static ORIGINAL:[C

.field private static REPLACEMENT:[C

.field private static sInstance:Lcom/openintents/util/UpperCaseTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1a

    .line 7
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/openintents/util/UpperCaseTransformationMethod;->ORIGINAL:[C

    .line 10
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/openintents/util/UpperCaseTransformationMethod;->REPLACEMENT:[C

    .line 5
    return-void

    .line 7
    nop

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 10
    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/openintents/util/UpperCaseTransformationMethod;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/openintents/util/UpperCaseTransformationMethod;->sInstance:Lcom/openintents/util/UpperCaseTransformationMethod;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/openintents/util/UpperCaseTransformationMethod;->sInstance:Lcom/openintents/util/UpperCaseTransformationMethod;

    .line 34
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/openintents/util/UpperCaseTransformationMethod;

    invoke-direct {v0}, Lcom/openintents/util/UpperCaseTransformationMethod;-><init>()V

    sput-object v0, Lcom/openintents/util/UpperCaseTransformationMethod;->sInstance:Lcom/openintents/util/UpperCaseTransformationMethod;

    .line 34
    sget-object v0, Lcom/openintents/util/UpperCaseTransformationMethod;->sInstance:Lcom/openintents/util/UpperCaseTransformationMethod;

    goto :goto_0
.end method


# virtual methods
.method protected getOriginal()[C
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/openintents/util/UpperCaseTransformationMethod;->ORIGINAL:[C

    return-object v0
.end method

.method protected getReplacement()[C
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/openintents/util/UpperCaseTransformationMethod;->REPLACEMENT:[C

    return-object v0
.end method
