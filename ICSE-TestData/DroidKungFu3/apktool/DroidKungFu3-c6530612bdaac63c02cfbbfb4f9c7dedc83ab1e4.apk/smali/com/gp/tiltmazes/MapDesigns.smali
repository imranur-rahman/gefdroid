.class public final Lcom/gp/tiltmazes/MapDesigns;
.super Ljava/lang/Object;
.source "MapDesigns.java"


# static fields
.field public static final designList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gp/tiltmazes/MapDesign;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    .line 67
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 68
    const-string v1, "S5A"

    .line 69
    const/4 v2, 0x5

    const/4 v3, 0x5

    .line 70
    const/4 v4, 0x5

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 72
    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 73
    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 74
    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 75
    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    aput-object v6, v4, v5

    .line 77
    const/4 v5, 0x5

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 78
    const/4 v7, 0x5

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 79
    const/4 v7, 0x5

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 80
    const/4 v7, 0x5

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 81
    const/4 v7, 0x5

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 82
    const/4 v7, 0x5

    new-array v7, v7, [I

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 84
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 67
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 88
    const-string v1, "S6A"

    .line 89
    const/4 v2, 0x6

    const/4 v3, 0x6

    .line 90
    const/4 v4, 0x6

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 91
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_2

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 92
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 93
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 94
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 95
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 96
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_3

    aput-object v6, v4, v5

    .line 98
    const/4 v5, 0x6

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 99
    const/4 v7, 0x6

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 100
    const/4 v7, 0x6

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 101
    const/4 v7, 0x6

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 102
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 103
    const/4 v7, 0x6

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 104
    const/4 v7, 0x6

    new-array v7, v7, [I

    aput-object v7, v5, v6

    .line 106
    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 87
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 110
    const-string v1, "S6B"

    .line 111
    const/4 v2, 0x6

    const/4 v3, 0x6

    .line 112
    const/4 v4, 0x6

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 113
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_4

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 114
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 115
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 116
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 117
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xe

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 118
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_5

    aput-object v6, v4, v5

    .line 120
    const/4 v5, 0x6

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 121
    const/4 v7, 0x6

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 122
    const/4 v7, 0x6

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 123
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 124
    const/4 v7, 0x6

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 125
    const/4 v7, 0x6

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 126
    const/4 v7, 0x6

    new-array v7, v7, [I

    aput-object v7, v5, v6

    .line 128
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 109
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 132
    const-string v1, "S7A"

    .line 133
    const/4 v2, 0x7

    const/4 v3, 0x7

    .line 134
    const/4 v4, 0x7

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 135
    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 136
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 137
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 138
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 139
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 140
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 141
    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_7

    aput-object v6, v4, v5

    .line 143
    const/4 v5, 0x7

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 144
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 145
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 146
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 147
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 148
    const/4 v7, 0x7

    new-array v7, v7, [I

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 149
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 150
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    .line 152
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 131
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 156
    const-string v1, "S7B"

    .line 157
    const/4 v2, 0x7

    const/4 v3, 0x7

    .line 158
    const/4 v4, 0x7

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 159
    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_8

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 160
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 161
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 162
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 163
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 164
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 165
    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_9

    aput-object v6, v4, v5

    .line 167
    const/4 v5, 0x7

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 168
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 169
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 170
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 171
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 172
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 173
    const/4 v7, 0x7

    new-array v7, v7, [I

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 174
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    .line 176
    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 155
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 180
    const-string v1, "S7C"

    .line 181
    const/4 v2, 0x7

    const/4 v3, 0x7

    .line 182
    const/4 v4, 0x7

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 183
    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_a

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 184
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 185
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 186
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 187
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 188
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 189
    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_b

    aput-object v6, v4, v5

    .line 191
    const/4 v5, 0x7

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 192
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 193
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 194
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 195
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 196
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 197
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 198
    const/4 v7, 0x7

    new-array v7, v7, [I

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 200
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 179
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 204
    const-string v1, "S8A"

    .line 205
    const/16 v2, 0x8

    const/16 v3, 0x8

    .line 206
    const/16 v4, 0x8

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 207
    const/16 v6, 0x8

    new-array v6, v6, [I

    fill-array-data v6, :array_c

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 208
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 209
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 210
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 211
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/16 v9, 0xe

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 212
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 213
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 214
    const/16 v6, 0x8

    new-array v6, v6, [I

    fill-array-data v6, :array_d

    aput-object v6, v4, v5

    .line 216
    const/16 v5, 0x8

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 217
    const/16 v7, 0x8

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 218
    const/16 v7, 0x8

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 219
    const/16 v7, 0x8

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 220
    const/16 v7, 0x8

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 221
    const/16 v7, 0x8

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 222
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 223
    const/16 v7, 0x8

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 224
    const/16 v7, 0x8

    new-array v7, v7, [I

    aput-object v7, v5, v6

    .line 226
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 203
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 230
    const-string v1, "S9A"

    .line 231
    const/16 v2, 0x9

    const/16 v3, 0x9

    .line 232
    const/16 v4, 0x9

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 233
    const/16 v6, 0x9

    new-array v6, v6, [I

    fill-array-data v6, :array_e

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 234
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 235
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 236
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 237
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 238
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 239
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 240
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 241
    const/16 v6, 0x9

    new-array v6, v6, [I

    fill-array-data v6, :array_f

    aput-object v6, v4, v5

    .line 243
    const/16 v5, 0x9

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 244
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 245
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 246
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 247
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 248
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 249
    const/16 v7, 0x9

    new-array v7, v7, [I

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 250
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 251
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 252
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    .line 254
    const/4 v6, 0x5

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 229
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 258
    const-string v1, "S9B"

    .line 259
    const/16 v2, 0x9

    const/16 v3, 0x9

    .line 260
    const/16 v4, 0x9

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 261
    const/16 v6, 0x9

    new-array v6, v6, [I

    fill-array-data v6, :array_10

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 262
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 263
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 264
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 265
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 266
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 267
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 268
    const/16 v6, 0x9

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 269
    const/16 v6, 0x9

    new-array v6, v6, [I

    fill-array-data v6, :array_11

    aput-object v6, v4, v5

    .line 271
    const/16 v5, 0x9

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 272
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 273
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 274
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 275
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 276
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 277
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 278
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 279
    const/16 v7, 0x9

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 280
    const/16 v7, 0x9

    new-array v7, v7, [I

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 282
    const/4 v6, 0x1

    const/16 v7, 0x8

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 257
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 286
    const-string v1, "S10A"

    .line 287
    const/16 v2, 0xa

    const/16 v3, 0xa

    .line 288
    const/16 v4, 0xa

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 289
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_12

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 290
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 291
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 292
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 293
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x6

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 294
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 295
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x6

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 296
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x6

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 297
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 298
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_13

    aput-object v6, v4, v5

    .line 300
    const/16 v5, 0xa

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 301
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 302
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 303
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 304
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 305
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 306
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 307
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 308
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 309
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/16 v6, 0x9

    .line 310
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/16 v9, 0x9

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 312
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 285
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 316
    const-string v1, "S10B"

    .line 317
    const/16 v2, 0xa

    const/16 v3, 0xa

    .line 318
    const/16 v4, 0xa

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 319
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_14

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 320
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x6

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 321
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 322
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 323
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 324
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 325
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 326
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 327
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xe

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 328
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_15

    aput-object v6, v4, v5

    .line 330
    const/16 v5, 0xa

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 331
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 332
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 333
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 334
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 335
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 336
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 337
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 338
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 339
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/16 v6, 0x9

    .line 340
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/16 v9, 0x9

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 342
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 315
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 346
    const-string v1, "S10C"

    .line 347
    const/16 v2, 0xa

    const/16 v3, 0xa

    .line 348
    const/16 v4, 0xa

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 349
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_16

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 350
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 351
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x6

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 352
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 353
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 354
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 355
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 356
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 357
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 358
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_17

    aput-object v6, v4, v5

    .line 360
    const/16 v5, 0xa

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 361
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 362
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 363
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 364
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 365
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 366
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 367
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 368
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 369
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/16 v6, 0x9

    .line 370
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/16 v9, 0x8

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 372
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 345
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 376
    const-string v1, "S10D"

    .line 377
    const/16 v2, 0xa

    const/16 v3, 0xa

    .line 378
    const/16 v4, 0xa

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 379
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_18

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 380
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 381
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 382
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 383
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x6

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 384
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 385
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 386
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 387
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 388
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_19

    aput-object v6, v4, v5

    .line 390
    const/16 v5, 0xa

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 391
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 392
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 393
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 394
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 395
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 396
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 397
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 398
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 399
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/16 v6, 0x9

    .line 400
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/16 v9, 0x9

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 402
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 375
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 406
    const-string v1, "S10E"

    .line 407
    const/16 v2, 0xa

    const/16 v3, 0xa

    .line 408
    const/16 v4, 0xa

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 409
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_1a

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 410
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 411
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 412
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 413
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 414
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 415
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 416
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x6

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 417
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 418
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_1b

    aput-object v6, v4, v5

    .line 420
    const/16 v5, 0xa

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 421
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 422
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 423
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 424
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 425
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 426
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 427
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 428
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 429
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/16 v9, 0x8

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/16 v6, 0x9

    .line 430
    const/16 v7, 0xa

    new-array v7, v7, [I

    aput-object v7, v5, v6

    .line 432
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 405
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 436
    const-string v1, "M5A"

    .line 437
    const/4 v2, 0x5

    const/4 v3, 0x5

    .line 438
    const/4 v4, 0x5

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 439
    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_1c

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 440
    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 441
    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 442
    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 443
    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_1d

    aput-object v6, v4, v5

    .line 445
    const/4 v5, 0x5

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 446
    const/4 v7, 0x5

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 447
    const/4 v7, 0x5

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 448
    const/4 v7, 0x5

    new-array v7, v7, [I

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 449
    const/4 v7, 0x5

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 450
    const/4 v7, 0x5

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 452
    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 435
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 456
    const-string v1, "M5B"

    .line 457
    const/4 v2, 0x5

    const/4 v3, 0x5

    .line 458
    const/4 v4, 0x5

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 459
    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_1e

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 460
    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x3

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 461
    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 462
    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 463
    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_1f

    aput-object v6, v4, v5

    .line 465
    const/4 v5, 0x5

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 466
    const/4 v7, 0x5

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 467
    const/4 v7, 0x5

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 468
    const/4 v7, 0x5

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 469
    const/4 v7, 0x5

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 470
    const/4 v7, 0x5

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 472
    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 455
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 476
    const-string v1, "M5C"

    .line 477
    const/4 v2, 0x5

    const/4 v3, 0x5

    .line 478
    const/4 v4, 0x5

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 479
    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_20

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 480
    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 481
    const/4 v6, 0x5

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 482
    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_21

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 483
    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_22

    aput-object v6, v4, v5

    .line 485
    const/4 v5, 0x5

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 486
    const/4 v7, 0x5

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 487
    const/4 v7, 0x5

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 488
    const/4 v7, 0x5

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 489
    const/4 v7, 0x5

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 490
    const/4 v7, 0x5

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 492
    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 475
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 496
    const-string v1, "M6A"

    .line 497
    const/4 v2, 0x6

    const/4 v3, 0x6

    .line 498
    const/4 v4, 0x6

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 499
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_23

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 500
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 501
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 502
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 503
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 504
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_24

    aput-object v6, v4, v5

    .line 506
    const/4 v5, 0x6

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 507
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 508
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 509
    const/4 v7, 0x6

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 510
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 511
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 512
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 514
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 495
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 518
    const-string v1, "M6B"

    .line 519
    const/4 v2, 0x6

    const/4 v3, 0x6

    .line 520
    const/4 v4, 0x6

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 521
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_25

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 522
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 523
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xe

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 524
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 525
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 526
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_26

    aput-object v6, v4, v5

    .line 528
    const/4 v5, 0x6

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 529
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 530
    const/4 v7, 0x6

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 531
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 532
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 533
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 534
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 536
    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 517
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 540
    const-string v1, "M6C"

    .line 541
    const/4 v2, 0x6

    const/4 v3, 0x6

    .line 542
    const/4 v4, 0x6

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 543
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_27

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 544
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 545
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 546
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 547
    const/4 v6, 0x6

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xe

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 548
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_28

    aput-object v6, v4, v5

    .line 550
    const/4 v5, 0x6

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 551
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 552
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 553
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 554
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 555
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 556
    const/4 v7, 0x6

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 558
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 539
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 562
    const-string v1, "M7A"

    .line 563
    const/4 v2, 0x7

    const/4 v3, 0x7

    .line 564
    const/4 v4, 0x7

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 565
    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_29

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 566
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 567
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 568
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 569
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 570
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 571
    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_2a

    aput-object v6, v4, v5

    .line 573
    const/4 v5, 0x7

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 574
    const/4 v7, 0x7

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 575
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 576
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 577
    const/4 v7, 0x7

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 578
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 579
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 580
    const/4 v7, 0x7

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 582
    const/4 v6, 0x6

    const/4 v7, 0x4

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 561
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 586
    const-string v1, "M7B"

    .line 587
    const/4 v2, 0x7

    const/4 v3, 0x7

    .line 588
    const/4 v4, 0x7

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 589
    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_2b

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 590
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 591
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 592
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 593
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 594
    const/4 v6, 0x7

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 595
    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_2c

    aput-object v6, v4, v5

    .line 597
    const/4 v5, 0x7

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 598
    const/4 v7, 0x7

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 599
    const/4 v7, 0x7

    new-array v7, v7, [I

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 600
    const/4 v7, 0x7

    new-array v7, v7, [I

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 601
    const/4 v7, 0x7

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 602
    const/4 v7, 0x7

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 603
    const/4 v7, 0x7

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 604
    const/4 v7, 0x7

    new-array v7, v7, [I

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 606
    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 585
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 610
    const-string v1, "M8A"

    .line 611
    const/16 v2, 0x8

    const/16 v3, 0x8

    .line 612
    const/16 v4, 0x8

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 613
    const/16 v6, 0x8

    new-array v6, v6, [I

    fill-array-data v6, :array_2d

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 614
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 615
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 616
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 617
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 618
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xe

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 619
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 620
    const/16 v6, 0x8

    new-array v6, v6, [I

    fill-array-data v6, :array_2e

    aput-object v6, v4, v5

    .line 622
    const/16 v5, 0x8

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 623
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 624
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 625
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 626
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 627
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 628
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 629
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 630
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 632
    const/4 v6, 0x4

    const/4 v7, 0x5

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 609
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 636
    const-string v1, "M8B"

    .line 637
    const/16 v2, 0x8

    const/16 v3, 0x8

    .line 638
    const/16 v4, 0x8

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 639
    const/16 v6, 0x8

    new-array v6, v6, [I

    fill-array-data v6, :array_2f

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 640
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 641
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 642
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 643
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 644
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 645
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 646
    const/16 v6, 0x8

    new-array v6, v6, [I

    fill-array-data v6, :array_30

    aput-object v6, v4, v5

    .line 648
    const/16 v5, 0x8

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 649
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 650
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 651
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 652
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 653
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 654
    const/16 v7, 0x8

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 655
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 656
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 658
    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 635
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 662
    const-string v1, "M8C"

    .line 663
    const/16 v2, 0x8

    const/16 v3, 0x8

    .line 664
    const/16 v4, 0x8

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 665
    const/16 v6, 0x8

    new-array v6, v6, [I

    fill-array-data v6, :array_31

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 666
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 667
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 668
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xe

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 669
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 670
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 671
    const/16 v6, 0x8

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 672
    const/16 v6, 0x8

    new-array v6, v6, [I

    fill-array-data v6, :array_32

    aput-object v6, v4, v5

    .line 674
    const/16 v5, 0x8

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 675
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 676
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 677
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 678
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 679
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 680
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 681
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 682
    const/16 v7, 0x8

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 684
    const/4 v6, 0x4

    const/4 v7, 0x4

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 661
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 688
    const-string v1, "M10A"

    .line 689
    const/16 v2, 0xa

    const/16 v3, 0xa

    .line 690
    const/16 v4, 0xa

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 691
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_33

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 692
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 693
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 694
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 695
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 696
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 697
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 698
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 699
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 700
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_34

    aput-object v6, v4, v5

    .line 702
    const/16 v5, 0xa

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 703
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    const/16 v9, 0x9

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 704
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 705
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 706
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/16 v9, 0x9

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 707
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 708
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    const/16 v9, 0x9

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 709
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 710
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 711
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    const/16 v9, 0x8

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/16 v6, 0x9

    .line 712
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    const/16 v9, 0x9

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 714
    const/4 v6, 0x5

    const/4 v7, 0x6

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 687
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    sget-object v8, Lcom/gp/tiltmazes/MapDesigns;->designList:Ljava/util/List;

    new-instance v0, Lcom/gp/tiltmazes/MapDesign;

    .line 718
    const-string v1, "M10B"

    .line 719
    const/16 v2, 0xa

    const/16 v3, 0xa

    .line 720
    const/16 v4, 0xa

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 721
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_35

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 722
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 723
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x6

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 724
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 725
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xa

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 726
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x3

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x6

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 727
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0xc

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x7

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 728
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 729
    const/16 v6, 0xa

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v9, 0x8

    aput v9, v6, v7

    const/4 v7, 0x1

    const/4 v9, 0x4

    aput v9, v6, v7

    const/4 v7, 0x4

    const/4 v9, 0x6

    aput v9, v6, v7

    const/4 v7, 0x5

    const/4 v9, 0x2

    aput v9, v6, v7

    const/4 v7, 0x6

    const/4 v9, 0x4

    aput v9, v6, v7

    const/16 v7, 0x8

    const/4 v9, 0x2

    aput v9, v6, v7

    const/16 v7, 0x9

    const/4 v9, 0x2

    aput v9, v6, v7

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 730
    const/16 v6, 0xa

    new-array v6, v6, [I

    fill-array-data v6, :array_36

    aput-object v6, v4, v5

    .line 732
    const/16 v5, 0xa

    new-array v5, v5, [[I

    const/4 v6, 0x0

    .line 733
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    const/16 v9, 0x9

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 734
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 735
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    const/16 v9, 0x8

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 736
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 737
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    const/16 v9, 0x9

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 738
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 739
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x3

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x7

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 740
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    aput v10, v7, v9

    const/16 v9, 0x9

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/16 v6, 0x8

    .line 741
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    aput v10, v7, v9

    const/16 v9, 0x8

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    const/16 v6, 0x9

    .line 742
    const/16 v7, 0xa

    new-array v7, v7, [I

    const/4 v9, 0x2

    const/4 v10, 0x1

    aput v10, v7, v9

    const/4 v9, 0x6

    const/4 v10, 0x1

    aput v10, v7, v9

    aput-object v7, v5, v6

    .line 744
    const/4 v6, 0x5

    const/4 v7, 0x4

    invoke-direct/range {v0 .. v7}, Lcom/gp/tiltmazes/MapDesign;-><init>(Ljava/lang/String;II[[I[[III)V

    .line 717
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void

    .line 71
    nop

    :array_0
    .array-data 4
        0x9
        0x5
        0x3
        0x1
        0x3
    .end array-data

    .line 75
    :array_1
    .array-data 4
        0xc
        0x4
        0x6
        0x4
        0x6
    .end array-data

    .line 91
    :array_2
    .array-data 4
        0xb
        0x1
        0x5
        0x1
        0x3
        0x3
    .end array-data

    .line 96
    :array_3
    .array-data 4
        0xc
        0x6
        0x6
        0x4
        0x4
        0x6
    .end array-data

    .line 113
    :array_4
    .array-data 4
        0x9
        0x1
        0x7
        0x1
        0x1
        0x7
    .end array-data

    .line 118
    :array_5
    .array-data 4
        0xc
        0x6
        0x4
        0x6
        0x6
        0x6
    .end array-data

    .line 135
    :array_6
    .array-data 4
        0x9
        0x1
        0x1
        0x5
        0x3
        0x1
        0x3
    .end array-data

    .line 141
    :array_7
    .array-data 4
        0xc
        0x4
        0x6
        0x4
        0x6
        0x4
        0x6
    .end array-data

    .line 159
    :array_8
    .array-data 4
        0xb
        0x1
        0x5
        0x3
        0x1
        0x1
        0x7
    .end array-data

    .line 165
    :array_9
    .array-data 4
        0xc
        0x4
        0x4
        0x6
        0x4
        0x6
        0x6
    .end array-data

    .line 183
    :array_a
    .array-data 4
        0xb
        0x5
        0x3
        0x1
        0x1
        0x3
        0x3
    .end array-data

    .line 189
    :array_b
    .array-data 4
        0xe
        0x4
        0x4
        0x4
        0x4
        0x6
        0x6
    .end array-data

    .line 207
    :array_c
    .array-data 4
        0x9
        0x3
        0x5
        0x1
        0x1
        0x5
        0x3
        0x3
    .end array-data

    .line 214
    :array_d
    .array-data 4
        0xc
        0x6
        0x4
        0x4
        0x6
        0x4
        0x4
        0x6
    .end array-data

    .line 233
    :array_e
    .array-data 4
        0xd
        0x1
        0x3
        0x1
        0x1
        0x5
        0x3
        0x1
        0x7
    .end array-data

    .line 241
    :array_f
    .array-data 4
        0xc
        0x4
        0x4
        0x6
        0x4
        0x4
        0x4
        0x6
        0x6
    .end array-data

    .line 261
    :array_10
    .array-data 4
        0xb
        0x1
        0x3
        0x5
        0x1
        0x1
        0x3
        0x1
        0x7
    .end array-data

    .line 269
    :array_11
    .array-data 4
        0xc
        0x6
        0x4
        0x4
        0x4
        0x6
        0x4
        0x6
        0x6
    .end array-data

    .line 289
    :array_12
    .array-data 4
        0xb
        0x1
        0x1
        0x1
        0x1
        0x5
        0x3
        0x1
        0x3
        0x3
    .end array-data

    .line 298
    :array_13
    .array-data 4
        0xc
        0x6
        0x4
        0x4
        0x6
        0x4
        0x4
        0x4
        0x6
        0x6
    .end array-data

    .line 319
    :array_14
    .array-data 4
        0xb
        0x5
        0x1
        0x3
        0x1
        0x1
        0x3
        0x1
        0x1
        0x7
    .end array-data

    .line 328
    :array_15
    .array-data 4
        0xc
        0x6
        0x4
        0x6
        0x4
        0x4
        0x4
        0x4
        0x6
        0x6
    .end array-data

    .line 349
    :array_16
    .array-data 4
        0xb
        0x5
        0x1
        0x1
        0x3
        0x1
        0x1
        0x5
        0x3
        0x3
    .end array-data

    .line 358
    :array_17
    .array-data 4
        0xc
        0x4
        0x6
        0x4
        0x4
        0x6
        0x4
        0x4
        0x6
        0x6
    .end array-data

    .line 379
    :array_18
    .array-data 4
        0xb
        0x3
        0x1
        0x1
        0x3
        0x1
        0x3
        0x5
        0x1
        0x3
    .end array-data

    .line 388
    :array_19
    .array-data 4
        0xc
        0x4
        0x4
        0x6
        0x6
        0x6
        0x4
        0x4
        0x6
        0x6
    .end array-data

    .line 409
    :array_1a
    .array-data 4
        0x9
        0x3
        0x1
        0x1
        0x1
        0x3
        0x1
        0x5
        0x3
        0x3
    .end array-data

    .line 418
    :array_1b
    .array-data 4
        0xe
        0x4
        0x4
        0x4
        0x4
        0x4
        0x6
        0x6
        0x4
        0x6
    .end array-data

    .line 439
    :array_1c
    .array-data 4
        0xd
        0x3
        0x1
        0x5
        0x3
    .end array-data

    .line 443
    :array_1d
    .array-data 4
        0xe
        0x4
        0x6
        0x4
        0x6
    .end array-data

    .line 459
    :array_1e
    .array-data 4
        0xd
        0x1
        0x5
        0x3
        0x3
    .end array-data

    .line 463
    :array_1f
    .array-data 4
        0xc
        0x4
        0x4
        0x4
        0x6
    .end array-data

    .line 479
    :array_20
    .array-data 4
        0xd
        0x3
        0x1
        0x5
        0x7
    .end array-data

    .line 482
    :array_21
    .array-data 4
        0x8
        0x2
        0x2
        0x4
        0x2
    .end array-data

    .line 483
    :array_22
    .array-data 4
        0xe
        0x4
        0x4
        0x4
        0x6
    .end array-data

    .line 499
    :array_23
    .array-data 4
        0xb
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    .line 504
    :array_24
    .array-data 4
        0xe
        0x4
        0x4
        0x6
        0x4
        0x6
    .end array-data

    .line 521
    :array_25
    .array-data 4
        0xd
        0x3
        0x1
        0x1
        0x5
        0x3
    .end array-data

    .line 526
    :array_26
    .array-data 4
        0xc
        0x6
        0x4
        0x6
        0x4
        0x6
    .end array-data

    .line 543
    :array_27
    .array-data 4
        0xb
        0x1
        0x3
        0x1
        0x1
        0x7
    .end array-data

    .line 548
    :array_28
    .array-data 4
        0xc
        0x4
        0x6
        0x4
        0x4
        0x6
    .end array-data

    .line 565
    :array_29
    .array-data 4
        0x9
        0x3
        0x1
        0x3
        0x1
        0x5
        0x3
    .end array-data

    .line 571
    :array_2a
    .array-data 4
        0xc
        0x4
        0x6
        0x4
        0x6
        0x4
        0x6
    .end array-data

    .line 589
    :array_2b
    .array-data 4
        0x9
        0x3
        0x5
        0x1
        0x3
        0x1
        0x3
    .end array-data

    .line 595
    :array_2c
    .array-data 4
        0xe
        0x4
        0x6
        0x4
        0x4
        0x4
        0x6
    .end array-data

    .line 613
    :array_2d
    .array-data 4
        0x9
        0x5
        0x5
        0x1
        0x5
        0x3
        0x1
        0x3
    .end array-data

    .line 620
    :array_2e
    .array-data 4
        0xc
        0x4
        0x6
        0x4
        0x4
        0x4
        0x6
        0x6
    .end array-data

    .line 639
    :array_2f
    .array-data 4
        0x9
        0x5
        0x1
        0x1
        0x3
        0x5
        0x1
        0x3
    .end array-data

    .line 646
    :array_30
    .array-data 4
        0xc
        0x4
        0x4
        0x6
        0x4
        0x4
        0x4
        0x6
    .end array-data

    .line 665
    :array_31
    .array-data 4
        0x9
        0x5
        0x3
        0x1
        0x1
        0x1
        0x7
        0x3
    .end array-data

    .line 672
    :array_32
    .array-data 4
        0xe
        0x4
        0x4
        0x4
        0x4
        0x6
        0x4
        0x6
    .end array-data

    .line 691
    :array_33
    .array-data 4
        0x9
        0x1
        0x1
        0x1
        0x5
        0x3
        0x1
        0x3
        0x1
        0x3
    .end array-data

    .line 700
    :array_34
    .array-data 4
        0xc
        0x4
        0x4
        0x6
        0x4
        0x4
        0x6
        0x4
        0x4
        0x6
    .end array-data

    .line 721
    :array_35
    .array-data 4
        0x9
        0x3
        0x1
        0x3
        0x1
        0x5
        0x1
        0x3
        0x1
        0x3
    .end array-data

    .line 730
    :array_36
    .array-data 4
        0xc
        0x4
        0x4
        0x6
        0x4
        0x4
        0x4
        0x4
        0x4
        0x6
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
