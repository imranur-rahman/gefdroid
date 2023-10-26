.class public final Lcom/openintents/notepad/NotePad$Notes;
.super Ljava/lang/Object;
.source "NotePad.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openintents/notepad/NotePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notes"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.openintents.notepad.note"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.openintents.notepad.note"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final ENCRYPTED:Ljava/lang/String; = "encrypted"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final NOTE:Ljava/lang/String; = "note"

.field public static final SORT_ORDERS:[Ljava/lang/String;

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final THEME:Ljava/lang/String; = "theme"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const-string v0, "content://com.openintents.notepad/notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/openintents/notepad/NotePad$Notes;->CONTENT_URI:Landroid/net/Uri;

    .line 113
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title ASC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "modified DESC"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "modified ASC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/openintents/notepad/NotePad$Notes;->SORT_ORDERS:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
