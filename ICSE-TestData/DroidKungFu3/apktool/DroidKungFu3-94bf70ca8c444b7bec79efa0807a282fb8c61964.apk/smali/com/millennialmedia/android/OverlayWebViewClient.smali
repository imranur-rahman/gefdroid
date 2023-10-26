.class final Lcom/millennialmedia/android/OverlayWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MMAdViewWebOverlay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MillennialMediaSDK"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;Ljava/lang/Error;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # Ljava/lang/Error;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 625
    const-string v0, "MillennialMediaSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 13
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "urlString"    # Ljava/lang/String;

    .prologue
    .line 507
    if-eqz p2, :cond_3

    .line 509
    const/16 v9, 0xcc

    .line 511
    .local v9, "rc":I
    const/4 v7, 0x0

    .line 512
    .local v7, "mimeTypeString":Ljava/lang/String;
    move-object v6, p2

    .line 518
    .local v6, "locationString":Ljava/lang/String;
    :cond_0
    move-object v6, p2

    .line 519
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 520
    .local v2, "connectURL":Ljava/net/URL;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 521
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 523
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 524
    const-string v10, "Location"

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 525
    const-string v10, "Content-Type"

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 526
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 528
    const-string v10, "MillennialMediaSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Response Code:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Response Message:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v10, "MillennialMediaSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "urlString: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 541
    const/16 v10, 0x12c

    if-lt v9, v10, :cond_1

    const/16 v10, 0x190

    if-lt v9, v10, :cond_0

    .line 543
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "connectURL":Ljava/net/URL;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 544
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 546
    const-string v10, "MillennialMediaSDK"

    const-string v11, "Activity is null. Returning from click"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v10, 0x0

    .line 620
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v6    # "locationString":Ljava/lang/String;
    .end local v7    # "mimeTypeString":Ljava/lang/String;
    .end local v9    # "rc":I
    :goto_1
    return v10

    .line 531
    .restart local v6    # "locationString":Ljava/lang/String;
    .restart local v7    # "mimeTypeString":Ljava/lang/String;
    .restart local v9    # "rc":I
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 533
    .local v4, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 536
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v10

    move-object v4, v10

    .line 538
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 562
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_2
    if-eqz v6, :cond_4

    .line 564
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 565
    .local v3, "destinationURI":Landroid/net/Uri;
    const-string v10, "MillennialMediaSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "DestinationURI: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "market"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 576
    const-string v10, "MillennialMediaSDK"

    const-string v11, "Android Market URL, launch the Market Application"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v8, v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 578
    .local v8, "myIntent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 620
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "destinationURI":Landroid/net/Uri;
    .end local v6    # "locationString":Ljava/lang/String;
    .end local v7    # "mimeTypeString":Ljava/lang/String;
    .end local v8    # "myIntent":Landroid/content/Intent;
    .end local v9    # "rc":I
    :cond_3
    :goto_2
    const/4 v10, 0x1

    goto :goto_1

    .line 569
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v6    # "locationString":Ljava/lang/String;
    .restart local v7    # "mimeTypeString":Ljava/lang/String;
    .restart local v9    # "rc":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 580
    .restart local v3    # "destinationURI":Landroid/net/Uri;
    :cond_5
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "rtsp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "video/mp4"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "video/3gpp"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 585
    :cond_6
    const-string v10, "MillennialMediaSDK"

    const-string v11, "Ignore MalFormedUrlException for RTSP"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v10, "MillennialMediaSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Video, launch the video player for video at: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {v5, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 589
    const/4 v10, 0x0

    invoke-virtual {v0, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 591
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "tel"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 594
    const-string v10, "MillennialMediaSDK"

    const-string v11, "Telephone Number, launch the phone"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.DIAL"

    invoke-direct {v8, v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 596
    .restart local v8    # "myIntent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 598
    .end local v8    # "myIntent":Landroid/content/Intent;
    :cond_8
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 601
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".mp4"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".3gp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 604
    :cond_9
    const-string v10, "MillennialMediaSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Video, launch the video player for video at: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {v5, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 606
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 607
    const/4 v10, 0x0

    invoke-virtual {v0, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 611
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_a
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 617
    :cond_b
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
