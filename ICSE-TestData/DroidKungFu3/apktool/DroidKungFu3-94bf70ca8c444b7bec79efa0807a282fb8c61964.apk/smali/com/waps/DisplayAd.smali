.class public Lcom/waps/DisplayAd;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/waps/DisplayAdNotifier;

.field private static f:Lcom/waps/n;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static final n:[B


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/view/View;

.field final c:Ljava/lang/String;

.field private d:Lcom/waps/p;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private o:[B

.field private p:I

.field private q:I

.field private r:Z

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/waps/DisplayAd;->f:Lcom/waps/n;

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/waps/DisplayAd;->n:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waps/DisplayAd;->d:Lcom/waps/p;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/DisplayAd;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/DisplayAd;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/DisplayAd;->j:Ljava/lang/String;

    const-string v0, "Display Ad"

    iput-object v0, p0, Lcom/waps/DisplayAd;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/waps/DisplayAd;->g:Landroid/content/Context;

    new-instance v0, Lcom/waps/n;

    invoke-direct {v0}, Lcom/waps/n;-><init>()V

    sput-object v0, Lcom/waps/DisplayAd;->f:Lcom/waps/n;

    iget-object v0, p0, Lcom/waps/DisplayAd;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/waps/DisplayAd;->g:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/waps/DisplayAd;->f:Lcom/waps/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waps/n;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/waps/DisplayAd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/DisplayAd;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/waps/DisplayAd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/DisplayAd;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/waps/n;
    .locals 1

    sget-object v0, Lcom/waps/DisplayAd;->f:Lcom/waps/n;

    return-object v0
.end method

.method static synthetic access$400()Lcom/waps/DisplayAdNotifier;
    .locals 1

    sget-object v0, Lcom/waps/DisplayAd;->e:Lcom/waps/DisplayAdNotifier;

    return-object v0
.end method

.method static synthetic access$500(Lcom/waps/DisplayAd;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/waps/DisplayAd;->buildResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/waps/DisplayAd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/waps/DisplayAd;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/waps/DisplayAd;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/waps/DisplayAd;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/waps/DisplayAd;->k:Ljava/lang/String;

    return-object v0
.end method

.method private buildResponse(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "ClickUrl"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/waps/DisplayAd;->k:Ljava/lang/String;

    const-string v1, "AdPackage"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/waps/DisplayAd;->l:Ljava/lang/String;

    const-string v1, "NewBrowser"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/waps/DisplayAd;->m:Ljava/lang/String;

    const-string v1, "Image"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/waps/DisplayAd;->decodeBase64([BII)V

    iget-object v0, p0, Lcom/waps/DisplayAd;->o:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/waps/DisplayAd;->p:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/DisplayAd;->a:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/waps/DisplayAd;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waps/DisplayAd;->b:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/waps/DisplayAd;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/waps/DisplayAd;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/waps/DisplayAd;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/waps/DisplayAd;->b:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/waps/DisplayAd;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/waps/DisplayAd;->b:Landroid/view/View;

    new-instance v1, Lcom/waps/o;

    invoke-direct {v1, p0}, Lcom/waps/o;-><init>(Lcom/waps/DisplayAd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/waps/DisplayAd;->e:Lcom/waps/DisplayAdNotifier;

    iget-object v1, p0, Lcom/waps/DisplayAd;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/waps/DisplayAdNotifier;->getDisplayAdResponse(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v3

    goto :goto_0
.end method

.method private getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v7, ""

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    move-object v3, v7

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method


# virtual methods
.method decodeBase64([BII)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/waps/DisplayAd;->o:[B

    iput v1, p0, Lcom/waps/DisplayAd;->p:I

    iput-boolean v1, p0, Lcom/waps/DisplayAd;->r:Z

    iput v1, p0, Lcom/waps/DisplayAd;->q:I

    if-gez p3, :cond_0

    iput-boolean v5, p0, Lcom/waps/DisplayAd;->r:Z

    :cond_0
    move v0, v1

    move v1, p2

    :goto_0
    if-ge v0, p3, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_3

    iput-boolean v5, p0, Lcom/waps/DisplayAd;->r:Z

    :cond_1
    iget-boolean v0, p0, Lcom/waps/DisplayAd;->r:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/waps/DisplayAd;->q:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/waps/DisplayAd;->s:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/waps/DisplayAd;->s:I

    iget v0, p0, Lcom/waps/DisplayAd;->q:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-ltz v1, :cond_4

    sget-object v3, Lcom/waps/DisplayAd;->n:[B

    array-length v3, v3

    if-ge v1, v3, :cond_4

    sget-object v3, Lcom/waps/DisplayAd;->n:[B

    aget-byte v1, v3, v1

    if-ltz v1, :cond_4

    iget v3, p0, Lcom/waps/DisplayAd;->q:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/waps/DisplayAd;->q:I

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/waps/DisplayAd;->q:I

    iget v3, p0, Lcom/waps/DisplayAd;->s:I

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    iput v1, p0, Lcom/waps/DisplayAd;->s:I

    iget v1, p0, Lcom/waps/DisplayAd;->q:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/waps/DisplayAd;->o:[B

    iget v3, p0, Lcom/waps/DisplayAd;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/waps/DisplayAd;->p:I

    iget v4, p0, Lcom/waps/DisplayAd;->s:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget-object v1, p0, Lcom/waps/DisplayAd;->o:[B

    iget v3, p0, Lcom/waps/DisplayAd;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/waps/DisplayAd;->p:I

    iget v4, p0, Lcom/waps/DisplayAd;->s:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget-object v1, p0, Lcom/waps/DisplayAd;->o:[B

    iget v3, p0, Lcom/waps/DisplayAd;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/waps/DisplayAd;->p:I

    iget v4, p0, Lcom/waps/DisplayAd;->s:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/waps/DisplayAd;->s:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/waps/DisplayAd;->s:I

    iget-object v0, p0, Lcom/waps/DisplayAd;->o:[B

    iget v1, p0, Lcom/waps/DisplayAd;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/waps/DisplayAd;->p:I

    iget v2, p0, Lcom/waps/DisplayAd;->s:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/waps/DisplayAd;->o:[B

    iget v1, p0, Lcom/waps/DisplayAd;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/waps/DisplayAd;->p:I

    iget v2, p0, Lcom/waps/DisplayAd;->s:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/waps/DisplayAd;->o:[B

    iget v1, p0, Lcom/waps/DisplayAd;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/waps/DisplayAd;->p:I

    iget v2, p0, Lcom/waps/DisplayAd;->s:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDisplayAdDataFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/waps/DisplayAdNotifier;)V
    .locals 2

    iput-object p1, p0, Lcom/waps/DisplayAd;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/DisplayAd;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display/ad?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/DisplayAd;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/waps/DisplayAd;->j:Ljava/lang/String;

    sput-object p3, Lcom/waps/DisplayAd;->e:Lcom/waps/DisplayAdNotifier;

    new-instance v0, Lcom/waps/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/waps/p;-><init>(Lcom/waps/DisplayAd;Lcom/waps/o;)V

    iput-object v0, p0, Lcom/waps/DisplayAd;->d:Lcom/waps/p;

    iget-object v0, p0, Lcom/waps/DisplayAd;->d:Lcom/waps/p;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
