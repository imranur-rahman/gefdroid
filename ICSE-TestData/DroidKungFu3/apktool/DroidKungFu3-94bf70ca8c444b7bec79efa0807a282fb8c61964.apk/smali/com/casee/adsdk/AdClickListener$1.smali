.class Lcom/casee/adsdk/AdClickListener$1;
.super Ljava/lang/Thread;
.source "AdViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/casee/adsdk/AdClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/casee/adsdk/AdClickListener;


# direct methods
.method constructor <init>(Lcom/casee/adsdk/AdClickListener;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/casee/adsdk/AdClickListener$1;->this$0:Lcom/casee/adsdk/AdClickListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-string v11, "CASEE-AD"

    .line 427
    iget-object v9, p0, Lcom/casee/adsdk/AdClickListener$1;->this$0:Lcom/casee/adsdk/AdClickListener;

    # invokes: Lcom/casee/adsdk/AdClickListener;->startIntent()Z
    invoke-static {v9}, Lcom/casee/adsdk/AdClickListener;->access$000(Lcom/casee/adsdk/AdClickListener;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 429
    :try_start_0
    iget-object v9, p0, Lcom/casee/adsdk/AdClickListener$1;->this$0:Lcom/casee/adsdk/AdClickListener;

    iget-object v9, v9, Lcom/casee/adsdk/AdClickListener;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/casee/adsdk/AdClickListener$1;->this$0:Lcom/casee/adsdk/AdClickListener;

    iget-object v10, v10, Lcom/casee/adsdk/AdClickListener;->ad:Lcom/casee/adsdk/Ad;

    invoke-virtual {v10}, Lcom/casee/adsdk/Ad;->getCaseeUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/casee/adsdk/AdFetcher;->getConnection(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 430
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 432
    .local v7, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 433
    .local v6, "out":Ljava/io/OutputStream;
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    .end local v7    # "writer":Ljava/io/Writer;
    .local v8, "writer":Ljava/io/Writer;
    :try_start_2
    iget-object v9, p0, Lcom/casee/adsdk/AdClickListener$1;->this$0:Lcom/casee/adsdk/AdClickListener;

    iget-object v9, v9, Lcom/casee/adsdk/AdClickListener;->context:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/casee/adsdk/AdFetcher;->getPostString(Landroid/content/Context;Lcom/casee/adsdk/CaseeAdView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 436
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 437
    .local v0, "code":I
    const/4 v5, 0x0

    .line 438
    .local v5, "maxRedirectNum":I
    :goto_0
    const/16 v9, 0x12e

    if-ne v0, v9, :cond_0

    const/4 v9, 0x5

    if-ge v5, v9, :cond_0

    .line 439
    const-string v9, "Location"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, "location":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 441
    iget-object v9, p0, Lcom/casee/adsdk/AdClickListener$1;->this$0:Lcom/casee/adsdk/AdClickListener;

    iget-object v9, v9, Lcom/casee/adsdk/AdClickListener;->context:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/casee/adsdk/AdFetcher;->getConnection(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 442
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 443
    add-int/lit8 v5, v5, 0x1

    .line 444
    goto :goto_0

    .line 451
    .end local v4    # "location":Ljava/lang/String;
    :cond_0
    if-eqz v8, :cond_1

    .line 452
    :try_start_3
    invoke-virtual {v8}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 457
    :cond_1
    :goto_1
    if-eqz v1, :cond_7

    .line 458
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v7, v8

    .line 460
    .end local v0    # "code":I
    .end local v5    # "maxRedirectNum":I
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v8    # "writer":Ljava/io/Writer;
    .restart local v7    # "writer":Ljava/io/Writer;
    :cond_2
    :goto_2
    const-string v9, "CASEE-AD"

    const-string v10, "notify platform successfully: "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "writer":Ljava/io/Writer;
    :cond_3
    :goto_3
    return-void

    .line 454
    .restart local v0    # "code":I
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "maxRedirectNum":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v8    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v3

    .line 455
    .local v3, "ee":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 462
    .end local v0    # "code":I
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "ee":Ljava/lang/Exception;
    .end local v5    # "maxRedirectNum":I
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v8    # "writer":Ljava/io/Writer;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 463
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "CASEE-AD"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 446
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "writer":Ljava/io/Writer;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 447
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    const-string v9, "CASEE-AD"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 451
    if-eqz v7, :cond_4

    .line 452
    :try_start_6
    invoke-virtual {v7}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 457
    :cond_4
    :goto_5
    if-eqz v1, :cond_2

    .line 458
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 454
    :catch_3
    move-exception v3

    .line 455
    .restart local v3    # "ee":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 450
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ee":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 451
    :goto_6
    if-eqz v7, :cond_5

    .line 452
    :try_start_8
    invoke-virtual {v7}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 457
    :cond_5
    :goto_7
    if-eqz v1, :cond_6

    .line 458
    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v9

    .line 454
    :catch_4
    move-exception v3

    .line 455
    .restart local v3    # "ee":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_7

    .line 450
    .end local v3    # "ee":Ljava/lang/Exception;
    .end local v7    # "writer":Ljava/io/Writer;
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v8    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/Writer;
    .restart local v7    # "writer":Ljava/io/Writer;
    goto :goto_6

    .line 446
    .end local v7    # "writer":Ljava/io/Writer;
    .restart local v8    # "writer":Ljava/io/Writer;
    :catch_5
    move-exception v9

    move-object v2, v9

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/Writer;
    .restart local v7    # "writer":Ljava/io/Writer;
    goto :goto_4

    .end local v7    # "writer":Ljava/io/Writer;
    .restart local v0    # "code":I
    .restart local v5    # "maxRedirectNum":I
    .restart local v8    # "writer":Ljava/io/Writer;
    :cond_7
    move-object v7, v8

    .end local v8    # "writer":Ljava/io/Writer;
    .restart local v7    # "writer":Ljava/io/Writer;
    goto :goto_2
.end method
