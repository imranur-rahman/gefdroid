.class public Lcom/casee/adsdk/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# static fields
.field public static final TYPE_IMG:I = 0x1

.field public static final TYPE_TXT:I


# instance fields
.field private aid:Ljava/lang/String;

.field private asq:Ljava/lang/String;

.field public caseeText:Ljava/lang/String;

.field private caseeUrl:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private da:Landroid/graphics/drawable/Drawable;

.field private extData:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private imgError:Z

.field private sid:Ljava/lang/String;

.field private ssq:Ljava/lang/String;

.field public testingText:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "\u67b6\u52bf\u63a8\u8350"

    iput-object v0, p0, Lcom/casee/adsdk/Ad;->caseeText:Ljava/lang/String;

    .line 30
    const-string v0, "\u6d4b\u8bd5\u72b6\u6001"

    iput-object v0, p0, Lcom/casee/adsdk/Ad;->testingText:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/casee/adsdk/Ad;->imgError:Z

    .line 49
    iput-object p1, p0, Lcom/casee/adsdk/Ad;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public static getAd(Landroid/content/Context;Ljava/lang/String;)Lcom/casee/adsdk/Ad;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const-string v7, "CASEE-AD"

    const-string v5, ""

    .line 142
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "{"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 143
    :cond_0
    const-string v4, "CASEE-AD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 188
    :goto_0
    return-object v4

    .line 148
    :cond_1
    :try_start_0
    new-instance v0, Lcom/casee/adsdk/Ad;

    invoke-direct {v0, p0}, Lcom/casee/adsdk/Ad;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, "ad":Lcom/casee/adsdk/Ad;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 150
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v4, "ulogo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 152
    invoke-virtual {v0, v3}, Lcom/casee/adsdk/Ad;->setIconUrl(Ljava/lang/String;)V

    .line 154
    :cond_2
    const-string v4, "adtext1"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    if-eqz v3, :cond_3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 156
    invoke-virtual {v0, v3}, Lcom/casee/adsdk/Ad;->setText(Ljava/lang/String;)V

    .line 158
    :cond_3
    const-string v4, "adurl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    if-eqz v3, :cond_4

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 160
    invoke-virtual {v0, v3}, Lcom/casee/adsdk/Ad;->setUrl(Ljava/lang/String;)V

    .line 162
    :cond_4
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    if-eqz v3, :cond_5

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 164
    invoke-virtual {v0, v3}, Lcom/casee/adsdk/Ad;->setCaseeUrl(Ljava/lang/String;)V

    .line 166
    :cond_5
    const-string v4, "adid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    if-eqz v3, :cond_6

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 168
    invoke-virtual {v0, v3}, Lcom/casee/adsdk/Ad;->setAid(Ljava/lang/String;)V

    .line 170
    :cond_6
    const-string v4, "asq"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    if-eqz v3, :cond_7

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 172
    invoke-virtual {v0, v3}, Lcom/casee/adsdk/Ad;->setAsq(Ljava/lang/String;)V

    .line 174
    :cond_7
    const-string v4, "ssq"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    if-eqz v3, :cond_8

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 176
    invoke-virtual {v0, v3}, Lcom/casee/adsdk/Ad;->setSsq(Ljava/lang/String;)V

    .line 178
    :cond_8
    const-string v4, "type"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    if-eqz v3, :cond_9

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 180
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/casee/adsdk/Ad;->setType(I)V

    .line 182
    :cond_9
    invoke-static {}, Lcom/casee/adsdk/CaseeAdView;->getSiteId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/casee/adsdk/Ad;->setSid(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 185
    goto/16 :goto_0

    .line 186
    .end local v0    # "ad":Lcom/casee/adsdk/Ad;
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 187
    .local v1, "je":Lorg/json/JSONException;
    const-string v4, "CASEE-AD"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    .line 188
    goto/16 :goto_0
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/casee/adsdk/Ad;->aid:Ljava/lang/String;

    return-object v0
.end method

.method public getAsq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/casee/adsdk/Ad;->asq:Ljava/lang/String;

    return-object v0
.end method

.method public getCaseeCommendIcon(F)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "mScale"    # F

    .prologue
    const-class v2, Lcom/casee/adsdk/Ad;

    const-string v4, "CASEE-AD"

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "bm":Landroid/graphics/Bitmap;
    const-string v2, "CASEE-AD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    .line 108
    :try_start_0
    const-class v2, Lcom/casee/adsdk/Ad;

    const-string v3, "recommend240.png"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    const-string v2, "CASEE-AD"

    const-string v3, "getCaseeCommendIcon recommend240.png"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-object v0

    .line 113
    :cond_0
    const-class v2, Lcom/casee/adsdk/Ad;

    const-string v3, "recommend160.png"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    const-string v2, "CASEE-AD"

    const-string v3, "getCaseeCommendIcon recommend160.png"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CASEE-AD"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCaseeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/casee/adsdk/Ad;->caseeText:Ljava/lang/String;

    return-object v0
.end method

.method public getCaseeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/casee/adsdk/Ad;->caseeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/casee/adsdk/Ad;->extData:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/casee/adsdk/Ad;->da:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/casee/adsdk/Ad;->da:Landroid/graphics/drawable/Drawable;

    .line 100
    :goto_0
    return-object v1

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/casee/adsdk/Ad;->iconUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/casee/adsdk/Ad;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/casee/adsdk/Ad;->iconUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/casee/adsdk/ImageCache;->getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/casee/adsdk/Ad;->da:Landroid/graphics/drawable/Drawable;

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/casee/adsdk/Ad;->da:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 94
    :try_start_0
    const-class v1, Lcom/casee/adsdk/Ad;

    const-string v2, "logo.png"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/casee/adsdk/Ad;->da:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/casee/adsdk/Ad;->da:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CASEE-AD"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/casee/adsdk/Ad;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getSsq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/casee/adsdk/Ad;->ssq:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/casee/adsdk/Ad;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "Ads by casee"

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/casee/adsdk/Ad;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/casee/adsdk/Ad;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/casee/adsdk/Ad;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 128
    const-string v0, "http://www.casee.cn"

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/casee/adsdk/Ad;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAid(Ljava/lang/String;)V
    .locals 0
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/casee/adsdk/Ad;->aid:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setAsq(Ljava/lang/String;)V
    .locals 0
    .param p1, "asq"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/casee/adsdk/Ad;->asq:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setCaseeText(Ljava/lang/String;)V
    .locals 0
    .param p1, "caseeText"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/casee/adsdk/Ad;->caseeText:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setCaseeUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "caseeUrl"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/casee/adsdk/Ad;->caseeUrl:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setExtData(Ljava/lang/String;)V
    .locals 0
    .param p1, "extData"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/casee/adsdk/Ad;->extData:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/casee/adsdk/Ad;->iconUrl:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/casee/adsdk/Ad;->sid:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setSsq(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssq"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/casee/adsdk/Ad;->ssq:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/casee/adsdk/Ad;->text:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/casee/adsdk/Ad;->type:I

    .line 46
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/casee/adsdk/Ad;->url:Ljava/lang/String;

    .line 124
    return-void
.end method
