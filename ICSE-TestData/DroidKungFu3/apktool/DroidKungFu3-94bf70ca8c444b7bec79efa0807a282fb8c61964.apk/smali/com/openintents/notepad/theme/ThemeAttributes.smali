.class public Lcom/openintents/notepad/theme/ThemeAttributes;
.super Ljava/lang/Object;
.source "ThemeAttributes.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mPackageName:Ljava/lang/String;

.field mThemeId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "themeId"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mThemeId:I

    .line 39
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v6, 0x0

    .line 42
    iget-object v3, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    iget-object v5, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/openintents/notepad/theme/ThemeUtils;->getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 43
    .local v1, "attr":[I
    iget-object v3, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mThemeId:I

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 45
    .local v2, "b":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    return v2
.end method

.method public getColor(Ljava/lang/String;I)I
    .locals 7
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v6, 0x0

    .line 50
    iget-object v3, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    iget-object v5, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/openintents/notepad/theme/ThemeUtils;->getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 51
    .local v1, "attr":[I
    iget-object v3, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mThemeId:I

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 53
    .local v2, "c":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return v2
.end method

.method public getDimensionPixelOffset(Ljava/lang/String;I)I
    .locals 7
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v6, 0x0

    .line 58
    iget-object v3, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    iget-object v5, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/openintents/notepad/theme/ThemeUtils;->getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 59
    .local v1, "attr":[I
    iget-object v3, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mThemeId:I

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 61
    .local v2, "i":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return v2
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 7
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v6, 0x0

    .line 66
    iget-object v3, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    iget-object v5, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/openintents/notepad/theme/ThemeUtils;->getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 67
    .local v1, "attr":[I
    iget-object v3, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mThemeId:I

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 69
    .local v2, "i":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return v2
.end method

.method public getResourceId(Ljava/lang/String;I)I
    .locals 7
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v6, 0x0

    .line 74
    iget-object v3, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    iget-object v5, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/openintents/notepad/theme/ThemeUtils;->getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 75
    .local v1, "attr":[I
    iget-object v3, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mThemeId:I

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 77
    .local v2, "i":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 82
    iget-object v3, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    iget-object v5, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/openintents/notepad/theme/ThemeUtils;->getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 83
    .local v1, "attr":[I
    iget-object v3, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/openintents/notepad/theme/ThemeAttributes;->mThemeId:I

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-object v2
.end method
