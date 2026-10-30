.class public final Lkotlin/time/UnboundLocalDateTime$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/UnboundLocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime$Companion;",
        "",
        "<init>",
        "()V",
        "fromInstant",
        "Lkotlin/time/UnboundLocalDateTime;",
        "instant",
        "Lkotlin/time/Instant;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final fromInstant(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;
    .locals 24

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getEpochSeconds()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/32 v2, 0x15180

    .line 9
    .line 10
    .line 11
    div-long v4, v0, v2

    .line 12
    .line 13
    xor-long v6, v0, v2

    .line 14
    .line 15
    const-wide/16 v8, 0x0

    .line 16
    .line 17
    cmp-long v6, v6, v8

    .line 18
    .line 19
    const-wide/16 v10, -0x1

    .line 20
    .line 21
    if-gez v6, :cond_0

    .line 22
    .line 23
    mul-long v6, v4, v2

    .line 24
    .line 25
    cmp-long v6, v6, v0

    .line 26
    .line 27
    if-eqz v6, :cond_0

    .line 28
    .line 29
    add-long/2addr v4, v10

    .line 30
    :cond_0
    rem-long/2addr v0, v2

    .line 31
    xor-long v6, v0, v2

    .line 32
    .line 33
    neg-long v12, v0

    .line 34
    or-long/2addr v12, v0

    .line 35
    and-long/2addr v6, v12

    .line 36
    const/16 v12, 0x3f

    .line 37
    .line 38
    shr-long/2addr v6, v12

    .line 39
    and-long/2addr v2, v6

    .line 40
    add-long/2addr v0, v2

    .line 41
    long-to-int v0, v0

    .line 42
    const v1, 0xafaa8

    .line 43
    .line 44
    .line 45
    int-to-long v1, v1

    .line 46
    add-long/2addr v4, v1

    .line 47
    const/16 v1, 0x3c

    .line 48
    .line 49
    int-to-long v1, v1

    .line 50
    sub-long/2addr v4, v1

    .line 51
    cmp-long v1, v4, v8

    .line 52
    .line 53
    const/16 v2, 0x190

    .line 54
    .line 55
    const v3, 0x23ab1

    .line 56
    .line 57
    .line 58
    if-gez v1, :cond_1

    .line 59
    .line 60
    const-wide/16 v6, 0x1

    .line 61
    .line 62
    add-long v12, v4, v6

    .line 63
    .line 64
    int-to-long v14, v3

    .line 65
    div-long/2addr v12, v14

    .line 66
    sub-long/2addr v12, v6

    .line 67
    int-to-long v6, v2

    .line 68
    mul-long/2addr v6, v12

    .line 69
    neg-long v12, v12

    .line 70
    mul-long/2addr v12, v14

    .line 71
    add-long/2addr v4, v12

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move-wide v6, v8

    .line 74
    :goto_0
    int-to-long v1, v2

    .line 75
    mul-long v12, v1, v4

    .line 76
    .line 77
    const/16 v14, 0x24f

    .line 78
    .line 79
    int-to-long v14, v14

    .line 80
    add-long/2addr v12, v14

    .line 81
    int-to-long v14, v3

    .line 82
    div-long/2addr v12, v14

    .line 83
    const/16 v3, 0x16d

    .line 84
    .line 85
    int-to-long v14, v3

    .line 86
    mul-long v16, v14, v12

    .line 87
    .line 88
    const/4 v3, 0x4

    .line 89
    move-wide/from16 v18, v8

    .line 90
    .line 91
    int-to-long v8, v3

    .line 92
    div-long v20, v12, v8

    .line 93
    .line 94
    add-long v20, v20, v16

    .line 95
    .line 96
    const/16 v3, 0x64

    .line 97
    .line 98
    move-wide/from16 v16, v10

    .line 99
    .line 100
    int-to-long v10, v3

    .line 101
    div-long v22, v12, v10

    .line 102
    .line 103
    sub-long v20, v20, v22

    .line 104
    .line 105
    div-long v22, v12, v1

    .line 106
    .line 107
    add-long v22, v22, v20

    .line 108
    .line 109
    sub-long v20, v4, v22

    .line 110
    .line 111
    cmp-long v3, v20, v18

    .line 112
    .line 113
    if-gez v3, :cond_2

    .line 114
    .line 115
    add-long v12, v12, v16

    .line 116
    .line 117
    mul-long/2addr v14, v12

    .line 118
    div-long v8, v12, v8

    .line 119
    .line 120
    add-long/2addr v8, v14

    .line 121
    div-long v10, v12, v10

    .line 122
    .line 123
    sub-long/2addr v8, v10

    .line 124
    div-long v1, v12, v1

    .line 125
    .line 126
    add-long/2addr v1, v8

    .line 127
    sub-long v20, v4, v1

    .line 128
    .line 129
    :cond_2
    move-wide/from16 v1, v20

    .line 130
    .line 131
    add-long/2addr v12, v6

    .line 132
    long-to-int v1, v1

    .line 133
    mul-int/lit8 v2, v1, 0x5

    .line 134
    .line 135
    add-int/lit8 v2, v2, 0x2

    .line 136
    .line 137
    div-int/lit16 v2, v2, 0x99

    .line 138
    .line 139
    add-int/lit8 v3, v2, 0x2

    .line 140
    .line 141
    rem-int/lit8 v3, v3, 0xc

    .line 142
    .line 143
    add-int/lit8 v6, v3, 0x1

    .line 144
    .line 145
    mul-int/lit16 v3, v2, 0x132

    .line 146
    .line 147
    add-int/lit8 v3, v3, 0x5

    .line 148
    .line 149
    div-int/lit8 v3, v3, 0xa

    .line 150
    .line 151
    sub-int/2addr v1, v3

    .line 152
    add-int/lit8 v7, v1, 0x1

    .line 153
    .line 154
    div-int/lit8 v2, v2, 0xa

    .line 155
    .line 156
    int-to-long v1, v2

    .line 157
    add-long/2addr v12, v1

    .line 158
    long-to-int v5, v12

    .line 159
    div-int/lit16 v8, v0, 0xe10

    .line 160
    .line 161
    mul-int/lit16 v1, v8, 0xe10

    .line 162
    .line 163
    sub-int/2addr v0, v1

    .line 164
    div-int/lit8 v9, v0, 0x3c

    .line 165
    .line 166
    mul-int/lit8 v1, v9, 0x3c

    .line 167
    .line 168
    sub-int v10, v0, v1

    .line 169
    .line 170
    new-instance v4, Lkotlin/time/UnboundLocalDateTime;

    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getNanosecondsOfSecond()I

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    invoke-direct/range {v4 .. v11}, Lkotlin/time/UnboundLocalDateTime;-><init>(IIIIIII)V

    .line 177
    .line 178
    .line 179
    return-object v4
.end method
