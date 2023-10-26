.class public Lcom/openintents/notepad/util/ExtractTitle;
.super Ljava/lang/Object;
.source "ExtractTitle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final extractTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x1e

    const/4 v5, 0x0

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 7
    .local v2, "length":I
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 9
    .local v3, "title":Ljava/lang/String;
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 10
    .local v0, "firstNewline":I
    if-lez v0, :cond_1

    .line 11
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 20
    :cond_0
    :goto_0
    return-object v3

    .line 12
    :cond_1
    if-le v2, v6, :cond_0

    .line 14
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 15
    .local v1, "lastSpace":I
    if-lez v1, :cond_0

    .line 16
    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
