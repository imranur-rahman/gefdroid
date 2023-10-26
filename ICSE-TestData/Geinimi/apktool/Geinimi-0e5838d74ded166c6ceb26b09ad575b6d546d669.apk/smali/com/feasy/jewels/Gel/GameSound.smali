.class public Lcom/feasy/jewels/Gel/GameSound;
.super Ljava/lang/Object;
.source "GameSound.java"


# instance fields
.field public final ST_DROP:I

.field public final ST_LEVEL:I

.field public final ST_MAX:I

.field public final ST_MOVE:I

.field public final ST_MOVE_OK:I

.field public final ST_MUSIC:I

.field public mMusicOn:Z

.field private mRand:Ljava/util/Random;

.field public mSoundOn:Z

.field public mVibrateOn:Z

.field private musicId:[I


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 2
    .param p1, "bMusicOn"    # Z
    .param p2, "bSoundOn"    # Z
    .param p3, "bVibrateOn"    # Z

    .prologue
    const/4 v1, 0x5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput v0, p0, Lcom/feasy/jewels/Gel/GameSound;->ST_MUSIC:I

    .line 7
    const/4 v0, 0x2

    iput v0, p0, Lcom/feasy/jewels/Gel/GameSound;->ST_MOVE:I

    .line 8
    const/4 v0, 0x3

    iput v0, p0, Lcom/feasy/jewels/Gel/GameSound;->ST_MOVE_OK:I

    .line 9
    const/4 v0, 0x4

    iput v0, p0, Lcom/feasy/jewels/Gel/GameSound;->ST_LEVEL:I

    .line 10
    iput v1, p0, Lcom/feasy/jewels/Gel/GameSound;->ST_DROP:I

    .line 11
    const/4 v0, 0x6

    iput v0, p0, Lcom/feasy/jewels/Gel/GameSound;->ST_MAX:I

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 17
    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameSound;->musicId:[I

    .line 18
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/feasy/jewels/Gel/GameSound;->mRand:Ljava/util/Random;

    .line 28
    iput-boolean p1, p0, Lcom/feasy/jewels/Gel/GameSound;->mMusicOn:Z

    .line 29
    iput-boolean p2, p0, Lcom/feasy/jewels/Gel/GameSound;->mSoundOn:Z

    .line 30
    iput-boolean p3, p0, Lcom/feasy/jewels/Gel/GameSound;->mVibrateOn:Z

    .line 31
    return-void

    .line 13
    :array_0
    .array-data 4
        0x7f040000
        0x7f040001
        0x7f040002
        0x7f040003
        0x7f040004
    .end array-data
.end method


# virtual methods
.method public getSoundResIdByType(I)I
    .locals 4
    .param p1, "st"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "resId":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/feasy/jewels/Gel/GameSound;->musicId:[I

    iget-object v2, p0, Lcom/feasy/jewels/Gel/GameSound;->mRand:Ljava/util/Random;

    iget-object v3, p0, Lcom/feasy/jewels/Gel/GameSound;->musicId:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget v0, v1, v2

    .line 50
    :goto_0
    return v0

    .line 39
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 40
    const v0, 0x7f040008

    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 42
    const v0, 0x7f040009

    goto :goto_0

    .line 43
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 44
    const v0, 0x7f04000a

    goto :goto_0

    .line 45
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 46
    const v0, 0x7f040005

    goto :goto_0

    .line 48
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
