.class public abstract Lcom/geinimi/AdPushable;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static e:[Ljava/lang/String;


# instance fields
.field private c:I

.field private d:I

.field private f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x23

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/AdPushable;->a:Ljava/lang/String;

    const/16 v0, 0x24

    invoke-static {v0}, Lcom/geinimi/c/m;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geinimi/AdPushable;->b:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/geinimi/AdPushable;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/geinimi/AdPushable;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/geinimi/AdPushable;->e:[Ljava/lang/String;

    new-instance v0, Lcom/geinimi/n;

    invoke-direct {v0}, Lcom/geinimi/n;-><init>()V

    sput-object v0, Lcom/geinimi/AdPushable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Ljava/util/HashMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/geinimi/AdPushable;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/geinimi/AdPushable;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/geinimi/AdPushable;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic a(Lcom/geinimi/AdPushable;I)I
    .locals 0

    iput p1, p0, Lcom/geinimi/AdPushable;->c:I

    return p1
.end method

.method static synthetic b(Lcom/geinimi/AdPushable;I)I
    .locals 0

    iput p1, p0, Lcom/geinimi/AdPushable;->d:I

    return p1
.end method

.method public static b(Ljava/util/HashMap;)Lcom/geinimi/AdPushable;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_2

    move v0, v3

    :goto_0
    if-eqz v0, :cond_6

    sget-object v0, Lcom/geinimi/AdPushable;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-object v0, Lcom/geinimi/AdPushable;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v4, :cond_5

    new-instance v1, Lcom/geinimi/r;

    invoke-direct {v1, p0}, Lcom/geinimi/r;-><init>(Ljava/util/HashMap;)V

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    iput v2, v1, Lcom/geinimi/AdPushable;->c:I

    iput v0, v1, Lcom/geinimi/AdPushable;->d:I

    :cond_1
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    move v0, v3

    :goto_3
    sget-object v2, Lcom/geinimi/AdPushable;->e:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    sget-object v2, Lcom/geinimi/AdPushable;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    new-instance v1, Lcom/geinimi/m;

    invoke-direct {v1, p0}, Lcom/geinimi/m;-><init>(Ljava/util/HashMap;)V

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/AdPushable;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/geinimi/AdPushable;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method abstract a(Landroid/os/Parcel;)V
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/geinimi/AdPushable;->a()[Ljava/lang/String;

    move-result-object v0

    move v1, v5

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/geinimi/AdPushable;->f:Ljava/util/HashMap;

    aget-object v3, v0, v1

    aget-object v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_1
    sget-object v1, Lcom/geinimi/AdPushable;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/geinimi/AdPushable;->f:Ljava/util/HashMap;

    sget-object v2, Lcom/geinimi/AdPushable;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/geinimi/AdPushable;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public abstract a(Landroid/content/Context;)Z
.end method

.method protected abstract a()[Ljava/lang/String;
.end method

.method abstract b(Landroid/os/Parcel;)V
.end method

.method public abstract b()Z
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/geinimi/r;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/geinimi/AdPushable;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Lcom/geinimi/AdPushable;->c:I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/geinimi/AdPushable;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/geinimi/AdPushable;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/geinimi/AdPushable;->c:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 2

    iget v0, p0, Lcom/geinimi/AdPushable;->d:I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/geinimi/AdPushable;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/geinimi/AdPushable;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/geinimi/AdPushable;->d:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/geinimi/AdPushable;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/geinimi/AdPushable;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/geinimi/AdPushable;->a()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/geinimi/AdPushable;->c:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/geinimi/AdPushable;->d:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/geinimi/AdPushable;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/geinimi/AdPushable;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/geinimi/AdPushable;->a(Landroid/os/Parcel;)V

    return-void
.end method
