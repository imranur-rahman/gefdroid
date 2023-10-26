.class final Lcom/kosenkov/protector/core/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/kosenkov/protector/core/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cmp=([a-zA-Z\\./0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kosenkov/protector/core/b;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/kosenkov/protector/core/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kosenkov/protector/core/b;->b:Lcom/kosenkov/protector/core/a;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Strange component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/kosenkov/protector/core/b;->b:Lcom/kosenkov/protector/core/a;

    invoke-interface {v0, p1, v2}, Lcom/kosenkov/protector/core/a;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kosenkov/protector/core/b;->b:Lcom/kosenkov/protector/core/a;

    invoke-interface {v2, v1, v0}, Lcom/kosenkov/protector/core/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x20

    const-string v0, "Starting activity: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kosenkov/protector/core/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kosenkov/protector/core/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Displayed activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x13

    const/16 v1, 0x3a

    const/16 v2, 0x14

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kosenkov/protector/core/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "Start proc "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "pid="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const/16 v2, 0x20

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/kosenkov/protector/core/b;->b:Lcom/kosenkov/protector/core/a;

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/kosenkov/protector/core/a;->a(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method
