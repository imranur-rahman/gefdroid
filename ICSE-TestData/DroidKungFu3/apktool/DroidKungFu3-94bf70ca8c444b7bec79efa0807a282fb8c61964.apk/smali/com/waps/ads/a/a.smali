.class public abstract Lcom/waps/ads/a/a;
.super Ljava/lang/Object;


# static fields
.field protected static e:Ljava/lang/String;

.field protected static f:Ljava/lang/String;

.field protected static g:Ljava/lang/String;

.field protected static h:Ljava/lang/String;


# instance fields
.field protected final c:Ljava/lang/ref/WeakReference;

.field protected d:Lcom/waps/ads/b/c;


# direct methods
.method public constructor <init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/waps/ads/a/a;->c:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/waps/ads/a/a;->d:Lcom/waps/ads/b/c;

    return-void
.end method

.method private static getAdapter(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;
    .locals 3

    :try_start_0
    iget v0, p1, Lcom/waps/ads/b/c;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "com.google.ads.AdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.waps.ads.adapters.AdmobAdapter"

    invoke-static {v0, p0, p1}, Lcom/waps/ads/a/a;->getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-string v0, "com.inmobi.androidsdk.impl.InMobiAdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "com.waps.ads.adapters.InMobiAdapter"

    invoke-static {v0, p0, p1}, Lcom/waps/ads/a/a;->getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const-string v0, "com.qwapi.adclient.android.view.QWAdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "com.waps.ads.adapters.QuattroAdapter"

    invoke-static {v0, p0, p1}, Lcom/waps/ads/a/a;->getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const-string v0, "com.millennialmedia.android.MMAdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "com.waps.ads.adapters.MillennialAdapter"

    invoke-static {v0, p0, p1}, Lcom/waps/ads/a/a;->getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const-string v0, "com.google.ads.GoogleAdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "com.waps.ads.adapters.AdSenseAdapter"

    invoke-static {v0, p0, p1}, Lcom/waps/ads/a/a;->getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const-string v0, "com.zestadz.android.ZestADZAdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "com.waps.ads.adapters.ZestAdzAdapter"

    invoke-static {v0, p0, p1}, Lcom/waps/ads/a/a;->getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const-string v0, "net.youmi.android.AdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "com.waps.ads.adapters.YoumiAdapter"

    invoke-static {v0, p0, p1}, Lcom/waps/ads/a/a;->getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "com.wooboo.adlib_android.WoobooAdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "com.waps.ads.adapters.WoobooAdapter"

    invoke-static {v0, p0, p1}, Lcom/waps/ads/a/a;->getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "com.wiyun.ad.AdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "com.waps.ads.adapters.WiyunAdapter"

    invoke-static {v0, p0, p1}, Lcom/waps/ads/a/a;->getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "com.casee.adsdk.CaseeAdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "com.waps.ads.adapters.CaseeAdapter"

    invoke-static {v0, p0, p1}, Lcom/waps/ads/a/a;->getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "com.adchina.android.ads.AdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "com.waps.ads.adapters.AdchinaAdapter"

    invoke-static {v0, p0, p1}, Lcom/waps/ads/a/a;->getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "com.madhouse.android.ads.AdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "com.waps.ads.adapters.MadhouseAdapter"

    invoke-static {v0, p0, p1}, Lcom/waps/ads/a/a;->getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "com.waps.DisplayAd"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "com.waps.ads.adapters.WapsAdapter"

    invoke-static {v0, p0, p1}, Lcom/waps/ads/a/a;->getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Lcom/waps/ads/a/b;

    invoke-direct {v0, p0, p1}, Lcom/waps/ads/a/b;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    :try_start_1
    new-instance v0, Lcom/waps/ads/a/f;

    invoke-direct {v0, p0, p1}, Lcom/waps/ads/a/f;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/VerifyError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdGroup"

    const-string v2, "Caught VerifyError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    :try_start_2
    new-instance v0, Lcom/waps/ads/a/e;

    invoke-direct {v0, p0, p1}, Lcom/waps/ads/a/e;-><init>(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/VerifyError; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method private static getNetworkAdapter(Ljava/lang/String;Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/waps/ads/AdGroupLayout;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/waps/ads/b/c;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/waps/ads/a/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method public static handle(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/waps/ads/a/a;->getAdapter(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "AdGroup_SDK"

    const-string v2, "Valid adapterBase, calling handle()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/waps/ads/a/a;->handle()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid adapterBase"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setGoogleAdSenseAppName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/waps/ads/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method public static setGoogleAdSenseChannel(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/waps/ads/a/a;->g:Ljava/lang/String;

    return-void
.end method

.method public static setGoogleAdSenseCompanyName(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/waps/ads/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static setGoogleAdSenseExpandDirection(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/waps/ads/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method private static unknownAdNetwork(Lcom/waps/ads/AdGroupLayout;Lcom/waps/ads/b/c;)Lcom/waps/ads/a/a;
    .locals 3

    const-string v0, "AdGroup_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported ration type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/waps/ads/b/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract handle()V
.end method
