.class final Lcom/geinimi/ads/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/geinimi/ads/a;->a(Ljava/lang/String;)Lcom/geinimi/ads/Advertisable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geinimi/ads/Advertisable;->h()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    invoke-static {v0}, Lcom/geinimi/ads/Advertisable;->a(Lcom/geinimi/ads/Advertisable;)Ljava/util/HashMap;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/geinimi/ads/Advertisable;

    return-object v0
.end method
