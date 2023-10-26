.class public Lcom/casee/apptrack/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public versionCode:I

.field public versionText:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "versionText"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/casee/apptrack/AppInfo;->versionCode:I

    .line 17
    iput-object p2, p0, Lcom/casee/apptrack/AppInfo;->versionText:Ljava/lang/String;

    .line 18
    return-void
.end method
