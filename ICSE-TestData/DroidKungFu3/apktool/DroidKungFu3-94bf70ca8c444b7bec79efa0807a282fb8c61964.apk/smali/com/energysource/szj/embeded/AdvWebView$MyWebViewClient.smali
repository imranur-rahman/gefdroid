.class Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdvWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/energysource/szj/embeded/AdvWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyWebViewClient"
.end annotation


# instance fields
.field resContent:Ljava/lang/String;

.field resTitle:Ljava/lang/String;

.field showtype:I

.field tid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getResContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->resContent:Ljava/lang/String;

    return-object v0
.end method

.method public getResTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->resTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getShowtype()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->showtype:I

    return v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 156
    const-string v0, "AdvWebView"

    const-string v1, "===\u68c0\u6d4b\uff1aonFormResubmission"

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 163
    const-string v0, "AdvWebView"

    const-string v1, "===\u68c0\u6d4b\uff1aonLoadResource"

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 170
    const-string v0, "AdvWebView"

    const-string v1, "===\u68c0\u6d4b\uff1aonPageFinished"

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 177
    const-string v0, "AdvWebView"

    const-string v1, "===\u68c0\u6d4b\uff1aonPageStarted"

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "AdvWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====\u4ec0\u4e48\u60c5\u51b5\uff1aviewid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",description\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",failingUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "AdvWebView"

    const-string v1, "===\u68c0\u6d4b\uff1aonReceivedHttpAuthRequest"

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 192
    const-string v0, "AdvWebView"

    const-string v1, "===\u68c0\u6d4b\uff1aonScaleChanged"

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;

    .prologue
    .line 199
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 200
    const-string v0, "AdvWebView"

    const-string v1, "===\u68c0\u6d4b\uff1aonTooManyRedirects"

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 207
    const-string v0, "AdvWebView"

    const-string v1, "===\u68c0\u6d4b\uff1aonUnhandledKeyEvent"

    invoke-static {v0, v1}, Lcom/energysource/szj/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public setResContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "resContent"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->resContent:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setResTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "resTitle"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->resTitle:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setShowtype(I)V
    .locals 0
    .param p1, "showtype"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->showtype:I

    .line 212
    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0
    .param p1, "tid"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->tid:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 13
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 217
    :try_start_0
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "shouldOverrideUrlLoading========url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 219
    .local v8, "urls":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x2

    if-lt v9, v10, :cond_9

    .line 220
    invoke-static {}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getInstance()Lcom/energysource/szj/embeded/SZJServiceInstance;

    move-result-object v4

    .line 221
    .local v4, "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    invoke-virtual {v4}, Lcom/energysource/szj/embeded/SZJServiceInstance;->getModulesMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 222
    .local v0, "chm":Ljava/util/concurrent/ConcurrentHashMap;
    if-eqz v0, :cond_0

    .line 223
    const-string v9, "bootableModule"

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/energysource/szj/android/SZJModule;

    .line 224
    .local v2, "framework":Lcom/energysource/szj/android/SZJModule;
    iget-object v9, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->tid:Ljava/lang/String;

    iget v10, p0, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->showtype:I

    invoke-interface {v2, v9, v10}, Lcom/energysource/szj/android/SZJModule;->saveClickOP(Ljava/lang/String;I)V

    .line 226
    .end local v2    # "framework":Lcom/energysource/szj/android/SZJModule;
    :cond_0
    const-string v9, "cmd"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 227
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "shouldOverrideUrlLoading======cmd:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .end local v0    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v4    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .end local v8    # "urls":[Ljava/lang/String;
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 228
    .restart local v0    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local v4    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .restart local v8    # "urls":[Ljava/lang/String;
    :cond_1
    const-string v9, "tel"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 229
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 230
    .local v7, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    invoke-direct {v5, v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 231
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v0    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v4    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "urls":[Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "AdvWebView"

    const-string v10, "shouldOverrideUrlLoading Exception:"

    invoke-static {v9, v10, v1}, Lcom/energysource/szj/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local v4    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .restart local v8    # "urls":[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v9, "smsto"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 234
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 235
    .restart local v7    # "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    invoke-direct {v5, v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "sms_body"

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->getResContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 238
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 239
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_3
    const-string v9, "mailto"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 240
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "text/plain"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v9, "android.intent.extra.EMAIL"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x1

    aget-object v12, v8, v12

    aput-object v12, v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v9, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->getResTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/energysource/szj/embeded/AdvWebView$MyWebViewClient;->getResContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 247
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v9, "geo"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 248
    const/4 v9, 0x1

    aget-object v9, v8, v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "t":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://maps.google.com/maps?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "geo":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 251
    .restart local v7    # "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 254
    .end local v3    # "geo":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "t":[Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v9, "pkg"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 255
    const-string v9, "mp4"

    invoke-virtual {p2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 256
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 257
    .restart local v5    # "intent":Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "video/*"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 259
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 260
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====shouldOverrideUrlLoading==pkg==\u4e0b\u8f7d\u7684mp4:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v9, "pkg:"

    const-string v10, ""

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 263
    .restart local v7    # "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 264
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 265
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 266
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====shouldOverrideUrlLoading==pkg==\u4e0b\u8f7d\u975emp4\u6587\u4ef6:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_7
    const-string v9, "video"

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    .line 269
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====shouldOverrideUrlLoading==video==\u5728\u7ebf\u64ad\u653e\u7684mp4:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 272
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "video/*"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 276
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 277
    .restart local v7    # "uri":Landroid/net/Uri;
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "====shouldOverrideUrlLoading==else:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 279
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 280
    sget-object v9, Lcom/energysource/szj/embeded/AdManager;->AD_MANAGER:Lcom/energysource/szj/embeded/AdManager;

    invoke-virtual {v9}, Lcom/energysource/szj/embeded/AdManager;->getContextFromActivity()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 283
    .end local v0    # "chm":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v4    # "instance":Lcom/energysource/szj/embeded/SZJServiceInstance;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_9
    const-string v9, "AdvWebView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===shouldOverrideUrlLoading==urls.length>=2==="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/energysource/szj/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
