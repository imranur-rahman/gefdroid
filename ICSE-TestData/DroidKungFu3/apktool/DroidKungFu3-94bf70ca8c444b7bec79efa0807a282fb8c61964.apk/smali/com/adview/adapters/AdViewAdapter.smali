.class public abstract Lcom/adview/adapters/AdViewAdapter;
.super Ljava/lang/Object;
.source "AdViewAdapter.java"


# instance fields
.field protected final adViewLayoutReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adview/AdViewLayout;",
            ">;"
        }
    .end annotation
.end field

.field protected ration:Lcom/adview/obj/Ration;


# direct methods
.method public constructor <init>(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 1
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adview/adapters/AdViewAdapter;->adViewLayoutReference:Ljava/lang/ref/WeakReference;

    .line 24
    iput-object p2, p0, Lcom/adview/adapters/AdViewAdapter;->ration:Lcom/adview/obj/Ration;

    .line 26
    return-void
.end method

.method private static getAdapter(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;
    .locals 3
    .param p0, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p1, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 30
    :try_start_0
    iget v1, p1, Lcom/adview/obj/Ration;->type:I

    packed-switch v1, :pswitch_data_0

    .line 133
    :pswitch_0
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    .line 142
    :goto_0
    return-object v1

    .line 32
    :pswitch_1
    const-string v1, "com.google.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "com.adview.adapters.AdMobAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 41
    :pswitch_2
    const-string v1, "com.millennialmedia.android.MMAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 42
    const-string v1, "com.adview.adapters.MillennialAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 49
    :pswitch_3
    const-string v1, "com.wooboo.adlib_android.WoobooAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 50
    const-string v1, "com.adview.adapters.WoobooAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 56
    :pswitch_4
    const-string v1, "net.youmi.android.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 57
    const-string v1, "com.adview.adapters.YoumiAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 60
    :cond_3
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 63
    :pswitch_5
    const-string v1, "com.casee.adsdk.CaseeAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 64
    const-string v1, "com.adview.adapters.CaseeAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 67
    :cond_4
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 70
    :pswitch_6
    const-string v1, "com.wiyun.ad.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 71
    const-string v1, "com.adview.adapters.WiyunAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 74
    :cond_5
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto :goto_0

    .line 77
    :pswitch_7
    const-string v1, "com.adchina.android.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 78
    const-string v1, "com.adview.adapters.AdChinaAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 81
    :cond_6
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 84
    :pswitch_8
    const-string v1, "com.adview.ad.KyAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 85
    const-string v1, "com.adview.adapters.AdViewHouseAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 88
    :cond_7
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 91
    :pswitch_9
    const-string v1, "cn.domob.android.ads.DomobAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 92
    const-string v1, "com.adview.adapters.DomobAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 95
    :cond_8
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 98
    :pswitch_a
    const-string v1, "com.madhouse.android.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 99
    const-string v1, "com.adview.adapters.SmartAdAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 102
    :cond_9
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 105
    :pswitch_b
    const-string v1, "com.vpon.adon.android.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 106
    const-string v1, "com.adview.adapters.VponAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 109
    :cond_a
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 112
    :pswitch_c
    const-string v1, "com.energysource.szj.embeded.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 113
    const-string v1, "com.adview.adapters.AdTouchAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 116
    :cond_b
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 119
    :pswitch_d
    const-string v1, "com.adwo.adsdk.AdwoAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 120
    const-string v1, "com.adview.adapters.AdwoAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 123
    :cond_c
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 126
    :pswitch_e
    const-string v1, "com.mt.airad.AirAD"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 127
    const-string v1, "com.adview.adapters.AirAdAdapter"

    invoke-static {v1, p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 130
    :cond_d
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto/16 :goto_0

    .line 136
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 139
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 140
    .local v0, "e":Ljava/lang/VerifyError;
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 141
    const-string v1, "AdView"

    const-string v2, "YYY - Caught VerifyError"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :cond_e
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v1

    goto/16 :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private static getNetworkAdapter(Ljava/lang/String;Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;
    .locals 8
    .param p0, "networkAdapter"    # Ljava/lang/String;
    .param p1, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p2, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 151
    .local v1, "adViewAdapter":Lcom/adview/adapters/AdViewAdapter;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 153
    .local v2, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/adview/adapters/AdViewAdapter;>;"
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Class;

    .line 154
    .local v5, "parameterTypes":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Lcom/adview/AdViewLayout;

    aput-object v7, v5, v6

    .line 155
    const/4 v6, 0x1

    const-class v7, Lcom/adview/obj/Ration;

    aput-object v7, v5, v6

    .line 157
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 159
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/adview/adapters/AdViewAdapter;>;"
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Object;

    .line 160
    .local v3, "args":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object p1, v3, v6

    .line 161
    const/4 v6, 0x1

    aput-object p2, v3, v6

    .line 163
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/adview/adapters/AdViewAdapter;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v2    # "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/adview/adapters/AdViewAdapter;>;"
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/adview/adapters/AdViewAdapter;>;"
    .end local v5    # "parameterTypes":[Ljava/lang/Class;
    :goto_0
    return-object v1

    .line 170
    :catch_0
    move-exception v6

    goto :goto_0

    .line 169
    :catch_1
    move-exception v6

    goto :goto_0

    .line 168
    :catch_2
    move-exception v6

    goto :goto_0

    .line 167
    :catch_3
    move-exception v6

    goto :goto_0

    .line 166
    :catch_4
    move-exception v6

    goto :goto_0

    .line 165
    :catch_5
    move-exception v6

    goto :goto_0
.end method

.method public static handle(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)V
    .locals 3
    .param p0, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p1, "ration"    # Lcom/adview/obj/Ration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {p0, p1}, Lcom/adview/adapters/AdViewAdapter;->getAdapter(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;

    move-result-object v0

    .line 183
    .local v0, "adapter":Lcom/adview/adapters/AdViewAdapter;
    if-eqz v0, :cond_1

    .line 184
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const-string v1, "AdView SDK"

    const-string v2, "Valid adapter, calling handle()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    invoke-virtual {v0}, Lcom/adview/adapters/AdViewAdapter;->handle()V

    .line 191
    return-void

    .line 189
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid adapter"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static unknownAdNetwork(Lcom/adview/AdViewLayout;Lcom/adview/obj/Ration;)Lcom/adview/adapters/AdViewAdapter;
    .locals 3
    .param p0, "adViewLayout"    # Lcom/adview/AdViewLayout;
    .param p1, "ration"    # Lcom/adview/obj/Ration;

    .prologue
    .line 176
    invoke-static {}, Lcom/adview/AdViewTargeting;->getTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "AdView SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported ration type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/adview/obj/Ration;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract handle()V
.end method
