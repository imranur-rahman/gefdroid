.class public Lcom/openintents/notepad/theme/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;
    }
.end annotation


# static fields
.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_STYLE:Ljava/lang/String; = "style"

.field public static final ATTR_TITLE:Ljava/lang/String; = "title"

.field public static final ELEM_ATTRIBUTESET:Ljava/lang/String; = "attributeset"

.field public static final ELEM_THEME:Ljava/lang/String; = "theme"

.field public static final ELEM_THEMES:Ljava/lang/String; = "themes"

.field public static final METADATA_THEMES:Ljava/lang/String; = "com.openintents.themes"

.field public static SCHEMA:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ThemeUtils"

.field private static final debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "http://schemas.openintents.org/android/themes"

    sput-object v0, Lcom/openintents/notepad/theme/ThemeUtils;->SCHEMA:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addThemeInfos(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "attributeset"    # Ljava/lang/String;
    .param p2, "appinfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .line 104
    .local p3, "themeinfolist":Ljava/util/List;, "Ljava/util/List<Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;>;"
    const-string v0, "com.openintents.themes"

    .line 103
    invoke-virtual {p2, p0, v0}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 106
    .local v5, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 109
    .local v1, "useThisAttributeSet":Z
    :try_start_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .local v0, "tagType":I
    move v4, v1

    .line 110
    .end local v1    # "useThisAttributeSet":Z
    .local v4, "useThisAttributeSet":Z
    :goto_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    move p0, v4

    .line 161
    .end local v0    # "tagType":I
    .end local v4    # "useThisAttributeSet":Z
    .end local p1    # "attributeset":Ljava/lang/String;
    .end local p2    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local p3    # "themeinfolist":Ljava/util/List;, "Ljava/util/List<Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;>;"
    .local p0, "useThisAttributeSet":Z
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 162
    return-void

    .line 112
    .restart local v0    # "tagType":I
    .restart local v4    # "useThisAttributeSet":Z
    .local p0, "pm":Landroid/content/pm/PackageManager;
    .restart local p1    # "attributeset":Ljava/lang/String;
    .restart local p2    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .restart local p3    # "themeinfolist":Ljava/util/List;, "Ljava/util/List<Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;>;"
    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    .line 114
    :try_start_1
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 116
    .local v0, "attr":Landroid/util/AttributeSet;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "themes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 120
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attributeset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    sget-object v1, Lcom/openintents/notepad/theme/ThemeUtils;->SCHEMA:Ljava/lang/String;

    .line 122
    const-string v2, "name"

    .line 121
    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    .end local v4    # "useThisAttributeSet":Z
    .local v0, "useThisAttributeSet":Z
    move v1, v0

    .line 150
    .end local v0    # "useThisAttributeSet":Z
    .restart local v1    # "useThisAttributeSet":Z
    :goto_2
    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .local v0, "tagType":I
    move v4, v1

    .end local v1    # "useThisAttributeSet":Z
    .restart local v4    # "useThisAttributeSet":Z
    goto :goto_0

    .line 126
    .local v0, "attr":Landroid/util/AttributeSet;
    :cond_1
    :try_start_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "theme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    if-eqz v4, :cond_2

    .line 128
    :try_start_4
    new-instance v2, Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;

    invoke-direct {v2}, Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;-><init>()V

    .line 130
    .local v2, "ti":Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v2, Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;->packageName:Ljava/lang/String;

    .line 131
    sget-object v1, Lcom/openintents/notepad/theme/ThemeUtils;->SCHEMA:Ljava/lang/String;

    const-string v3, "title"

    const/4 v6, 0x0

    invoke-interface {v0, v1, v3, v6}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 132
    .local v3, "titleResId":I
    sget-object v1, Lcom/openintents/notepad/theme/ThemeUtils;->SCHEMA:Ljava/lang/String;

    const-string v6, "style"

    const/4 v7, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v1

    .line 135
    .local v1, "styleResId":I
    :try_start_5
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "titleResId":I
    iput-object v3, v2, Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;->title:Ljava/lang/String;

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "res":Landroid/content/res/Resources;
    iput-object v0, v2, Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;->styleName:Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 141
    :goto_3
    :try_start_6
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "styleResId":I
    .end local v2    # "ti":Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;
    :cond_2
    move v1, v4

    .end local v4    # "useThisAttributeSet":Z
    .local v1, "useThisAttributeSet":Z
    goto :goto_2

    .line 138
    .local v1, "styleResId":I
    .restart local v2    # "ti":Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;
    .restart local v4    # "useThisAttributeSet":Z
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, ""

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v0, v2, Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;->title:Ljava/lang/String;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 153
    .end local v1    # "styleResId":I
    .end local v2    # "ti":Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;
    :catch_1
    move-exception p0

    move p1, v4

    .line 154
    .end local v4    # "useThisAttributeSet":Z
    .local p0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .local p1, "useThisAttributeSet":Z
    :goto_4
    const-string p3, "ThemeUtils"

    .end local p3    # "themeinfolist":Ljava/util/List;, "Ljava/util/List<Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;>;"
    const-string v0, "XML parse exception when parsing metadata for \'%s\': %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 155
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .end local p2    # "appinfo":Landroid/content/pm/ApplicationInfo;
    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    aput-object p0, v1, p2

    .line 154
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, p1

    .end local p1    # "useThisAttributeSet":Z
    .local p0, "useThisAttributeSet":Z
    goto/16 :goto_1

    .line 156
    .local v1, "useThisAttributeSet":Z
    .local p0, "pm":Landroid/content/pm/PackageManager;
    .local p1, "attributeset":Ljava/lang/String;
    .restart local p2    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .restart local p3    # "themeinfolist":Ljava/util/List;, "Ljava/util/List<Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;>;"
    :catch_2
    move-exception p0

    move p1, v1

    .line 157
    .end local v1    # "useThisAttributeSet":Z
    .local p0, "ex":Ljava/io/IOException;
    .local p1, "useThisAttributeSet":Z
    :goto_5
    const-string p3, "ThemeUtils"

    .end local p3    # "themeinfolist":Ljava/util/List;, "Ljava/util/List<Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;>;"
    const-string v0, "I/O exception when parsing metadata for \'%s\': %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 158
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .end local p2    # "appinfo":Landroid/content/pm/ApplicationInfo;
    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "ex":Ljava/io/IOException;
    aput-object p0, v1, p2

    .line 157
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, p1

    .end local p1    # "useThisAttributeSet":Z
    .local p0, "useThisAttributeSet":Z
    goto/16 :goto_1

    .line 156
    .restart local v4    # "useThisAttributeSet":Z
    .local p0, "pm":Landroid/content/pm/PackageManager;
    .local p1, "attributeset":Ljava/lang/String;
    .restart local p2    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .restart local p3    # "themeinfolist":Ljava/util/List;, "Ljava/util/List<Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;>;"
    :catch_3
    move-exception p0

    move p1, v4

    .end local v4    # "useThisAttributeSet":Z
    .local p1, "useThisAttributeSet":Z
    goto :goto_5

    .restart local v4    # "useThisAttributeSet":Z
    .local p1, "attributeset":Ljava/lang/String;
    :catch_4
    move-exception p0

    move p1, v4

    .end local v4    # "useThisAttributeSet":Z
    .local p1, "useThisAttributeSet":Z
    goto :goto_5

    .line 153
    .restart local v1    # "useThisAttributeSet":Z
    .local p1, "attributeset":Ljava/lang/String;
    :catch_5
    move-exception p0

    move p1, v1

    .end local v1    # "useThisAttributeSet":Z
    .local p1, "useThisAttributeSet":Z
    goto :goto_4

    .restart local v4    # "useThisAttributeSet":Z
    .local p1, "attributeset":Ljava/lang/String;
    :catch_6
    move-exception p0

    move p1, v4

    .end local v4    # "useThisAttributeSet":Z
    .local p1, "useThisAttributeSet":Z
    goto :goto_4

    .restart local v4    # "useThisAttributeSet":Z
    .local p1, "attributeset":Ljava/lang/String;
    :cond_3
    move v1, v4

    .end local v4    # "useThisAttributeSet":Z
    .restart local v1    # "useThisAttributeSet":Z
    goto/16 :goto_2
.end method

.method public static getAttributeIds(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrNames"    # [Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 63
    array-length v2, p1

    .line 64
    .local v2, "len":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 66
    .local v3, "res":Landroid/content/res/Resources;
    new-array v0, v2, [I

    .line 67
    .local v0, "attrIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 71
    return-object v0

    .line 68
    :cond_0
    aget-object v4, p1, v1

    const-string v5, "attr"

    invoke-virtual {v3, v4, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getPackageNameFromStyle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "style"    # Ljava/lang/String;

    .prologue
    .line 193
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 194
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 195
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 197
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getThemeInfos(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributeset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 174
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "thisPackageName":Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/openintents/notepad/theme/ThemeUtils;->getThemePackages(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 177
    .local v1, "appinfolist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 179
    .local v3, "themeinfolist":Ljava/util/List;, "Ljava/util/List<Lcom/openintents/notepad/theme/ThemeUtils$ThemeInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 183
    return-object v3

    .line 179
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 180
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v2, p1, v0, v3}, Lcom/openintents/notepad/theme/ThemeUtils;->addThemeInfos(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    goto :goto_0
.end method

.method private static getThemePackages(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "firstPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 85
    .local v2, "appinfolist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/16 v3, 0x80

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 86
    .local v1, "allapps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    return-object v2

    .line 86
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 87
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 88
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.openintents.themes"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
