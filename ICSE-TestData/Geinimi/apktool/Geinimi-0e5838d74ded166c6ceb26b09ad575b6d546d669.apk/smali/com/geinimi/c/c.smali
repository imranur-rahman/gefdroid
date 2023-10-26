.class public Lcom/geinimi/c/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/geinimi/c/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/geinimi/c/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/geinimi/c/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/geinimi/c/c;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/geinimi/c/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/geinimi/c/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/geinimi/c/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/geinimi/c/c;->d:Ljava/lang/String;

    return-void
.end method
